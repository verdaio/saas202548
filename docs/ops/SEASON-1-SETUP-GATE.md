# Season 1 Setup Gate (Phase 0)

**Purpose:** Ensure all prerequisites are met before Week 1 publish
**Gate Status:** IN PROGRESS
**Last Updated:** 2025-12-26

---

## Overview

Phase 0 must complete before publishing EP001 (Week 1).

This gate ensures:
- Production pipeline is unblocked end-to-end
- Voice is frozen and calibrated
- Buffer inventory policy is met
- Tracking and QA systems are active

**Gate Criteria:** ALL items must be PASS before Week 1 publish.

---

## Checklist

### 1. Hardware Gate Test

**Status:** [ ] PASS / [ ] FAIL / [ ] IN PROGRESS

**Requirements:**
- [ ] Video editing software functional (tested with sample export)
- [ ] Audio export workflow tested (TTS → audio file → editor import)
- [ ] Graphics workflow tested (diagrams → export → editor import)
- [ ] Full export workflow tested end-to-end (sample 60–90 sec video)

**Evidence Location:** `docs/ops/reports/season-1-setup-gate-baseline-YYYY-MM-DD.md`

**Blocker if FAIL:** Cannot proceed to Week 1 without functional pipeline

---

### 2. Azure Speech + Key Vault Verified

**Status:** [ ] PASS / [ ] FAIL / [X] IN PROGRESS

**Requirements:**
- [ ] Azure Speech service accessible and functional
- [ ] Key Vault configured with secrets stored securely
- [ ] TTS API call tested successfully (generates audio from test excerpt)
- [ ] Cost estimates validated (within budget for 20 episodes)

**Tools:**
- Bake-off runner: `tools/tts/azure-speech-bakeoff.ps1`
- Documentation: `tools/tts/README.md`

**Evidence Location:** `docs/ops/reports/phase0-setup-gate-azure-voice-bakeoff-2025-12-26.md`

**Blocker if FAIL:** Cannot generate audio without Azure Speech access

---

### 3. Voice Bake-off Done; Voice Frozen

**Status:** [ ] PASS / [ ] FAIL / [X] IN PROGRESS

**Requirements:**
- [ ] TTS voice bake-off completed using `docs/production/AI-VOICE-DECISION-v1.md` framework
- [ ] Voice selected and documented in `docs/production/VOICE-FREEZE-RECORD-v1.md`
- [ ] SSML settings frozen (rate, pitch, style)
- [ ] Licensing verified (commercial YouTube use allowed)
- [ ] Voice Freeze Record v1 created and committed

**Bake-off Runs:**
- 2025-12-26: `content/production/tts-bakeoff/2025-12-26/MANIFEST.md` (pending execution)

**Evidence Location:**
- `docs/production/AI-VOICE-DECISION-RESULTS-v1.md` (bake-off results)
- `docs/production/VOICE-FREEZE-RECORD-v1.md` (freeze record)

**Blocker if FAIL:** Cannot proceed without frozen voice (prevents inconsistency)

---

### 4. Asset Pack Templates Built and Frozen

**Status:** [ ] PASS / [ ] FAIL / [ ] IN PROGRESS

**Requirements:**
- [ ] Style Constitution v1 applied (`docs/production/STYLE-CONSTITUTION-v1.md`)
- [ ] Typography selected (font family frozen for Season 1)
- [ ] Color palette defined (calm palette, high contrast)
- [ ] Diagram template created (arrows, nodes, spacing)
- [ ] Map schematic template created (flow lines, subdued background)
- [ ] Stat callout template created (number, label, source tag placement)
- [ ] Source tag style frozen (corner placement, font size, color)

**Evidence Location:** `docs/production/STYLE-CONSTITUTION-v1.md` + asset pack files

**Blocker if FAIL:** Visual drift will occur without frozen templates

---

### 5. Tracker Created and Active

**Status:** [ ] PASS / [ ] FAIL / [ ] IN PROGRESS

**Requirements:**
- [ ] `tracking/season-1/episodes.md` created with locked publish order (EP001–EP004)
- [ ] `tracking/season-1/weekly-review.md` template created
- [ ] `tracking/season-1/corrections-log.md` created
- [ ] `tracking/season-1/metrics.md` created with draft bands
- [ ] `tracking/season-1/pillar-b-safety-gate.md` created

**Evidence Location:** `tracking/season-1/` directory

**Blocker if FAIL:** Cannot track execution without active tracker

---

### 6. EP000 Buffer Meets Minimum Viable Pack Definition

**Status:** [ ] PASS / [ ] FAIL / [ ] IN PROGRESS

**Requirements:**
- [ ] EP000 script drafted (12–16 minutes, mechanism-heavy)
- [ ] EP000 sources gathered (Tier 1/2 sources only)
- [ ] EP000 claims tracked (Critical vs Narrative)
- [ ] EP000 diagrams planned (2–3 diagrams + 1 map schematic)
- [ ] EP000 rights-safe visual checklist completed
- [ ] EP000 ready to export on demand (4-hour emergency format)

**Evidence Location:** `content/season-1/ep000/` directory

**Blocker if FAIL:** No buffer available if Week 1 breaks

---

## Gate Summary

| Item | Status | Blocker? | Notes |
|------|--------|----------|-------|
| Hardware gate test | IN PROGRESS | Yes | Full export workflow needed |
| Azure Speech + Key Vault | IN PROGRESS | Yes | TTS access required |
| Voice bake-off + freeze | IN PROGRESS | Yes | Voice must be frozen before EP001 |
| Asset pack templates frozen | IN PROGRESS | Yes | Prevents visual drift |
| Tracker active | IN PROGRESS | No | Can activate in parallel |
| EP000 buffer MVP | IN PROGRESS | Yes | Emergency buffer required |

**Overall Status:** IN PROGRESS

---

## Next Actions (Priority Order)

1. [ ] Complete voice bake-off and freeze voice (blocker for all audio)
2. [ ] Test Azure Speech + Key Vault (blocker for TTS generation)
3. [ ] Build and freeze asset pack templates (blocker for visual consistency)
4. [ ] Complete hardware gate test (blocker for export workflow)
5. [ ] Draft EP000 buffer episode (blocker for buffer policy)
6. [ ] Activate tracker (can proceed in parallel)

---

## Notes

- Phase 0 has no strict time limit, but should complete before Week 1 publish
- Voice freeze is the highest priority blocker (affects all episodes)
- EP000 buffer can be drafted in parallel with other setup work
- Asset pack templates should be tested with EP001 materials before freezing
- Weekly review ritual does not start until Week 1 publish

---

## Sign-off

**Setup Gate Passed:** [ ] YES / [ ] NO / [ ] IN PROGRESS

**Sign-off Date:** YYYY-MM-DD
**Signed by:** Chris

**Conditions for PASS:**
- All 6 items marked PASS
- Evidence reports completed and committed
- Voice Freeze Record v1 created
- EP000 buffer MVP ready

**Once PASSED:** Proceed to Phase 1 (Week 1 publish of EP001)
