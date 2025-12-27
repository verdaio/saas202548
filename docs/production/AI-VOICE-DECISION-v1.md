# AI Voice / TTS Decision Framework (v1)

**Created:** 2025-12-25
**Status:** Decision Pending
**Scope:** Choose default voice rendering method for EP001 and future episodes
**Channel:** Quiet Business Machines (calm, sleepy documentary tone)

---

## Purpose

This document provides an evaluation framework for choosing the AI voice / TTS tool for "Quiet Business Machines" narration. The decision will unblock EP001 voice rendering and establish a repeatable workflow for future episodes.

---

## Requirements (Based on Channel Positioning)

From `docs/content/CHANNEL-BRIEF.md` and EP001 production artifacts:

### Voice Characteristics (Non-Negotiable):
- **Tone:** Calm, measured, slightly sleepy
- **Pacing:** Slow and deliberate (target: 150 WPM)
- **Style:** NPR/podcast style, conversational but polished
- **Emotion:** Low-key, not overly enthusiastic or "YouTube voice"

### Technical Requirements:
1. **Single-file export OR chunked workflow** - Must support 15-20 min scripts
2. **Consistency** - Same voice across episodes (no variation drift)
3. **Mispronunciation control** - Ability to fix technical terms, numbers (e.g., "6.7 × 10^198")
4. **Cost** - Sustainable for 2-4 episodes/month
5. **Speed** - Render time <30 min for 15-20 min script
6. **Licensing clarity** - Commercial use allowed for monetized YouTube
7. **Repeatability** - Can re-render sections without re-doing entire script

---

## Three Evaluation Lanes

### Lane A: Built-in Editor Voices (Chunked)

**Description:** Use TTS built into video editor (e.g., CapCut, Clipchamp, DaVinci Resolve with plugins)

**Workflow:**
- Export script in chunks (per section or sentence)
- Add TTS voice in editor timeline
- Edit timing, pauses, and pacing directly in editor

**Pros:**
- ✅ No separate tool/subscription needed
- ✅ Easy to adjust timing and pauses
- ✅ Can re-render individual sections without re-exporting entire file

**Cons:**
- ❌ Voice quality may be lower than dedicated TTS
- ❌ Limited pronunciation control
- ❌ Workflow is chunked (no single-file export for archiving)
- ❌ Lock-in to editor (if switching editors, must re-do voice)

**Licensing Status:** **UNVERIFIED** (varies by editor)

**Next Action:** Test with EP001 excerpt (60s) in candidate editor

---

### Lane B: Editor Pro Voices (Chunked/Fast)

**Description:** Use premium TTS voices available in some editors (e.g., Clipchamp Premium, CapCut Pro)

**Workflow:**
- Similar to Lane A, but with higher-quality voices
- May require editor subscription

**Pros:**
- ✅ Better voice quality than built-in
- ✅ Still integrated into editor workflow
- ✅ Fast iteration (no separate export step)

**Cons:**
- ❌ Subscription cost (in addition to editor)
- ❌ Still chunked workflow
- ❌ Licensing terms vary by editor (**UNVERIFIED**)

**Licensing Status:** **UNVERIFIED** (need to check editor terms)

**Next Action:** Research CapCut Pro / Clipchamp Premium voice quality and licensing

---

### Lane C: Dedicated TTS (Single-File)

**Description:** Use dedicated TTS service (e.g., ElevenLabs, Play.ht, WellSaid Labs)

**Workflow:**
- Export entire script to TTS service
- Download single audio file (WAV/MP3)
- Import into video editor as full narration track

**Pros:**
- ✅ Highest voice quality (most natural-sounding)
- ✅ Single-file export (clean archiving)
- ✅ Better pronunciation control (SSML, phonetic spelling)
- ✅ Editor-agnostic (can switch editors without re-doing voice)

**Cons:**
- ❌ Separate subscription cost
- ❌ Re-rendering entire file if one section needs fixing (unless service supports chunked export)
- ❌ Licensing terms vary (**UNVERIFIED** - must confirm commercial use)

**Licensing Status:** **UNVERIFIED** (need to review terms for ElevenLabs, Play.ht, etc.)

**Next Action:** Test ElevenLabs with EP001 excerpt (60s), verify licensing terms

---

## 10-Point Evaluation Rubric

Rate each lane on a scale of 1-5 (1 = poor, 5 = excellent):

| Criterion | Lane A (Built-in) | Lane B (Editor Pro) | Lane C (Dedicated TTS) | Weight | Notes |
|-----------|-------------------|---------------------|------------------------|--------|-------|
| **1. Voice Quality** | ? | ? | ? | High | Must match "calm, sleepy" tone |
| **2. Mispronunciation Control** | ? | ? | ? | High | Technical terms, numbers |
| **3. SSML Support** | ? | ? | ? | Medium | Pauses, emphasis, pacing |
| **4. Export Workflow** | ? | ? | ? | High | Single-file vs chunked |
| **5. Licensing Clarity** | ? | ? | ? | Critical | Commercial use for YouTube |
| **6. Cost** | ? | ? | ? | Medium | Sustainable for 2-4 eps/month |
| **7. Speed** | ? | ? | ? | Low | Render time <30 min |
| **8. Repeatability** | ? | ? | ? | Medium | Re-render sections easily |
| **9. Editor Lock-In** | ? | ? | ? | Low | Can switch editors later |
| **10. Learning Curve** | ? | ? | ? | Low | Time to proficiency |
| **TOTAL** | ? / 50 | ? / 50 | ? / 50 | — | — |

**Instructions:**
1. Test each lane with EP001 script excerpt (first 60 seconds: Cold Open + Section 1 start)
2. Rate each criterion based on actual test results
3. Apply weights (High = 2x, Critical = 3x, Medium = 1x, Low = 0.5x)
4. Calculate weighted score
5. Choose lane with highest weighted score OR manual recording if all fail

---

## Recommended Default for EP001 MVP

**Status:** PENDING TEST RESULTS

**Decision Process:**
1. **Priority 1:** Licensing clarity (Critical) - Eliminate any lane with unclear commercial use rights
2. **Priority 2:** Voice quality (High) - Must match "calm, sleepy" tone
3. **Priority 3:** Mispronunciation control (High) - Test with "6.7 × 10^198" and technical terms
4. **Priority 4:** Export workflow (High) - Prefer single-file for archiving, but chunked is acceptable if quality is better

**Fallback:** If all TTS options fail criteria:
- Manual recording (human voice) with home studio setup
- Use recording test plan from `content/production/EP001-recording-test-plan-v1.md`
- Pros: Full control, no licensing issues
- Cons: Time-intensive, requires recording discipline

---

## Test Plan (Execute Before Decision)

### Step 1: Prepare Test Script (60s excerpt)
- Extract first 60 seconds of EP001 script v2 (Cold Open + Section 1 start)
- Includes: hook, numbers ("22 million packages"), technical term ("ORION")

### Step 2: Test Lane A (Built-in Editor Voices)
- [ ] Test in DaVinci Resolve (if TTS available)
- [ ] Test in CapCut (if TTS available)
- [ ] Test in Clipchamp (if TTS available)
- [ ] Rate using rubric
- [ ] Verify licensing terms (check editor's TOS for commercial use)

### Step 3: Test Lane B (Editor Pro Voices)
- [ ] Research CapCut Pro voice quality
- [ ] Research Clipchamp Premium voice quality
- [ ] Rate using rubric
- [ ] Verify licensing terms (check Pro tier TOS)

### Step 4: Test Lane C (Dedicated TTS)
- [ ] Test ElevenLabs (if free trial available)
- [ ] Test Play.ht (if free trial available)
- [ ] Test WellSaid Labs (if free trial available)
- [ ] Rate using rubric
- [ ] Verify licensing terms (check TOS for YouTube commercial use)

### Step 5: Compare Results
- [ ] Fill rubric with actual test scores
- [ ] Apply weights and calculate final scores
- [ ] Choose lane with highest weighted score
- [ ] Document licensing proof (screenshot TOS, save in `content/production/licenses/<tool>/`)

---

## Licensing Verification Checklist (Per Tool)

For the chosen tool, capture:
- [ ] Screenshot of pricing page (showing tier used)
- [ ] Screenshot of TOS section covering commercial use
- [ ] Screenshot of TOS section covering YouTube monetization
- [ ] Subscription receipt (if paid tier)
- [ ] License summary (plain English: "Allows commercial use: YES/NO")

Store in: `content/production/licenses/<tool-name>/`

---

## Upgrade Path (Post-MVP)

If Lane A or B is chosen for MVP:
- **Milestone:** After 3-5 episodes published
- **Trigger:** If voice quality becomes limiting factor OR audience feedback requests better voice
- **Upgrade To:** Lane C (dedicated TTS) for higher quality
- **Re-render Strategy:** Re-render early episodes with new voice for consistency OR accept voice variation as "channel evolution"

If Lane C is chosen for MVP:
- **Upgrade:** Test voice cloning (e.g., ElevenLabs voice cloning) for custom voice
- **Trigger:** After 10+ episodes, if channel grows to justify investment

---

## Decision Template (Fill After Testing)

```
Decision Date: [YYYY-MM-DD]
Chosen Lane: [A / B / C / Manual]
Chosen Tool: [Tool Name]
Subscription Tier: [Free / Pro / Enterprise / N/A]
Monthly Cost: $[amount]
Licensing Verified: [YES / NO]
Licensing Proof Location: content/production/licenses/[tool-name]/

Reasoning:
- [Why this lane/tool was chosen]
- [Key trade-offs accepted]
- [Upgrade path if needed]

Next Actions:
- [ ] Document in TOOLS-REGISTRY-v1.yml
- [ ] Update TOOLING-BASELINE-v1.md
- [ ] Capture licensing proof
- [ ] Run EP001 recording test with chosen tool
```

---

**Created:** 2025-12-25
**Status:** Decision Pending
**Next Review:** After test results captured
