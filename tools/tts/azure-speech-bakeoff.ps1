<#
.SYNOPSIS
    Azure Speech TTS bake-off runner for voice evaluation

.DESCRIPTION
    Generates audio samples from the EP001 test excerpt using multiple Azure Speech voices.
    Stores output in local media warehouse (NOT in git).
    Creates manifest for tracking.

.PARAMETER ExcerptPath
    Path to the test excerpt markdown file
    Default: content/production/ep001-tts-test-excerpt-v1.md

.PARAMETER SsmlPath
    Optional path to SSML template file (contains VOICE_NAME_PLACEHOLDER)
    When specified, bypasses ExcerptPath and uses SSML directly

.PARAMETER OutDir
    Output directory for audio files (must be outside git repo)
    Default: C:\devop\media\saas202548\tts-bakeoff\2025-12-26

.PARAMETER VaultName
    Azure Key Vault name containing speech credentials
    Default: kv-saas202548-prodops

.PARAMETER Voices
    Array of Azure Speech voice names to test
    Default: British male voices with alternates

.EXAMPLE
    .\azure-speech-bakeoff.ps1

.EXAMPLE
    .\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural", "en-GB-ThomasNeural")

.NOTES
    Requires:
    - Azure CLI authenticated (az login)
    - Access to specified Key Vault
    - Secrets: azure-speech-key, azure-speech-region
#>

[CmdletBinding()]
param(
    [Parameter()]
    [string]$ExcerptPath = "content\production\ep001-tts-test-excerpt-v1.md",

    [Parameter()]
    [string]$SsmlPath = "",

    [Parameter()]
    [string]$OutDir = "C:\devop\media\saas202548\tts-bakeoff\2025-12-26",

    [Parameter()]
    [string]$VaultName = "kv-vrd-202548-dev-01",

    [Parameter()]
    [string[]]$Voices = @(
        # British male voices (primary candidates)
        "en-GB-RyanNeural",
        "en-GB-ThomasNeural",
        "en-GB-AlfieNeural",

        # Additional British male options
        "en-GB-EthanNeural",
        "en-GB-NoahNeural",

        # Alternates (different accents for comparison)
        "en-US-GuyNeural",
        "en-AU-WilliamNeural"
    )
)

$ErrorActionPreference = "Stop"

#region Helper Functions

function Write-StatusMessage {
    param([string]$Message, [string]$Type = "Info")
    $timestamp = Get-Date -Format "HH:mm:ss"
    switch ($Type) {
        "Success" { Write-Host "[$timestamp] ✓ $Message" -ForegroundColor Green }
        "Error"   { Write-Host "[$timestamp] ✗ $Message" -ForegroundColor Red }
        "Warning" { Write-Host "[$timestamp] ⚠ $Message" -ForegroundColor Yellow }
        default   { Write-Host "[$timestamp]   $Message" -ForegroundColor Cyan }
    }
}

function Get-GitRepoRoot {
    try {
        $root = git rev-parse --show-toplevel 2>$null
        if ($LASTEXITCODE -eq 0) {
            return $root -replace '/', '\'
        }
    } catch {
        return $null
    }
    return $null
}

function Test-PathInGitRepo {
    param([string]$Path)

    $repoRoot = Get-GitRepoRoot
    if (-not $repoRoot) {
        return $false
    }

    $normalizedPath = (Resolve-Path -Path $Path -ErrorAction SilentlyContinue).Path
    if (-not $normalizedPath) {
        # Path doesn't exist yet, check parent
        $parent = Split-Path -Path $Path -Parent
        if (Test-Path $parent) {
            $normalizedPath = (Resolve-Path -Path $parent).Path
        }
    }

    return $normalizedPath -and $normalizedPath.StartsWith($repoRoot, [StringComparison]::OrdinalIgnoreCase)
}

function Get-ExcerptText {
    param([string]$Path)

    if (-not (Test-Path $Path)) {
        throw "Excerpt file not found: $Path"
    }

    $content = Get-Content -Path $Path -Raw

    # Extract text between "## Test Narration" and "---" or next "##"
    if ($content -match '(?s)## Test Narration\s+(.+?)(?=\n---|\n##|$)') {
        return $matches[1].Trim()
    }

    throw "Could not extract test narration from excerpt file"
}

function ConvertTo-SSML {
    param(
        [string]$Text,
        [string]$Voice,
        [string]$Style = "default"
    )

    # Apply pronunciation corrections
    $Text = $Text -replace '\bUPS\b', '<say-as interpret-as="characters">UPS</say-as>'
    $Text = $Text -replace '\bORION\b', '<phoneme alphabet="ipa" ph="ˈəʊɹaɪən">ORION</phoneme>'

    # Convert paragraphs to breaks
    $Text = $Text -replace '\n\n+', '<break time="500ms"/>'

    # Build SSML
    $ssml = @"
<speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xmlns:mstts='https://www.w3.org/2001/mstts' xml:lang='en-GB'>
    <voice name='$Voice'>
        <mstts:express-as style='$Style'>
            <prosody rate='0.95'>
                $Text
            </prosody>
        </mstts:express-as>
    </voice>
</speak>
"@

    return $ssml
}

function Get-AzureKeyVaultSecret {
    param(
        [string]$VaultName,
        [string]$SecretName
    )

    Write-StatusMessage "Retrieving secret '$SecretName' from Key Vault '$VaultName'..."

    try {
        $secretValue = az keyvault secret show --vault-name $VaultName --name $SecretName --query "value" -o tsv 2>&1

        if ($LASTEXITCODE -ne 0) {
            throw "Failed to retrieve secret: $secretValue"
        }

        return $secretValue
    } catch {
        throw "Key Vault access failed. Ensure you have permissions and az CLI is authenticated: $_"
    }
}

function Invoke-AzureSpeechSynthesis {
    param(
        [string]$SSML,
        [string]$SpeechKey,
        [string]$Region,
        [string]$OutputPath
    )

    $endpoint = "https://$Region.tts.speech.microsoft.com/cognitiveservices/v1"

    $headers = @{
        "Ocp-Apim-Subscription-Key" = $SpeechKey
        "Content-Type" = "application/ssml+xml"
        "X-Microsoft-OutputFormat" = "riff-24khz-16bit-mono-pcm"
        "User-Agent" = "saas202548-bakeoff-runner"
    }

    try {
        $response = Invoke-RestMethod -Uri $endpoint -Method Post -Headers $headers -Body $SSML -OutFile $OutputPath

        if (Test-Path $OutputPath) {
            return $true
        }

        throw "Audio file not created"
    } catch {
        throw "Speech synthesis failed: $_"
    }
}

function Get-ContentHash {
    param([string]$Content)

    $md5 = [System.Security.Cryptography.MD5]::Create()
    $hash = $md5.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($Content))
    return [BitConverter]::ToString($hash) -replace '-', ''
}

#endregion

#region Main Script

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host "  Azure Speech TTS Bake-Off Runner" -ForegroundColor Magenta
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host ""

# 1. Safety check: Ensure output directory is NOT in git repo
Write-StatusMessage "Checking output directory safety..."

if (Test-PathInGitRepo -Path $OutDir) {
    Write-StatusMessage "FATAL: Output directory is inside git repository!" -Type Error
    Write-StatusMessage "OutDir: $OutDir" -Type Error
    Write-StatusMessage "This would risk committing audio files to git." -Type Error
    exit 1
}

Write-StatusMessage "Output directory is safe (outside git repo)" -Type Success

# 2. Create output directory
if (-not (Test-Path $OutDir)) {
    New-Item -ItemType Directory -Path $OutDir -Force | Out-Null
    Write-StatusMessage "Created output directory: $OutDir" -Type Success
} else {
    Write-StatusMessage "Using existing output directory: $OutDir"
}

# 3. Determine input source (SSML template or markdown excerpt)
$useSsmlTemplate = -not [string]::IsNullOrWhiteSpace($SsmlPath)
$excerptText = $null
$excerptHash = $null
$ssmlTemplate = $null

if ($useSsmlTemplate) {
    # Resolve SSML template path
    if (-not [System.IO.Path]::IsPathRooted($SsmlPath)) {
        $repoRoot = Get-GitRepoRoot
        if ($repoRoot) {
            $SsmlPath = Join-Path $repoRoot $SsmlPath
        }
    }

    Write-StatusMessage "Loading SSML template..."
    try {
        if (-not (Test-Path $SsmlPath)) {
            throw "SSML template file not found: $SsmlPath"
        }
        $ssmlTemplate = Get-Content -Path $SsmlPath -Raw
        $excerptHash = Get-ContentHash -Content $ssmlTemplate
        Write-StatusMessage "Loaded SSML template (${ssmlTemplate.Length} chars, hash: $excerptHash)" -Type Success
    } catch {
        Write-StatusMessage $_.Exception.Message -Type Error
        exit 1
    }
} else {
    # Resolve excerpt path
    if (-not [System.IO.Path]::IsPathRooted($ExcerptPath)) {
        $repoRoot = Get-GitRepoRoot
        if ($repoRoot) {
            $ExcerptPath = Join-Path $repoRoot $ExcerptPath
        }
    }

    # 4. Extract text from excerpt
    Write-StatusMessage "Loading test excerpt..."
    try {
        $excerptText = Get-ExcerptText -Path $ExcerptPath
        $excerptHash = Get-ContentHash -Content $excerptText
        Write-StatusMessage "Loaded excerpt (${excerptText.Length} chars, hash: $excerptHash)" -Type Success
    } catch {
        Write-StatusMessage $_.Exception.Message -Type Error
        exit 1
    }
}

# 5. Retrieve Azure credentials from Key Vault
Write-StatusMessage "Retrieving Azure Speech credentials..."
try {
    $speechKey = Get-AzureKeyVaultSecret -VaultName $VaultName -SecretName "azure-speech-key"
    $speechRegion = Get-AzureKeyVaultSecret -VaultName $VaultName -SecretName "azure-speech-region"
    Write-StatusMessage "Retrieved credentials from Key Vault (region: $speechRegion)" -Type Success
} catch {
    Write-StatusMessage $_.Exception.Message -Type Error
    exit 1
}

# 6. Generate audio for each voice
$manifest = @{
    generated = Get-Date -Format "o"
    excerpt_hash = $excerptHash
    source_type = if ($useSsmlTemplate) { "ssml_template" } else { "markdown_excerpt" }
    source_path = if ($useSsmlTemplate) { $SsmlPath } else { $ExcerptPath }
    vault_name = $VaultName
    region = $speechRegion
    voices = @()
}

$successCount = 0
$failureCount = 0

Write-Host ""
Write-StatusMessage "Generating audio samples for $($Voices.Count) voices..."
Write-Host ""

foreach ($voice in $Voices) {
    Write-StatusMessage "Processing voice: $voice"

    try {
        # Generate SSML (template or dynamic)
        if ($useSsmlTemplate) {
            # Replace placeholder with actual voice name
            $ssml = $ssmlTemplate -replace 'VOICE_NAME_PLACEHOLDER', $voice
        } else {
            # Generate SSML from excerpt text
            $ssml = ConvertTo-SSML -Text $excerptText -Voice $voice -Style "default"
        }

        # Sanitize voice name for filename (replace colon with hyphen for HD voices)
        $safeVoiceName = $voice -replace ':', '-'

        # Determine output filename
        $filename = "ep001-excerpt__${safeVoiceName}__style-default.wav"
        $outputPath = Join-Path $OutDir $filename

        # Call Azure Speech API
        Write-StatusMessage "  Calling Azure TTS API..."
        Invoke-AzureSpeechSynthesis -SSML $ssml -SpeechKey $speechKey -Region $speechRegion -OutputPath $outputPath

        # Verify file was created
        if (Test-Path $outputPath) {
            $fileSize = (Get-Item $outputPath).Length
            Write-StatusMessage "  ✓ Created: $filename ($fileSize bytes)" -Type Success

            $manifest.voices += @{
                voice = $voice
                style = "default"
                rate = "0.95"
                filename = $filename
                size_bytes = $fileSize
                generated = Get-Date -Format "o"
            }

            $successCount++
        } else {
            throw "File not created"
        }

    } catch {
        Write-StatusMessage "  ✗ Failed: $($_.Exception.Message)" -Type Error
        $failureCount++
    }

    # Small delay between requests to avoid rate limiting
    Start-Sleep -Milliseconds 500
}

# 7. Write manifest
Write-Host ""
Write-StatusMessage "Writing manifest..."

$manifestPath = Join-Path $OutDir "manifest.json"
$manifest | ConvertTo-Json -Depth 10 | Set-Content -Path $manifestPath -Encoding UTF8

Write-StatusMessage "Manifest written: $manifestPath" -Type Success

# 8. Summary
Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host "  Summary" -ForegroundColor Magenta
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host ""
Write-StatusMessage "Total voices: $($Voices.Count)"
Write-StatusMessage "Success: $successCount" -Type Success
Write-StatusMessage "Failures: $failureCount" $(if ($failureCount -gt 0) { "Warning" } else { "Success" })
Write-Host ""
Write-StatusMessage "Output directory: $OutDir"
Write-StatusMessage "Manifest: $manifestPath"
Write-Host ""

if ($successCount -eq 0) {
    Write-StatusMessage "No audio files generated. Check errors above." -Type Error
    exit 1
}

Write-StatusMessage "Bake-off run complete!" -Type Success
Write-Host ""

#endregion
