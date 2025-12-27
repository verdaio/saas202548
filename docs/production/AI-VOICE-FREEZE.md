# AI Voice Freeze - Season 1

**Status:** FROZEN
**Date Frozen:** 2025-12-27
**Season:** Season 1 (EP001–EP004, Weeks 1–4)
**Change Policy:** Any voice change requires new bake-off + updated freeze record entry

---

## Primary Voice

**Voice ID:** `en-US-Adam:DragonHDLatestNeural`
**Provider:** Azure Cognitive Services Speech
**Voice Model:** DragonHD (high fidelity)
**Gender:** Male
**Accent:** American (US)
**Region:** `eastus2`

### Technical Configuration
- **Key Vault:** `kv-vrd-202548-dev-01`
- **Secret Names:**
  - `azure-speech-key` (API key)
  - `azure-speech-region` (eastus2)
  - `azure-speech-endpoint` (https://eastus2.tts.speech.microsoft.com)
- **SSML Settings:**
  - Prosody rate: `-5%` (slightly slower for clarity)
  - Style: `default`
  - Paragraph breaks: `250ms`
- **Output Format:** RIFF 24kHz 16-bit mono PCM (WAV)

---

## Fallback Voice

**Voice ID:** `en-US-Steffan:DragonHDLatestNeural`
**Provider:** Azure Cognitive Services Speech
**Voice Model:** DragonHD (high fidelity)
**Gender:** Male
**Accent:** American (US)
**Region:** `eastus2`

**Use Case:** Primary fallback if Adam is unavailable or if deeper, more resonant tone is needed for specific episodes.

---

## Pronunciation Rules

### Acronyms
- **UPS:** Spelled out using `<say-as interpret-as="characters">UPS</say-as>`
- **ORION:** IPA phoneme `<phoneme alphabet="ipa" ph="ˈoʊɹaɪən">ORION</phoneme>`

### Numbers
- Large numbers handled naturally by default (e.g., "22 million", "130,000")
- No special markup required for numbers in tested range

### Technical Terms
- "Routing algorithm", "optimization": No special pronunciation needed
- Monitor for mispronunciations on future episodes and add rules as needed

---

## Selection Evidence

**Bake-Off Report:** `docs/ops/reports/azure-tts-hd-bakeoff-2025-12-27.md`
**Voices Tested:** 8 DragonHDLatestNeural voices
**Test Excerpt:** `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml`
**Media Warehouse:** `C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\`

**Decision Pack:** `docs/production/AI-VOICE-DECISION-PACK-ep001-v1.md`

**Adam Score:** 18/20
**Steffan Score:** 17/20

**Key Decision Factors:**
- Warm, calm tone ideal for "sleepy documentary" format
- Excellent pronunciation clarity (acronyms, numbers, technical terms)
- Consistent delivery quality (no fatigue factor)
- Natural prosody with -5% rate adjustment

---

## Change Policy

**Policy:** Voice is FROZEN for Season 1 Phase 1 (EP001–EP004).

Any voice change requires:
1. New bake-off with documented rationale for change
2. Updated freeze record entry in this file (append, do not delete)
3. Version bump in CHANGELOG.md
4. Notification in AI-UPGRADES-LOG.md

**Reason:** Voice consistency is critical for audience retention and brand identity. Changing voices mid-season disrupts listener experience.

---

## Tooling Integration

**Defaults File:** `tools/tts/tts.defaults.json`
**Bake-Off Script:** `tools/tts/azure-speech-bakeoff.ps1`
**SSML Template:** `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml`

All tooling defaults to Adam unless explicitly overridden with `-Voices` parameter.

---

## Verification

**Verification Date:** 2025-12-27
**Test Command:** `.\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-US-Adam:DragonHDLatestNeural")`
**Test Output:** Single synthesis successful (see evidence report)

---

## Notes

- DragonHD voices use colon syntax in canonical IDs (`en-US-Adam:DragonHDLatestNeural`)
- Filenames sanitize colons to hyphens for Windows compatibility (`en-US-Adam-DragonHDLatestNeural`)
- SSML and API calls MUST use canonical ID with colon
- Voice confirmed available in `eastus2` region as of 2025-12-27

---

**Last Updated:** 2025-12-27
**Next Review:** End of Season 1 (Week 20) or if pronunciation issues detected
