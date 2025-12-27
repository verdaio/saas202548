# Voice Selection Freeze - Season 1

**Date:** 2025-12-27
**Operator:** Claude Code
**Purpose:** Freeze Adam HD as primary voice + Steffan HD as fallback for Season 1
**Status:** ✅ Complete

---

## Executive Summary

Successfully frozen voice selection for Season 1 (EP001–EP004) based on HD voice bake-off results. Adam provides optimal warm, calm narration suitable for "sleepy documentary" format.

**Primary Voice:** `en-US-Adam:DragonHDLatestNeural`
**Fallback Voice:** `en-US-Steffan:DragonHDLatestNeural`

Both voices confirmed available in Azure Speech region `eastus2` and integrated into default tooling configuration.

---

## Voice Selection

### Primary Voice
**Voice ID:** `en-US-Adam:DragonHDLatestNeural`
**Provider:** Azure Cognitive Services Speech
**Model:** DragonHD (high fidelity)
**Gender:** Male
**Accent:** American (US)
**Score:** 18/20

**Key Strengths:**
- Warm, calm tone ideal for long-form listening (no fatigue factor)
- Excellent pronunciation clarity on acronyms and numbers
- Consistent delivery quality throughout the test excerpt
- Natural prosody with SSML -5% rate adjustment

### Fallback Voice
**Voice ID:** `en-US-Steffan:DragonHDLatestNeural`
**Score:** 17/20

**Use Case:** Primary fallback if Adam is unavailable or if deeper, more resonant tone is needed for specific episodes.

---

## Voice Availability Confirmation

**Region:** `eastus2`
**Date Checked:** 2025-12-27
**Method:** Authenticated API call to voices list endpoint

```powershell
$region = 'eastus2'
$url = "https://$region.tts.speech.microsoft.com/cognitiveservices/voices/list"

# Retrieved voices list with authentication
# Confirmed both voices present in response
```

**Results:**
- ✓ `en-US-Adam:DragonHDLatestNeural` — FOUND
- ✓ `en-US-Steffan:DragonHDLatestNeural` — FOUND

---

## Verification Test

### Command
```powershell
.\tools\tts\azure-speech-bakeoff.ps1 -SsmlPath 'content\production\ep001-tts-hd-bakeoff-ssml-v1.xml' -OutDir 'C:\devop\media\saas202548\tts-bakeoff\voice-freeze-verification' -Voices @('en-US-Adam:DragonHDLatestNeural')
```

### Results
- **Status:** ✅ PASS (1/1 voice successful)
- **Output Path:** `C:\devop\media\saas202548\tts-bakeoff\voice-freeze-verification\ep001-excerpt__en-US-Adam-DragonHDLatestNeural__style-default.wav`
- **File Size:** 4,096,450 bytes (~4.1 MB)
- **Duration:** ~23 seconds (synthesis time)
- **Format:** RIFF 24kHz 16-bit mono PCM (WAV)
- **Filename Format:** Correct (colon replaced with hyphen for Windows compatibility)

**Explicit statement:** No audio files committed to git repository. All audio stored in media warehouse outside git.

---

## Tooling Integration

### Created
- **Defaults File:** `tools/tts/tts.defaults.json`
  - `defaultVoice`: `en-US-Adam:DragonHDLatestNeural`
  - `fallbackVoice`: `en-US-Steffan:DragonHDLatestNeural`
  - `defaultStyle`: `default`
  - `defaultProsodyRate`: `-5%`

### Modified
- **Bake-Off Script:** `tools/tts/azure-speech-bakeoff.ps1`
  - Added logic to load defaults from `tts.defaults.json` when `-Voices` parameter not provided
  - Maintains backwards compatibility with hard-coded defaults if file missing
  - Displays "Using default voices from tts.defaults.json" when loading from file

### Script Behavior
```powershell
# New behavior: Uses Adam + Steffan from defaults file
.\azure-speech-bakeoff.ps1

# Explicit override still works
.\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural")
```

---

## Filename Formatting

### Verified Correct
- **Canonical ID (SSML/API):** `en-US-Adam:DragonHDLatestNeural` (with colon)
- **Filename:** `ep001-excerpt__en-US-Adam-DragonHDLatestNeural__style-default.wav` (colon replaced with hyphen)

### Code Location
File: tools/tts/azure-speech-bakeoff.ps1:370

```powershell
# Sanitize voice name for filename (replace colon with hyphen for HD voices)
$safeVoiceName = $voice -replace ':', '-'

# Determine output filename
$filename = "ep001-excerpt__${safeVoiceName}__style-default.wav"
```

**Filename format:** ✅ Verified correct (no concatenation bug detected)

---

## Documentation Updates

### Created
- `docs/production/AI-VOICE-FREEZE.md` — Canonical voice freeze record with change policy

### Modified
- `docs/production/AI-VOICE-DECISION-PACK-ep001-v1.md` — Filled decision template with Adam/Steffan selection

### Configuration
- **Key Vault:** `kv-vrd-202548-dev-01`
- **Region:** `eastus2`
- **Secrets Used:** `azure-speech-key`, `azure-speech-region`, `azure-speech-endpoint`

---

## Change Policy

**Policy:** Voice is FROZEN for Season 1 Phase 1 (EP001–EP004).

Any voice change requires:
1. New bake-off with documented rationale for change
2. Updated freeze record entry in AI-VOICE-FREEZE.md
3. Version bump in CHANGELOG.md
4. Notification in AI-UPGRADES-LOG.md

---

## Files Created/Modified

### Created:
- `docs/production/AI-VOICE-FREEZE.md`
- `tools/tts/tts.defaults.json`
- `docs/ops/reports/voice-selection-freeze-2025-12-27.md` (this file)

### Modified:
- `tools/tts/azure-speech-bakeoff.ps1` (defaults loading logic)
- `docs/production/AI-VOICE-DECISION-PACK-ep001-v1.md` (decision template filled)

### Not Committed:
- Audio files in `C:\devop\media\saas202548\tts-bakeoff\voice-freeze-verification\` (media warehouse, outside git)

---

## Next Steps

1. **Update STATUS.md** — Mark voice freeze complete
2. **Update CHANGELOG.md** — Version v0.4.5
3. **Update AI-UPGRADES-LOG.md** — Log voice freeze operation
4. **Commit changes** — Docs only (no audio files)
5. **Push to remote** — Update PR or merge to base branch

---

**Report Generated:** 2025-12-27
**Git Branch:** `ops/phase0-setup-gate-azure-voice-bakeoff-v1`
