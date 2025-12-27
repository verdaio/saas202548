# Azure TTS HD Voice Bake-Off Report

**Date:** 2025-12-27
**Operator:** Claude Code
**Purpose:** Evaluate DragonHD voices for Episode 001 narration
**Status:** ✅ Complete (8/8 voices successful)

---

## Executive Summary

Successfully synthesized EP001 test excerpt using 8 curated DragonHD voices with SSML template for enhanced naturalness. This replaces the baseline bake-off with higher-quality voices suitable for production podcast narration.

**Key improvements over baseline:**
- DragonHD voice model (higher fidelity than standard Neural)
- SSML template with precise prosody control (-5% rate)
- Natural pauses (250ms) at paragraph boundaries
- Pronunciation fixes (UPS spelled out, ORION with IPA phoneme)
- Male-first strategy (6 US male, 1 GB male, 2 US female alternates)

---

## Voice Comparison Table

| Voice | Gender | Accent | File Size | Notes |
|-------|--------|--------|-----------|-------|
| en-US-Brian:DragonHDLatestNeural | Male | US | 4.40 MB | Warm, mature delivery |
| en-US-Davis:DragonHDLatestNeural | Male | US | 3.75 MB | Clear, professional |
| en-US-Andrew:DragonHDLatestNeural | Male | US | 4.20 MB | Confident, engaging |
| en-US-Adam:DragonHDLatestNeural | Male | US | 3.93 MB | Smooth, authoritative |
| en-US-Steffan:DragonHDLatestNeural | Male | US | 4.49 MB | Rich, narrative quality |
| en-GB-Ollie:DragonHDLatestNeural | Male | GB | 4.41 MB | British accent option |
| en-US-Ava:DragonHDLatestNeural | Female | US | 4.53 MB | Alternate option |
| en-US-Emma:DragonHDLatestNeural | Female | US | 4.31 MB | Alternate option |

**Total size:** ~34.02 MB (8 files)
**Average file size:** 4.25 MB per voice

---

## SSML Template

Created: `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml`

**Key features:**
```xml
<prosody rate="-5%">
  Every day, <say-as interpret-as="characters">UPS</say-as> delivers 22 million packages.
  <break time="250ms"/>

  A system called <phoneme alphabet="ipa" ph="ˈoʊɹaɪən">ORION</phoneme>.
  <break time="250ms"/>
</prosody>
```

**Template hash:** `CA359B76980865BD527A02A7B35C0106`

---

## Bake-Off Script Enhancements

Updated `tools/tts/azure-speech-bakeoff.ps1` to support:

1. **SSML template input** via `-SsmlPath` parameter
2. **Colon-syntax voices** (e.g., `en-US-Andrew:DragonHDLatestNeural`)
   - Sanitizes filenames by replacing `:` with `-`
3. **Backwards compatibility** with markdown excerpt workflow
4. **Source tracking** in manifest (SSML vs markdown)

---

## File Integrity (SHA256)

```
C98720AD35F94E3C09C82C3DF5317B2469211ED5E3287D32AB53263B1FC85711  ep001-excerpt__en-GB-Ollie-DragonHDLatestNeural__style-default.wav
F2C43300F0E68B9124A8A2DA858FDA45A22D2802CD1E83B437D016C0E025C540  ep001-excerpt__en-US-Adam-DragonHDLatestNeural__style-default.wav
5001D34F4E5750E470BDFDE1E9E043C8C1BD4135B3F38FC562573261B4424C95  ep001-excerpt__en-US-Andrew-DragonHDLatestNeural__style-default.wav
B09A627772D0A2D8F7F0C42CCA7DA736EB6A60FE87E141AEF4B1E53BC91A522C  ep001-excerpt__en-US-Ava-DragonHDLatestNeural__style-default.wav
A6F3B666688A0E0476C1D34E66A0014DD5B0F4A8C8A6BBA095D5717EF860E94B  ep001-excerpt__en-US-Brian-DragonHDLatestNeural__style-default.wav
2F6AF2798565D9E8B3656E0BC5C57985A34200CC73B5937C6FFD53AF60213F98  ep001-excerpt__en-US-Davis-DragonHDLatestNeural__style-default.wav
1E6D6E71CC462BF1DA9C8F8AA1417391BBD8604B43800039F5E4D33D32F3C65D  ep001-excerpt__en-US-Emma-DragonHDLatestNeural__style-default.wav
7B6C604E28B00C7222CF237358734D48B65A7FCAAD91FFC95797FBD63AF263B3  ep001-excerpt__en-US-Steffan-DragonHDLatestNeural__style-default.wav
```

Manifest file: `C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\SHA256SUMS.txt`

---

## Media Warehouse Location

**Path:** `C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\`

**Files:**
- 8x WAV files (RIFF 24kHz 16-bit mono PCM)
- 1x `manifest.json` (runtime metadata)
- 1x `SHA256SUMS.txt` (integrity verification)

**Git safety:** ✅ Confirmed outside repository (no risk of accidental commit)

---

## Azure Resources Used

- **Key Vault:** `kv-vrd-202548-dev-01`
- **Secrets:** `azure-speech-key`, `azure-speech-region`
- **Region:** `eastus2`
- **Service:** Azure Cognitive Services Speech (DragonHD voice model)

---

## Execution Timeline

| Time | Event |
|------|-------|
| 09:35:39 | Script start, safety checks passed |
| 09:35:39 | SSML template loaded (1,532 chars) |
| 09:35:44 | Credentials retrieved from Key Vault |
| 09:35:45 - 09:38:59 | 8 voices synthesized (100% success) |
| 09:39:00 | Manifest written |
| 09:39:00 | Bake-off complete |

**Total runtime:** ~3 min 21 sec
**Average synthesis time:** ~25 seconds per voice

---

## Errors & Warnings

**Count:** 0

All voices synthesized successfully on first attempt.

---

## Next Steps

1. **Human listening review** using AI Voice Decision Pack
2. **Select primary voice** based on 4-criteria scoring:
   - Naturalness & engagement
   - Consistency & clarity
   - Pronunciation accuracy
   - Listening fatigue resistance
3. **Document decision** in Decision Pack with rationale
4. **Update production config** with chosen voice

---

## Files Modified

### Created:
- `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml` (SSML template)
- `docs/ops/reports/azure-tts-hd-bakeoff-2025-12-27.md` (this report)

### Modified:
- `tools/tts/azure-speech-bakeoff.ps1` (added SSML + HD voice support)

---

## Verification Commands

### Verify SHA256 hashes:
```powershell
cd C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd
Get-Content SHA256SUMS.txt | ForEach-Object {
    $hash, $file = $_ -split '\s+'
    $actual = (Get-FileHash $file -Algorithm SHA256).Hash
    if ($hash -eq $actual) {
        Write-Host "✓ $file" -ForegroundColor Green
    } else {
        Write-Host "✗ $file (hash mismatch)" -ForegroundColor Red
    }
}
```

### Count files:
```powershell
(Get-ChildItem -Filter '*.wav').Count  # Should be 8
```

---

**Report generated:** 2025-12-27
**Git branch:** `ops/phase0-setup-gate-azure-voice-bakeoff-v1`
