# Season 1 — Operational Hub

**Status:** PLANNING COMPLETE (v2)
**Target:** 20 episodes @ 1/week (minimum 20 weeks)
**Current Phase:** Phase 0 — Setup gate

---

## Quick Links

### Core Plan
- **[Season 1 Plan Complete v2](SEASON-1-PLAN-COMPLETE-v2.md)** — The complete locked plan (LOCKED)

### Execution Scaffolding
- [Episode Tracker](../../tracking/season-1/episodes.md) — Episode status and publish schedule
- [Weekly Review](../../tracking/season-1/weekly-review.md) — Weekly ritual template
- [Corrections Log](../../tracking/season-1/corrections-log.md) — Issue tracking
- [Metrics Tracker](../../tracking/season-1/metrics.md) — Performance bands and decision policy

### Gates & Compliance
- [Setup Gate Checklist](../ops/SEASON-1-SETUP-GATE.md) — Phase 0 prerequisites
- [Compliance Checklist](../ops/SEASON-1-COMPLIANCE-CHECKLIST.md) — LOCKED item enforcement
- [Pillar B Safety Gate](../../tracking/season-1/pillar-b-safety-gate.md) — Gate checklist + safe subset ordering

### SOPs
- [Research System SOP v2](../ops/RESEARCH-SYSTEM-SOP-v2.md) — Source tiers + claims split (Critical vs Narrative)
- [Rights-Safe Visual Sourcing SOP](../ops/RIGHTS-SAFE-VISUAL-SOURCING-SOP.md) — Visual stack + maps/logos policy
- [Captions Minimum Standard](../ops/CAPTIONS-MINIMUM-STANDARD.md) — Required correction pass
- [SEO/Discovery SOP](../ops/SEO-DISCOVERY-SOP.md) — Description + pinned comment + end screens
- [Style Constitution v1](../production/STYLE-CONSTITUTION-v1.md) — Typography, color, diagrams, maps

### Production
- [Voice Freeze Record v1](../production/VOICE-FREEZE-RECORD-v1.md) — Locked voice + SSML + WPM calibration

### Episode Scaffolds
- `content/season-1/ep000/` — Buffer episode (MVP pack ready)
- `content/season-1/ep00a-lite/` — Buffer Lite episode A
- `content/season-1/ep00b-lite/` — Buffer Lite episode B
- `content/season-1/ep001/` — Week 1: UPS ORION
- `content/season-1/ep002/` — Week 2: Last-mile economics
- `content/season-1/ep003/` — Week 3: Amazon same-day delivery
- `content/season-1/ep004/` — Week 4: Why route plans fail

---

## Phase 0 Setup Gate

**Current Status:** IN PROGRESS

Phase 0 tasks and automation:

### Core Documentation
- [Setup Gate Checklist](../ops/SEASON-1-SETUP-GATE.md) — Phase 0 prerequisites with PASS/FAIL status
- [Voice Freeze Record v1](../production/VOICE-FREEZE-RECORD-v1.md) — Voice selection and SSML settings

### Tools & Automation
- [TTS Bake-off Runner](../../tools/tts/README.md) — Azure Speech voice evaluation tool
- [Media Warehouse Paths](../ops/MEDIA-WAREHOUSE-PATHS.md) — Local media storage conventions

### Bake-off Runs
- [2025-12-26 Bake-off](../../content/production/tts-bakeoff/2025-12-26/MANIFEST.md) — Initial voice evaluation

### Evidence Reports
- [Phase 0 Setup Gate Report — 2025-12-26](../ops/reports/phase0-setup-gate-azure-voice-bakeoff-2025-12-26.md) — Azure Speech + bake-off runner setup

---

## LOCKED Plan Notice

The **Season 1 Plan Complete v2** is **LOCKED**.

This means:
- All items marked "(LOCKED)" in the plan are source-of-truth
- Any edits to locked items require a version bump (v3+) with documented rationale
- Changes must be approved by Chris before committing

**Reason:** Prevents scope creep and ensures the plan remains a stable operational baseline.

---

## Change Control

**Current Version:** v2
**Last Updated:** 2025-12-26
**Next Review:** After EP004 published (end of Phase 1)

### Version History
- **v2** (2025-12-26): Expert review fixes applied (20-week timeline, buffer policy, claims split, rights-safe SOP, style constitution, SEO SOP, metrics bands, signature frameworks, Pillar B safe subset)
- **v1** (Prior): Initial Season 1 plan (not committed to repo)

### How to Propose Changes
1. Document the proposed change and rationale
2. Open an issue or discussion with Chris
3. If approved, create a new version (v3) of the plan file
4. Update this README to reflect the new version
5. Update the compliance checklist to reflect any new locked items

---

## What This Plan Covers

The Season 1 Plan v2 includes:

1. **Season Definition** — 20 episodes, 1/week, scope-based
2. **Phased Execution Map** — Phase 0 (Setup), Phase 1 (Weeks 1–4), Phase 2 (Weeks 5–8), Phase 3 (Weeks 9–20)
3. **Locked Publish Order** — EP001–EP004 sequence frozen
4. **Buffer Policy** — 2–3 buffer episodes by Week 6
5. **Script Length Bands** — 15/20/25 min word counts (calibrate after EP001)
6. **Research System SOP v2** — Source tiers + Critical vs Narrative claims split
7. **Rights-Safe Visual Sourcing SOP** — Visual stack, maps policy, logos/screenshots policy, receipts storage
8. **Captions Minimum Standard** — Names, acronyms, numbers, meaning corrections (5–10 min/episode)
9. **Style Constitution** — Typography, color, diagrams, maps, stat callouts (prevents drift)
10. **SEO/Discovery SOP** — Description structure, pinned comment, end screens, playlists
11. **Metrics Bands (Draft)** — CTR, retention, AVD bands + decision policy (one change/week)
12. **Signature Frameworks** — 4 sections every episode (optimizes, constraints, failure modes, tradeoffs)
13. **Pillar B Safety Gate v2** — Prerequisites + safe subset ordering + high-risk language checklist

---

## Episode Structure (Standard)

Every Season 1 episode folder includes:
- `script.md` — Cold Open, Sections, Outro (with signature framework reminders)
- `sources.md` — Bibliography + visual credits
- `claims.md` — Critical vs Narrative claims table
- `visual-credits.md` — Rights-safe checklist + receipts location
- `qa-checklist.md` — Claims QA, captions, rights-safe verification, end screen/playlist, pinned comment
- `export-notes.md` — Export settings + WPM calibration (EP001 only)

---

## Phase 0 Status

Phase 0 (Setup gate) must complete before Week 1 publish.

See [Setup Gate Checklist](../ops/SEASON-1-SETUP-GATE.md) for full status.

**Key items:**
- [ ] Hardware gate test (PASS/FAIL logged)
- [ ] Azure Speech + Key Vault verified
- [ ] Voice bake-off done; voice frozen
- [ ] Asset pack templates built and frozen
- [ ] Tracker created and active
- [ ] EP000 buffer meets Minimum Viable Pack definition

---

## Notes

- This plan is the operational source-of-truth for Season 1 execution
- All execution should follow the plan by default
- Deviations require documented rationale
- Weekly review ritual ensures adherence and continuous improvement
