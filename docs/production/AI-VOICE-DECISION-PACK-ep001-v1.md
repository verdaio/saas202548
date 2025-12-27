# AI Voice Decision Pack - EP001
## Azure Speech Voice Bake-Off (7 Voices)

**Date:** 2025-12-27
**Purpose:** Select final voice for Season 1 (EP001-EP004)
**Test Excerpt:** `content/production/ep001-tts-test-excerpt-v1.md` (~200 words, 60-90 sec)
**Bake-Off Report:** `docs/ops/reports/azure-tts-bakeoff-2025-12-27.md`

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

**Media Warehouse Path:**
```
C:\devop\media\saas202548\tts-bakeoff\2025-12-26\
```

**Files:**
- `ep001-excerpt__en-GB-RyanNeural__style-default.wav` (4.4 MB)
- `ep001-excerpt__en-GB-ThomasNeural__style-default.wav` (4.4 MB)
- `ep001-excerpt__en-GB-SoniaNeural__style-default.wav` (4.2 MB)
- `ep001-excerpt__en-US-GuyNeural__style-default.wav` (4.3 MB)
- `ep001-excerpt__en-US-AriaNeural__style-default.wav` (4.5 MB)
- `ep001-excerpt__en-US-JennyNeural__style-default.wav` (4.4 MB)
- `ep001-excerpt__en-AU-WilliamNeural__style-default.wav` (3.9 MB)

**Manifest Files:**
- `manifest.json` — Metadata (voices, sizes, timestamps)
- `manifest.sha256.tsv` — SHA256 hashes for integrity verification

---

## Voice Scoring Worksheet

### Scoring Guide (1-5 scale)
- **5** = Excellent, exceeds expectations
- **4** = Good, meets requirements well
- **3** = Acceptable, minimum viable
- **2** = Below expectations, noticeable issues
- **1** = Poor, major problems

### Voice Comparison Table

| Voice | Accent | Gender | First Pass | Naturalness | Consistency | Pronunciation | Fatigue | Total | Notes |
|-------|--------|--------|------------|-------------|-------------|---------------|---------|-------|-------|
| **en-GB-RyanNeural** | British | Male | ✓/? /✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-GB-ThomasNeural** | British | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-GB-SoniaNeural** | British | Female | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-GuyNeural** | American | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-AriaNeural** | American | Female | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-US-JennyNeural** | American | Female | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |
| **en-AU-WilliamNeural** | Australian | Male | ✓/?/✗ | 1-5 | 1-5 | 1-5 | 1-5 | /20 | |

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
**Voice Name:** [e.g., en-GB-RyanNeural]

**Accent:** [British/American/Australian]

**Gender:** [Male/Female]

**Total Score:** [X/20]

**Decision Rationale (2-3 sentences):**
[Why did you choose this voice? What were the key winning factors?]

**Key Strengths:**
- [Strength 1]
- [Strength 2]
- [Strength 3]

**Known Limitations:**
- [Limitation 1, if any]
- [How you'll work around it]

---

### Fallback Voice (Runner-Up):
**Voice Name:** [e.g., en-GB-ThomasNeural]

**Total Score:** [X/20]

**Fallback Rationale:**
[Why this fallback? When would you use it instead of primary?]

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
