# TTS Tools

Tools for text-to-speech evaluation, voice selection, and audio generation for SaaS202548 production.

## Azure Speech Bake-Off Runner

**Script:** `azure-speech-bakeoff.ps1`

**Purpose:** Generate audio samples from test excerpts using multiple Azure Speech voices for comparison and selection.

### Quick Start

```powershell
# Run with defaults (uses Key Vault credentials)
.\tools\tts\azure-speech-bakeoff.ps1

# Run with custom voices
.\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural", "en-GB-ThomasNeural")

# Run with custom output directory
.\tools\tts\azure-speech-bakeoff.ps1 -OutDir "C:\devop\media\saas202548\tts-bakeoff\2025-12-28"
```

### Prerequisites

1. **Azure CLI authenticated:**
   ```powershell
   az login
   az account set --subscription "Azure subscription 1"
   ```

2. **Key Vault access:**
   - Must have permissions to read secrets from `kv-saas202548-prodops`
   - Required secrets:
     - `azure-speech-key` (Azure Speech Service API key)
     - `azure-speech-region` (Azure region, e.g., "eastus")

3. **Network access:**
   - Outbound HTTPS to Azure Speech endpoints

### Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `-ExcerptPath` | `content/production/ep001-tts-test-excerpt-v1.md` | Path to test excerpt file |
| `-OutDir` | `C:\devop\media\saas202548\tts-bakeoff\2025-12-26` | Output directory for audio (must be outside git repo) |
| `-VaultName` | `kv-saas202548-prodops` | Azure Key Vault name |
| `-Voices` | 7 British male voices | Array of Azure Speech voice names |

### Default Voices

The script tests these voices by default (emphasis on British male):

**Primary British Male:**
- `en-GB-RyanNeural`
- `en-GB-ThomasNeural`
- `en-GB-AlfieNeural`
- `en-GB-EthanNeural`
- `en-GB-NoahNeural`

**Alternates (for comparison):**
- `en-US-GuyNeural` (American)
- `en-AU-WilliamNeural` (Australian)

### Output

The script generates:

1. **Audio files** in OutDir:
   - Format: `ep001-excerpt__<voice>__style-default.wav`
   - Example: `ep001-excerpt__en-GB-RyanNeural__style-default.wav`
   - Format: WAV, 24kHz, 16-bit mono PCM

2. **Manifest** in OutDir:
   - `manifest.json` with metadata:
     - Voice name, style, rate
     - Filename, file size
     - Excerpt hash (for consistency verification)
     - Timestamp

### Pronunciation Handling

The script applies SSML adjustments for:
- **"UPS"** → spelled as "U-P-S"
- **"ORION"** → pronounced as "OH-rye-on" (IPA: /ˈəʊɹaɪən/)

### Safety Features

1. **Git repo protection:**
   - Script aborts if OutDir is inside git repository
   - Prevents accidental audio commits

2. **Credential security:**
   - No secrets in script or logs
   - Credentials retrieved from Key Vault at runtime

3. **Error handling:**
   - Clear error messages for Key Vault access failures
   - Per-voice error handling (continues on failure)

### Workflow Integration

After running the bake-off:

1. **Listen to samples:**
   - Navigate to OutDir
   - Play each WAV file
   - Compare voices for tone, pacing, clarity

2. **Record decision:**
   - Update `docs/production/VOICE-FREEZE-RECORD-v1.md` with chosen voice
   - Reference the bake-off run date and manifest

3. **Update AI Voice Decision Results:**
   - Update `docs/production/AI-VOICE-DECISION-RESULTS-v1.md` if needed

### Troubleshooting

**"Failed to retrieve secret" error:**
- Ensure `az login` is current
- Verify Key Vault permissions: `az keyvault show --name kv-saas202548-prodops`
- Check if secrets exist: `az keyvault secret list --vault-name kv-saas202548-prodops -o table`

**"Output directory is inside git repository" error:**
- Use the default OutDir or specify a path outside the repo
- See `docs/ops/MEDIA-WAREHOUSE-PATHS.md` for conventions

**Audio generation fails for specific voices:**
- Voice may not be available in your region
- Check Azure Speech documentation for voice availability
- Try a different voice from the same locale

**Rate limiting:**
- The script includes 500ms delays between requests
- For large voice lists, consider running in smaller batches

### Voice Resources

- [Azure Speech voice gallery](https://speech.microsoft.com/portal/voicegallery)
- [Supported voices and locales](https://learn.microsoft.com/azure/ai-services/speech-service/language-support?tabs=tts)
- [SSML pronunciation guide](https://learn.microsoft.com/azure/ai-services/speech-service/speech-synthesis-markup-pronunciation)

### Manifest Pointer

The repo contains a pointer to each bake-off run:
- Location: `content/production/tts-bakeoff/<date>/MANIFEST.md`
- Contains: OutDir path, summary, reminder that audio is not in git

### Examples

**Test a single voice:**
```powershell
.\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural")
```

**Use a different Key Vault:**
```powershell
.\tools\tts\azure-speech-bakeoff.ps1 -VaultName "kv-myproject-dev"
```

**Run for a new episode:**
```powershell
.\tools\tts\azure-speech-bakeoff.ps1 `
    -ExcerptPath "content/production/ep002-tts-test-excerpt-v1.md" `
    -OutDir "C:\devop\media\saas202548\tts-bakeoff\ep002-2025-12-30"
```

---

## Future Tools

Additional TTS tools will be added here as needed:
- Batch audio generation for full scripts
- Audio quality validation
- Voice consistency checking across episodes
