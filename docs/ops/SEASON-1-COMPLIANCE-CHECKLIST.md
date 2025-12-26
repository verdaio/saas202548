# Season 1 Compliance Checklist

**Purpose:** Ensure all "LOCKED" items from Season 1 Plan v2 are enforced via repo artifacts and routines
**Last Updated:** 2025-12-26
**Plan Reference:** `docs/season-1/SEASON-1-PLAN-COMPLETE-v2.md`

---

## Overview

This checklist maps each "LOCKED" item in the Season 1 Plan v2 to:
1. **Concrete repo artifacts** (files that enforce the rule)
2. **Operational routines** (recurring tasks that ensure compliance)

**Purpose:** Prevent drift and ensure the plan is the default workflow.

---

## LOCKED Items Compliance

### 1. Season Definition (LOCKED)

**Plan Requirement:**
- 20 longform episodes @ 1/week (minimum 20 weeks)
- Scope-based, not calendar-based
- Content pillars: Logistics "Invisible Machines" (10) + Failures That Teach (10), with Pillar B gated

**Enforcement:**
- [ ] `tracking/season-1/episodes.md` includes 20 episode slots
- [ ] Episode tracker enforces 1/week cadence (with buffer policy exception)
- [ ] Pillar B Safety Gate doc prevents premature Pillar B start

**Routine:**
- Weekly review verifies cadence adherence
- Pillar B Safety Gate checklist reviewed before any Pillar B research begins

---

### 2. Locked Publish Order (Weeks 1–4) (LOCKED)

**Plan Requirement:**
- Week 1: EP001 — UPS ORION
- Week 2: EP002 — Last-mile economics
- Week 3: EP003 — Amazon same-day delivery
- Week 4: EP004 — Why route plans fail

**Enforcement:**
- [ ] `tracking/season-1/episodes.md` hardcodes EP001–EP004 publish order
- [ ] Episode tracker includes week numbers (Week 1–4)

**Routine:**
- Any deviation from locked order requires documented rationale and approval

---

### 3. Buffer Policy (Upgraded) (LOCKED)

**Plan Requirement:**
- 2–3 buffer-ready episodes by end of Week 6 (EP000, EP00A, EP00B)
- Lite episode definition: 12–16 min, mechanism-heavy, 2–3 diagrams + 1 map
- Shorts-only week contingency allowed (5 Shorts + 1 community post)

**Enforcement:**
- [ ] `tracking/season-1/episodes.md` includes buffer slots (EP000, EP00A, EP00B)
- [ ] Buffer episode folders include Lite episode checklist
- [ ] Shorts-only week contingency documented in tracker notes

**Routine:**
- Weekly review verifies buffer inventory status
- Week 6 milestone: confirm 2–3 buffer episodes ready

---

### 4. Script Length Bands (LOCKED as baseline; calibrate after EP001)

**Plan Requirement:**
- 15 min: 2,000–2,600 words
- 20 min: 2,600–3,200 words
- 25 min: 3,200–4,000 words
- Calibrate after EP001 export (measure actual WPM)

**Enforcement:**
- [ ] `content/season-1/ep001/export-notes.md` includes WPM calibration placeholder
- [ ] Script templates include word count targets

**Routine:**
- After EP001 export, measure actual WPM and update bands if needed (requires v3 version bump)

---

### 5. Research System SOP v2 (LOCKED)

**Plan Requirement:**
- Source tiers (Tier 1 Primary, Tier 2 High-quality secondary, Tier 3 Tertiary not allowed for critical)
- Claims split: Critical (2 sources or 1 authoritative primary) vs Narrative (1 Tier 1/2 source)

**Enforcement:**
- [ ] `docs/ops/RESEARCH-SYSTEM-SOP-v2.md` created with source tiers and claims split
- [ ] Episode `claims.md` template includes Critical=YES/NO column
- [ ] Episode `sources.md` template includes tier classification

**Routine:**
- QA checklist verifies Critical claims have required sourcing
- Weekly review spot-checks source tier compliance

---

### 6. Rights-Safe Visual Sourcing SOP (LOCKED)

**Plan Requirement:**
- Default visual stack: house-made → public domain → licensed stock → logos/screenshots
- Maps policy: prefer schematic maps, follow attribution rules
- Logos/screenshots: limited, factual, no endorsement
- Receipts stored in media warehouse (`...\library\receipts-licenses\`)

**Enforcement:**
- [ ] `docs/ops/RIGHTS-SAFE-VISUAL-SOURCING-SOP.md` created
- [ ] Episode `visual-credits.md` template includes rights-safe checklist
- [ ] Episode `sources.md` template includes "Visual credits" section

**Routine:**
- QA checklist verifies visual credits and receipts for every visual used
- Weekly review spot-checks visual sourcing compliance

---

### 7. Captions Minimum Standard (LOCKED)

**Plan Requirement:**
- Use YouTube auto captions
- Minimum correction pass: names, acronyms, numbers, meaning changes
- Target time: 5–10 minutes per episode (not optional)

**Enforcement:**
- [ ] `docs/ops/CAPTIONS-MINIMUM-STANDARD.md` created
- [ ] Episode QA checklist includes captions correction step

**Routine:**
- Captions correction step required before marking episode "Published"

---

### 8. Style Constitution (LOCKED)

**Plan Requirement:**
- One font family for Season 1
- Calm palette, high contrast, source tag placement consistent
- Simple geometric icons, consistent diagram style
- Schematic maps, stat callout pattern

**Enforcement:**
- [ ] `docs/production/STYLE-CONSTITUTION-v1.md` created
- [ ] Asset pack templates frozen (typography, color, diagrams, maps)

**Routine:**
- Visual QA checklist verifies Style Constitution compliance before publish

---

### 9. SEO / Discovery SOP (LOCKED)

**Plan Requirement:**
- Description structure: hook, "What you'll learn," "Key ideas," "Sources," corrections line
- Pinned comment: takeaway, sources, next episode tease
- End screens: latest video + playlist
- One primary playlist per episode

**Enforcement:**
- [ ] `docs/ops/SEO-DISCOVERY-SOP.md` created
- [ ] Episode QA checklist includes SEO/Discovery verification

**Routine:**
- Pre-publish QA verifies description, pinned comment, end screens, playlist assignment

---

### 10. Metrics Bands + Decision Policy (LOCKED v1; refine after 4 uploads)

**Plan Requirement:**
- Draft bands: CTR (< 2% / 2–5% / > 5%), retention, AVD
- Decision policy: change only one major variable per week
- Strong retention + weak CTR → change thumbnail
- Weak retention early → change hook structure
- Both weak → adjust topic framing/angle

**Enforcement:**
- [ ] `tracking/season-1/metrics.md` created with draft bands and decision policy
- [ ] Weekly review template includes metrics snapshot and one-change/week decision

**Routine:**
- Weekly review captures metrics, applies decision policy, documents changes

---

### 11. Signature Frameworks (LOCKED)

**Plan Requirement:**
- Every episode must cover: (1) What the system optimizes, (2) Constraints that matter, (3) Failure modes / where it breaks, (4) Tradeoffs and who pays

**Enforcement:**
- [ ] Episode `script.md` template includes signature framework reminders
- [ ] Episode QA checklist verifies all four frameworks covered

**Routine:**
- Script review verifies all four frameworks present
- Weekly review spot-checks signature framework adherence

---

### 12. Pillar B Safety Gate v2 (LOCKED)

**Plan Requirement:**
- Gate prerequisites: 4 Logistics episodes published, Research SOP executed 2x, Corrections policy in place, Buffer inventory (EP000 + 1 Lite)
- Safe subset ordering: Target Canada, Hershey, MoviePass, Quibi, Nokia/BlackBerry first
- High-risk language checklist: no motive speculation, no accusations without docs, clear "reported/according to" phrasing
- Chris required reviewer

**Enforcement:**
- [ ] `tracking/season-1/pillar-b-safety-gate.md` created with gate checklist + safe subset ordering + high-risk language checklist

**Routine:**
- Pillar B Safety Gate checklist reviewed before any Pillar B research begins
- Chris reviews all Pillar B episodes before publish

---

## Compliance Summary

| LOCKED Item | Artifact | Routine | Status |
|-------------|----------|---------|--------|
| Season Definition | `tracking/season-1/episodes.md` | Weekly review | [ ] |
| Locked Publish Order | `tracking/season-1/episodes.md` | Deviation approval | [ ] |
| Buffer Policy | `tracking/season-1/episodes.md` + buffer folders | Weekly review | [ ] |
| Script Length Bands | `ep001/export-notes.md` + script templates | WPM calibration after EP001 | [ ] |
| Research System SOP v2 | `docs/ops/RESEARCH-SYSTEM-SOP-v2.md` + episode templates | QA + weekly review | [ ] |
| Rights-Safe Visual SOP | `docs/ops/RIGHTS-SAFE-VISUAL-SOURCING-SOP.md` + episode templates | QA + weekly review | [ ] |
| Captions Minimum | `docs/ops/CAPTIONS-MINIMUM-STANDARD.md` + QA checklist | Pre-publish step | [ ] |
| Style Constitution | `docs/production/STYLE-CONSTITUTION-v1.md` + asset pack | Visual QA | [ ] |
| SEO / Discovery SOP | `docs/ops/SEO-DISCOVERY-SOP.md` + QA checklist | Pre-publish step | [ ] |
| Metrics + Decision Policy | `tracking/season-1/metrics.md` + weekly review template | Weekly review | [ ] |
| Signature Frameworks | Episode script templates + QA checklist | Script review + weekly spot-check | [ ] |
| Pillar B Safety Gate v2 | `tracking/season-1/pillar-b-safety-gate.md` | Pre-Pillar B gate review + Chris review | [ ] |

---

## Verification Procedure

**Frequency:** Weekly (during weekly review ritual)

**Steps:**
1. Review this checklist
2. Confirm all artifacts exist and are up-to-date
3. Confirm all routines are being executed
4. Document any deviations or gaps
5. Update compliance status

**Escalation:** Any LOCKED item deviation requires approval from Chris before proceeding.

---

## Notes

- This checklist is living and should be updated as new artifacts are created
- Compliance is not optional; it ensures the plan remains the default workflow
- Deviations should be rare and always documented with rationale
