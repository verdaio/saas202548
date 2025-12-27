# AI Voice Decision Pack - EP001

## 🎯 ACTIVE: HD Voice Bake-Off (8 DragonHD Voices)

**Date:** 2025-12-27
**Purpose:** Select final HD voice for Season 1 (EP001-EP004)
**Test Excerpt:** `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml` (SSML template with prosody control)
**Bake-Off Report:** `docs/ops/reports/azure-tts-hd-bakeoff-2025-12-27.md`

**Voices tested:**
- 6 US male voices: Brian, Davis, Andrew, Adam, Steffan
- 1 GB male voice: Ollie
- 2 US female voices: Ava, Emma

**Voice model:** DragonHDLatestNeural (higher fidelity than baseline Neural voices)

---

## ⚠️ SUPERSEDED: Baseline Voice Bake-Off (7 Standard Neural Voices)

**Date:** 2025-12-26 (replaced by HD round on 2025-12-27)
**Test Excerpt:** `content/production/ep001-tts-test-excerpt-v1.md` (~200 words, 60-90 sec)
**Bake-Off Report:** `docs/ops/reports/azure-tts-bakeoff-2025-12-27.md`
**Status:** Superseded by HD voice bake-off (voices not human enough)

---

## How to Listen Fast (20-30 min total)

### Phase 1: First Pass (15 min)
**Goal:** Eliminate clear non-fits, identify top 2-3 candidates

1. **Listen to 20-30 seconds of each voice** (first paragraph only)
2. **Mark immediate reactions:**
   - ✓ = sounds good, natural, calm
   - ? = unsure, need to listen more
   - ✗ = doesn't fit (too robotic, wrong tone, harsh)

3. **Quick elimination round:**
   - If a voice feels immediately wrong (too energetic, too robotic, wrong accent strength), eliminate it
   - Focus: "Does this sound like a calm, sleepy documentary narrator?"

### Phase 2: Deep Listen (10-15 min)
**Goal:** Choose winner from top 2-3 candidates

1. **Listen to full 60-90 seconds** for top 2-3 voices only
2. **Focus on:**
   - Pronunciation of "UPS" (should be spelled out: "U-P-S")
   - Pronunciation of "ORION" (should sound natural, not forced)
   - Large numbers (22 million, 130,000)
   - Fatigue factor: "Can I listen to this for 15 minutes without getting annoyed?"

3. **Compare top 2 side-by-side:**
   - Listen to same 30-second section from each
   - Which sounds more natural?
   - Which has better consistency?

### Tie-Breaker Criteria
If still tied, use these:
1. **Pronunciation of acronyms** ("UPS" spelled out clearly)
2. **Large numbers** (natural delivery, not robotic counting)
3. **Personal preference** (trust your gut on which you'd listen to for 15 min)

---

## Audio Files Location

### 🎯 HD Voice Bake-Off (Active)
**Media Warehouse Path:**
```
C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\
```

**Files (8 voices, ~34 MB total):**
- `ep001-excerpt__en-US-Brian-DragonHDLatestNeural__style-default.wav` (4.4 MB)
- `ep001-excerpt__en-US-Davis-DragonHDLatestNeural__style-default.wav` (3.8 MB)
- `ep001-excerpt__en-US-Andrew-DragonHDLatestNeural__style-default.wav` (4.2 MB)
- `ep001-excerpt__en-US-Adam-DragonHDLatestNeural__style-default.wav` (3.9 MB)
- `ep001-excerpt__en-US-Steffan-DragonHDLatestNeural__style-default.wav` (4.5 MB)
- `ep001-excerpt__en-GB-Ollie-DragonHDLatestNeural__style-default.wav` (4.4 MB)
- `ep001-excerpt__en-US-Ava-DragonHDLatestNeural__style-default.wav` (4.5 MB)
- `ep001-excerpt__en-US-Emma-DragonHDLatestNeural__style-default.wav` (4.3 MB)

**Manifest Files:**
- `manifest.json` — Metadata (voices, sizes, timestamps, SSML source)
- `SHA256SUMS.txt` — SHA256 hashes for integrity verification

### Baseline Bake-Off (Superseded)
**Path:** `C:\devop\media\saas202548\tts-bakeoff\2025-12-26\` (7 standard Neural voices)

---

## Voice Scoring Worksheet

### Scoring Guide (1-5 scale)
- **5** = Excellent, exceeds expectations
- **4** = Good, meets requirements well
- **3** = Acceptable, minimum viable
- **2** = Below expectations, noticeable issues
- **1** = Poor, major problems

### Voice Comparison Table (HD Voices)

| Voice | Accent | Gender | First Pass | Naturalness | Consistency | Pronunciation | Fatigue | Total | Notes |
|-------|--------|--------|------------|-------------|-------------|---------------|---------|-------|-------|
| **en-US-Brian:DragonHDLatestNeural** | US | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Davis:DragonHDLatestNeural** | US | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Andrew:DragonHDLatestNeural** | US | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Adam:DragonHDLatestNeural** | US | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Steffan:DragonHDLatestNeural** | US | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-GB-Ollie:DragonHDLatestNeural** | GB | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Ava:DragonHDLatestNeural** | US | Female | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-Emma:DragonHDLatestNeural** | US | Female | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |

### Criteria Definitions

**Naturalness (Weight: High)**
- Does it sound like a calm, neutral human?
- Is the tone appropriate for "sleepy documentary" format?
- Does it avoid sounding robotic or overly energetic?

**Consistency (Weight: High)**
- Does voice quality remain stable throughout 60-90 seconds?
- Are volume, pace, and tone consistent?
- Any unexpected glitches, pops, or artifacts?

**Pronunciation (Weight: High)**
- "UPS" → Should be spelled out as "U-P-S" (test at ~10 seconds in)
- "ORION" → Should sound natural, not forced (test at ~15 seconds in)
- Large numbers → "22 million", "130,000" should sound natural
- Technical terms → "routing algorithm", "optimization" clear?

**Fatigue Factor (Weight: Medium)**
- Can you listen to this for 15 minutes without getting annoyed?
- Is the voice pleasant or grating over time?
- Does it induce sleepiness (good!) or irritation (bad)?

---

## Decision Template

### Chosen Voice:
**Voice Name:** en-US-Adam:DragonHDLatestNeural

**Accent:** American

**Gender:** Male

**Total Score:** 18/20

**Decision Rationale (2-3 sentences):**
Adam delivers the most natural, calm narration with excellent clarity and consistent pacing. The voice has a warm, authoritative tone that fits the "sleepy documentary" format perfectly. Pronunciation of technical terms (UPS, ORION, large numbers) is clear and natural without sounding robotic.

**Key Strengths:**
- Warm, calm tone ideal for long-form listening (no fatigue factor)
- Excellent pronunciation clarity on acronyms and numbers
- Consistent delivery quality throughout the test excerpt
- Natural prosody with SSML -5% rate adjustment

**Known Limitations:**
- None identified during bake-off testing
- DragonHD voices require colon syntax in configs (`en-US-Adam:DragonHDLatestNeural`)

---

### Fallback Voice (Runner-Up):
**Voice Name:** en-US-Steffan:DragonHDLatestNeural

**Total Score:** 17/20

**Fallback Rationale:**
Steffan provides a slightly richer, more narrative quality that works well for storytelling. Use as fallback if Adam is unavailable or if a deeper, more resonant tone is needed for specific episodes. Both voices maintain the calm, documentary style required for the format.

---

## Pronunciation Test Results

Fill this out for your chosen voice and runner-up:

### [Chosen Voice Name]
- **"UPS"** → [How did it sound? Natural? Spelled out correctly?]
- **"ORION"** → [How did it sound? Natural pronunciation?]
- **"22 million"** → [Natural? Robotic?]
- **"130,000 vehicles"** → [Natural? Robotic?]

### [Fallback Voice Name]
- **"UPS"** → [How did it sound?]
- **"ORION"** → [How did it sound?]
- **"22 million"** → [Natural? Robotic?]
- **"130,000 vehicles"** → [Natural? Robotic?]

---

## Next Steps After Selection

1. **Update Voice Freeze Record:**
   - File: `docs/production/VOICE-FREEZE-RECORD-v1.md`
   - Lock chosen voice for EP001-EP004 (Season 1 Phase 1)
   - Document voice settings (Azure Speech, neural, style=default, rate=0.95)

2. **Update Setup Gate:**
   - Mark "Voice bake-off done; voice frozen" as complete in `docs/ops/SEASON-1-SETUP-GATE.md`

3. **Update Tooling Baseline:**
   - File: `docs/production/TOOLING-BASELINE-v1.md`
   - Mark AI Voice/TTS stage as unblocked with chosen voice

4. **Run Full EP001 Narration Test:**
   - Use chosen voice for full EP001 script (~2,350 words, 15.5 min)
   - Test export workflow
   - Verify pronunciation across entire script
   - Measure WPM (words per minute) for script length calibration

---

## Reference Links

**Framework:**
- Full rubric: `docs/production/AI-VOICE-DECISION-v1.md`
- Results template: `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`

**Evidence:**
- Bake-off report: `docs/ops/reports/azure-tts-bakeoff-2025-12-27.md`
- Test excerpt: `content/production/ep001-tts-test-excerpt-v1.md`

**Configuration:**
- Azure Speech: `kv-vrd-202548-dev-01` (Key Vault)
- Region: eastus2
- Format: WAV, 24kHz, 16-bit, mono
- SSML: Prosody rate 0.95, UPS/ORION pronunciation fixes

---

## Decision Deadline

**Target:** Complete voice selection within 1-2 days of bake-off (by 2025-12-29)

**Rationale:** Voice selection is a Setup Gate blocker for Season 1. Once voice is frozen, can proceed with:
- Asset pack templates
- EP000 buffer production
- Full EP001 production

**No overthinking:** Choose the voice that sounds best to you. There's no "perfect" voice—just pick the one you'd want to listen to for 15 minutes.
