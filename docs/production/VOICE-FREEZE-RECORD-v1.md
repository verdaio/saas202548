# Voice Freeze Record v1

**Version:** v1
**Last Updated:** 2025-12-26
**Purpose:** Lock TTS voice settings for Season 1 to ensure consistency

---

## Overview

This record documents the frozen TTS voice and settings for all Season 1 episodes.

**Why Freeze?**
- Prevent voice drift across episodes
- Ensure consistent viewer experience
- Simplify production workflow (no re-testing voices for each episode)

**Change Control:** Any voice changes require a v2 record + documented rationale + Chris approval.

---

## Provider

**TTS Provider:** Azure Speech

**Reason for Selection:** [To be filled after voice bake-off]

**Access:**
- Service: Azure Speech API
- Key Vault: [Azure Key Vault name/location]
- Verified: [YES/NO — verify during Phase 0 Setup Gate]

---

## Selected Voice

**Voice Name:** [To be filled after voice bake-off]

**Voice ID / Code:** [e.g., `en-US-GuyNeural`, `en-US-JennyNeural`, or provider-specific voice ID]

**Reason for Selection:** [To be filled after voice bake-off — reference AI-VOICE-DECISION-RESULTS-v1.md]

**Alternatives Tested:** [List other voices tested during bake-off]

---

## SSML Settings (LOCKED)

**Rate:** [e.g., `default`, `0.9`, `1.1` — to be filled after voice bake-off]

**Pitch:** [e.g., `default`, `medium`, `low` — to be filled after voice bake-off]

**Style:** [e.g., `calm`, `newscast`, `default` — if provider supports style tags]

**Sample SSML Template:**

```xml
<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" xml:lang="en-US">
  <voice name="[Voice ID]">
    <prosody rate="[Rate]" pitch="[Pitch]">
      [Script text here]
    </prosody>
  </voice>
</speak>
```

**Notes:**
- SSML settings are frozen for Season 1 (no changes without v2 record)
- Any adjustments require testing and approval

---

## WPM Calibration (CRITICAL — Fill After EP001 Export)

**Purpose:** Measure actual WPM to calibrate script length bands for all future episodes.

### Pre-Export Baseline (from Plan v2)

**Assumed WPM:** ~150 WPM (including pauses)

**Script Length Bands (LOCKED as baseline):**
- **15 minutes:** 2,000–2,600 words
- **20 minutes:** 2,600–3,200 words
- **25 minutes:** 3,200–4,000 words

---

### Post-EP001 Calibration (FILL AFTER EP001 EXPORT)

**EP001 Actual Measurements:**
- **Word count:** [e.g., 2,350 words from script.md]
- **Video length:** [e.g., 15 min 42 sec = 15.7 minutes]
- **Calculated WPM:** [word count ÷ minutes = e.g., 2,350 ÷ 15.7 = 149.68 WPM]

**Calibration Decision:**
- [ ] **Baseline accurate:** Actual WPM within ±5% of assumed WPM (145–155 WPM) → No change needed
- [ ] **Calibration required:** Actual WPM outside ±5% range → Update script length bands in Plan v3

**If calibration required:**
1. Calculate new word count bands using actual WPM
2. Document rationale for change
3. Propose Plan v3 update with new bands
4. Get Chris approval before updating plan

---

## Licensing

**Commercial Use Allowed:** [YES/NO — verify during voice bake-off]

**YouTube Monetization Allowed:** [YES/NO — verify during voice bake-off]

**Attribution Required:** [YES/NO — check provider license terms]

**License Evidence Location:**
- File: `content/production/licenses/tts/[provider-key]/`
- Verified: [YYYY-MM-DD]
- Proof: [Hash or reference to license verification checklist]

**License Terms URL:** [URL to provider's license terms, with date accessed]

---

## Voice Bake-off Decision Reference

**Decision Framework:** `docs/production/AI-VOICE-DECISION-v1.md`

**Decision Results:** `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`

**Test Excerpt:** `content/production/ep001-tts-test-excerpt-v1.md`

**Rubric Scores:** [Link to completed rubric in AI-VOICE-DECISION-RESULTS-v1.md]

**Decision Date:** [YYYY-MM-DD — fill after voice bake-off]

---

## Bake-off Runs

### Run 2025-12-26 (Phase 0 Setup Gate)

**Status:** Pending execution

**Purpose:** Initial voice evaluation for Season 1

**Manifest:** `content/production/tts-bakeoff/2025-12-26/MANIFEST.md`

**Voices Tested:**
- British male voices: `en-GB-RyanNeural`, `en-GB-ThomasNeural`, `en-GB-AlfieNeural`, `en-GB-EthanNeural`, `en-GB-NoahNeural`
- Alternates: `en-US-GuyNeural`, `en-AU-WilliamNeural`

**Audio Location (local, NOT in git):** `C:\devop\media\saas202548\tts-bakeoff\2025-12-26\`

**Next Steps:**
1. Execute bake-off: `.\tools\tts\azure-speech-bakeoff.ps1`
2. Listen to all samples
3. Complete rubric evaluation
4. Update "Selected Voice" section above with chosen voice
5. Update AI Voice Decision Results

---

## Pronunciation Overrides

**Purpose:** Document any custom pronunciation overrides needed for consistency.

**Format:**

| Word/Phrase | Default Pronunciation | Override Pronunciation | SSML Code | Notes |
|-------------|----------------------|------------------------|-----------|-------|
| UPS | "ups" | "U-P-S" | `<phoneme alphabet="ipa" ph="juː piː ɛs">UPS</phoneme>` | Spell out acronym |
| ORION | "orion" | "O-R-I-O-N" or "Orion" | [To be determined] | Acronym or proper noun? |
| [Add more as needed] | | | | |

**Notes:**
- Test pronunciation overrides during voice bake-off
- Document any common terms that need SSML overrides
- Apply consistently across all episodes

---

## Fallback Voice (Optional)

**Purpose:** Backup voice if primary voice becomes unavailable

**Fallback Voice:** [To be filled if identified during voice bake-off]

**Fallback Trigger:** [e.g., "Primary voice deprecated by provider," "Licensing issue with primary voice"]

---

## Change Control

**This Voice Freeze Record is LOCKED for Season 1.**

**Any changes require:**
1. Version bump (v2)
2. Documented rationale (e.g., provider deprecated voice, licensing issue, quality issue)
3. Re-testing and comparison
4. Chris approval
5. Update VOICE-FREEZE-RECORD-v2.md

**Purpose:** Prevent voice drift and ensure consistent viewer experience across all 20 Season 1 episodes.

---

## Notes

- Voice freeze is a Phase 0 (Setup Gate) requirement
- WPM calibration happens after EP001 export (critical for future script length estimates)
- Reference this record for all Season 1 TTS audio generation
- Keep license evidence up-to-date and accessible
