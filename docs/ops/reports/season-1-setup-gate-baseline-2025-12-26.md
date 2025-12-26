# Season 1 Setup Gate Baseline Evidence

**Report Date:** 2025-12-26
**Report Type:** Baseline evidence capture (Phase 0)
**Branch:** ops/season1-plan-adopt-v1
**Commit:** [To be filled after commit]

---

## Executive Summary

This report captures the baseline status of Phase 0 (Setup Gate) items at the time of Season 1 Plan v2 adoption.

**Overall Status:** IN PROGRESS

**Summary:**
- Season 1 Plan v2 adopted and committed to repo
- Scaffolding created for execution (trackers, SOPs, episode folders)
- Setup Gate checklist created with 6 prerequisite items
- Voice bake-off framework exists; voice freeze pending
- Asset pack templates pending
- EP000 buffer episode pending

---

## Git Context

**Repository Root:**
```
C:/devop/saas202548
```

**Branch:**
```
ops/season1-plan-adopt-v1
```

**Working Tree Status:**
- Modified and new files pending commit (plan adoption in progress)

**Recent Commits (before this work):**
```
f735a12 ops: TTS evaluation framework ready (awaiting user testing)
76117f9 Merge pull request #13 from verdaio/ops/ep001-tooling-baseline-v1
2508af1 Merge main into ops/ep001-tooling-baseline-v1 (resolve conflicts)
```

---

## Setup Gate Items Status

### 1. Hardware Gate Test

**Status:** IN PROGRESS

**Current State:**
- Video editing software: Not yet verified
- Audio export workflow: Not yet verified
- Graphics workflow: Not yet verified
- Full export workflow: Not yet verified

**Blockers:**
- Requires manual testing by Chris
- Test plan needed (sample 60–90 sec video export)

**Next Steps:**
- [ ] Create test plan for hardware gate
- [ ] Execute hardware gate test
- [ ] Document PASS/FAIL results

---

### 2. Azure Speech + Key Vault Verified

**Status:** IN PROGRESS

**Current State:**
- Azure Speech service: Not yet verified
- Key Vault: Not yet verified
- TTS API call: Not yet tested
- Cost estimates: Not yet validated

**Blockers:**
- Requires Azure credentials and configuration
- Manual testing required

**Next Steps:**
- [ ] Verify Azure Speech service access
- [ ] Configure Key Vault with secrets
- [ ] Test TTS API call with test excerpt
- [ ] Validate cost estimates

---

### 3. Voice Bake-off Done; Voice Frozen

**Status:** IN PROGRESS

**Current State:**
- Voice bake-off framework: EXISTS at `docs/production/AI-VOICE-DECISION-v1.md`
- Voice bake-off results: TEMPLATE EXISTS at `docs/production/AI-VOICE-DECISION-RESULTS-v1.md` (not yet filled)
- Voice selection: PENDING
- SSML settings: PENDING
- Licensing verification: PENDING
- Voice Freeze Record v1: WILL BE CREATED during this adoption

**Evidence:**
- TTS evaluation framework ready (per STATUS.md: "2025-12-25: TTS evaluation framework ready for user testing")
- Test excerpt exists: `content/production/ep001-tts-test-excerpt-v1.md`
- Rubric template exists: 10-point rubric in AI-VOICE-DECISION-RESULTS-v1.md

**Blockers:**
- User testing required (Claude cannot generate/evaluate audio)
- Voice selection decision pending

**Next Steps:**
- [ ] Test TTS tools using existing framework
- [ ] Fill in AI-VOICE-DECISION-RESULTS-v1.md with scores
- [ ] Select voice and freeze
- [ ] Create VOICE-FREEZE-RECORD-v1.md

---

### 4. Asset Pack Templates Built and Frozen

**Status:** IN PROGRESS

**Current State:**
- Style Constitution v1: WILL BE CREATED during this adoption
- Typography: Not yet selected
- Color palette: Not yet defined
- Diagram template: Not yet created
- Map schematic template: Not yet created
- Stat callout template: Not yet created
- Source tag style: Not yet frozen

**Blockers:**
- Requires design decisions and template creation
- Should be tested with EP001 materials before freezing

**Next Steps:**
- [ ] Create STYLE-CONSTITUTION-v1.md
- [ ] Select typography (font family for Season 1)
- [ ] Define color palette (calm palette, high contrast)
- [ ] Create diagram template
- [ ] Create map schematic template
- [ ] Create stat callout template
- [ ] Freeze source tag style

---

### 5. Tracker Created and Active

**Status:** IN PROGRESS

**Current State:**
- Episodes tracker: EXISTS at `tracking/episodes/episodes.md` (needs Season 1 structure)
- Season 1 episodes tracker: WILL BE CREATED during this adoption
- Weekly review template: WILL BE CREATED during this adoption
- Corrections log: WILL BE CREATED during this adoption
- Metrics tracker: WILL BE CREATED during this adoption
- Pillar B Safety Gate: WILL BE CREATED during this adoption

**Evidence:**
- Existing episode tracker at `tracking/episodes/episodes.md` tracks EP001–EP006
- Current focus: EP001 - How UPS Turned Routing Into a Machine (per existing tracker)

**Next Steps:**
- [ ] Create `tracking/season-1/episodes.md` with locked publish order
- [ ] Create `tracking/season-1/weekly-review.md` template
- [ ] Create `tracking/season-1/corrections-log.md`
- [ ] Create `tracking/season-1/metrics.md`
- [ ] Create `tracking/season-1/pillar-b-safety-gate.md`

---

### 6. EP000 Buffer Meets Minimum Viable Pack Definition

**Status:** IN PROGRESS

**Current State:**
- EP000 script: Not yet drafted
- EP000 sources: Not yet gathered
- EP000 claims: Not yet tracked
- EP000 diagrams: Not yet planned
- EP000 rights-safe checklist: Not yet completed
- EP000 folder: WILL BE CREATED during this adoption

**Blockers:**
- Requires content creation (12–16 min script, mechanism-heavy)
- Requires research and sourcing

**Next Steps:**
- [ ] Create `content/season-1/ep000/` folder structure
- [ ] Draft EP000 script (Lite episode: 12–16 min, mechanism-heavy)
- [ ] Gather EP000 sources (Tier 1/2 only)
- [ ] Track EP000 claims (Critical vs Narrative)
- [ ] Plan EP000 diagrams (2–3 diagrams + 1 map)
- [ ] Complete rights-safe visual checklist

---

## Reconciliation with Prior Work

### Existing Episode Work (EP001)

**Current State:**
- EP001 script v2 completed at `content/scripts/EP001-ups-routing-script-v2.md` (~2,350 words, 15.5 min target)
- EP001 sources at `content/sources/EP001-ups-orion-sources-v1.md` (16 cited sources)
- EP001 B-roll v2 at `content/broll/EP001-ups-orion-broll-v2.md`
- EP001 graphics v2 at `content/graphics/EP001-ups-orion-graphics-v2.md`
- EP001 MVP production pack completed

**Integration:**
- Existing EP001 content will be linked/moved into `content/season-1/ep001/` structure during scaffolding
- EP001 already follows many Season 1 Plan requirements (sources, claims, tiered assets)
- EP001 can serve as baseline for script length band calibration

### Existing Voice Bake-off Work

**Current State:**
- Voice bake-off framework: `docs/production/AI-VOICE-DECISION-v1.md`
- Voice bake-off results template: `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`
- TTS test excerpt: `content/production/ep001-tts-test-excerpt-v1.md`
- License verification checklist: `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md`

**Integration:**
- Voice Freeze Record v1 will link to existing voice bake-off decision results
- Existing framework will be referenced in Season 1 setup gate

### Existing Tooling Baseline

**Current State:**
- Tooling baseline: `docs/production/TOOLING-BASELINE-v1.md`
- Tools registry: `content/production/TOOLS-REGISTRY-v1.yml`

**Integration:**
- Tooling baseline provides foundation for Phase 0 hardware gate test
- Will be referenced in setup gate checklist

---

## Required Files Check

This section will be updated in the adoption evidence report after all files are created.

---

## Recommendations

1. **Prioritize Voice Freeze:** Voice selection is the highest priority blocker; all audio work depends on it
2. **Test with EP001:** Use existing EP001 materials to validate asset pack templates before freezing
3. **Parallel Execution:** Tracker creation and buffer episode drafting can proceed in parallel with voice/asset work
4. **Leverage Existing Work:** EP001 script v2 provides excellent baseline for script length calibration
5. **User Testing Required:** Voice bake-off, hardware gate, and Azure Speech verification all require manual testing

---

## Next Report

**Report Type:** Season 1 Plan Adoption Evidence
**Report File:** `season-1-plan-adoption-evidence-2025-12-26.md`
**Purpose:** Verify all required files created and plan adoption complete
