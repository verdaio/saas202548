# AI Voice / TTS Tool Decision Results (v1)

**Decision Date:** [YYYY-MM-DD]
**Test Excerpt Used:** `content/production/ep001-tts-test-excerpt-v1.md`
**Test Duration Target:** 60-90 seconds (~200 words)
**Evaluator:** [Your Name]
**Framework:** `docs/production/AI-VOICE-DECISION-v1.md`

---

## Executive Summary

**Chosen Default:** [Tool Name - to be filled in]
**Fallback:** [Tool Name - to be filled in]
**Blockers Remaining:** [List any blockers, or write "None"]

**Decision Rationale (1-2 sentences):**
[Explain why you chose this tool - to be filled in]

---

## Test Candidates

| Tool | Lane | Available? | Duration (sec) | Render File | Notes |
|------|------|------------|----------------|-------------|-------|
| [Tool 1] | A/B/C | Yes/No | [e.g., 82s] | `renders/ep001-tts-test-[toolKey]-v1.mp3` | [Quick notes] |
| [Tool 2] | A/B/C | Yes/No | [e.g., 78s] | `renders/ep001-tts-test-[toolKey]-v1.mp3` | [Quick notes] |
| [Tool 3] | A/B/C | Yes/No | [e.g., N/A] | N/A | [e.g., "Not available on machine"] |

**Lane Key:**
- **Lane A**: Built-in editor voices (chunked) — e.g., Clipchamp
- **Lane B**: Editor pro voices — e.g., CapCut Pro
- **Lane C**: Dedicated TTS (single-file) — e.g., ElevenLabs

---

## Rubric Scores (0-5 scale)

**Scoring Guide:**
- **5** = Excellent, exceeds requirements
- **4** = Good, meets requirements well
- **3** = Acceptable, meets minimum requirements
- **2** = Below expectations, noticeable issues
- **1** = Poor, major problems
- **0** = Fails completely / Not applicable

| Criterion | Weight | [Tool 1] | [Tool 2] | [Tool 3] | Notes |
|-----------|--------|----------|----------|----------|-------|
| **1. Naturalness** | High | [0-5] | [0-5] | [0-5] | Does it sound like a calm, neutral human? |
| **2. Consistency (60-90s)** | High | [0-5] | [0-5] | [0-5] | Voice quality stable throughout? |
| **3. Pronunciation Control** | High | [0-5] | [0-5] | [0-5] | Can you control "UPS" → "U-P-S", "ORION"? |
| **4. Number Readability** | Medium | [0-5] | [0-5] | [0-5] | Large numbers clear? (22 million, 130,000) |
| **5. Pause/Cadence Control** | Medium | [0-5] | [0-5] | [0-5] | Can you adjust pacing, pauses? |
| **6. Export Workflow** | Medium | [0-5] | [0-5] | [0-5] | Single-file export (5) vs chunked (2-3) |
| **7. Speed (Time-to-Audio)** | Low | [0-5] | [0-5] | [0-5] | How fast can you generate audio? |
| **8. Cost (Rough)** | Medium | [0-5] | [0-5] | [0-5] | Free/cheap (5) vs expensive (1-2) |
| **9. Licensing Clarity** | Critical | [0-5] | [0-5] | [0-5] | Commercial YouTube use clear? |
| **10. Repeatability** | Medium | [0-5] | [0-5] | [0-5] | Same settings → same output? |
| **TOTAL** | — | [Sum] | [Sum] | [Sum] | — |

---

## Detailed Notes by Tool

### [Tool 1 Name]

**Lane:** [A/B/C]
**Available:** [Yes/No]
**Version/Plan:** [e.g., "Free tier" or "Pro subscription"]

**Strengths:**
- [List what this tool does well]

**Weaknesses:**
- [List issues or limitations]

**Pronunciation Test Results:**
- "UPS" → [How did it pronounce it? Could you fix it?]
- "ORION" → [How did it pronounce it? Could you fix it?]
- Large numbers → [e.g., "22 million" sounded natural/robotic]

**Export Workflow:**
- [Describe the export process: single file or chunked? Format options?]

**Cost:**
- [e.g., "Free tier includes X minutes/month" or "$X/month subscription"]

**Licensing:**
- [Commercial use allowed? YouTube monetization? Attribution required?]
- [Evidence: URL checked, date, summary]

**Render File:**
- `content/production/renders/ep001-tts-test-[toolKey]-v1.mp3`

---

### [Tool 2 Name]

**Lane:** [A/B/C]
**Available:** [Yes/No]
**Version/Plan:** [e.g., "Built-in to Windows 11"]

**Strengths:**
- [List what this tool does well]

**Weaknesses:**
- [List issues or limitations]

**Pronunciation Test Results:**
- "UPS" → [How did it pronounce it? Could you fix it?]
- "ORION" → [How did it pronounce it? Could you fix it?]
- Large numbers → [e.g., "22 million" sounded natural/robotic]

**Export Workflow:**
- [Describe the export process: single file or chunked? Format options?]

**Cost:**
- [e.g., "Free (included)" or "$X/month"]

**Licensing:**
- [Commercial use allowed? YouTube monetization? Attribution required?]
- [Evidence: URL checked, date, summary]

**Render File:**
- `content/production/renders/ep001-tts-test-[toolKey]-v1.mp3`

---

### [Tool 3 Name]

**Lane:** [A/B/C]
**Available:** [Yes/No]
**Version/Plan:** [e.g., "Not installed"]

**Strengths:**
- [List what this tool does well - or write "N/A - not tested"]

**Weaknesses:**
- [List issues or limitations - or write "N/A - not tested"]

**Pronunciation Test Results:**
- [N/A if not tested]

**Export Workflow:**
- [N/A if not tested]

**Cost:**
- [Research what the pricing would be, even if not tested]

**Licensing:**
- [Research commercial use terms, even if not tested]

**Render File:**
- N/A

---

## Decision Justification

### Chosen Default: [Tool Name]

**Why this tool?**
[Explain your reasoning - 2-3 sentences]

**Key winning factors:**
- [Factor 1]
- [Factor 2]
- [Factor 3]

**Known limitations:**
- [Limitation 1, and how you'll work around it]
- [Limitation 2, and how you'll work around it]

---

### Fallback: [Tool Name]

**Why this fallback?**
[Explain when you'd use the fallback - 1-2 sentences]

**Fallback use cases:**
- [e.g., "If primary tool is unavailable"]
- [e.g., "If primary tool has licensing issues"]

---

## Blockers and Next Steps

### Blockers Remaining:
- [ ] [List any blockers, or check "None"]
- [ ] [e.g., "Need to verify ElevenLabs commercial license"]
- [ ] [e.g., "Need to purchase CapCut Pro subscription"]

### Next Steps:
1. [ ] Capture licensing proof files (local only, not committed)
2. [ ] Create hash-based evidence records
3. [ ] Update `content/production/TOOLS-REGISTRY-v1.yml` with chosen default
4. [ ] Update `docs/production/TOOLING-BASELINE-v1.md` to mark AI Voice stage as unblocked
5. [ ] Run full EP001 narration with chosen tool
6. [ ] Test export workflow for full ~15 minute script

---

## Verification Checklist

- [ ] Test excerpt file created (`ep001-tts-test-excerpt-v1.md`)
- [ ] At least one tool per lane tested (if available)
- [ ] Rubric scores completed for all tested tools
- [ ] Duration measured objectively for each render
- [ ] Pronunciation control tested for "UPS" and "ORION"
- [ ] Licensing terms researched for chosen tool
- [ ] Decision rationale documented
- [ ] Fallback tool selected
- [ ] Render files saved locally (not committed to git)
- [ ] `.gitignore` prevents committing audio files

---

## Evidence References

**Test Excerpt Source:**
- File: `content/scripts/EP001-ups-routing-script-v2.md`
- Sections: Cold Open + Section 1 (first ~200 words)
- Source citations: [S1], [S2], [S4], [S6], [S7] from script

**Framework:**
- Decision framework: `docs/production/AI-VOICE-DECISION-v1.md`
- Tool registry: `content/production/TOOLS-REGISTRY-v1.yml`
- Tooling baseline: `docs/production/TOOLING-BASELINE-v1.md`

**License Verification:**
- Procedure: `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md`
- Evidence folder: `content/production/licenses/tts/[toolKey]/`
