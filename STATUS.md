# Project Status

<!-- STATUS:BEGIN -->
## Progress

| Metric | Value |
|--------|-------|
| **Current Stage** | Phase 0 — Setup Gate (Season 1 Plan v2 Adopted) |
| **Next Milestone** | Complete Setup Gate Prerequisites |
| **Last Updated** | 2025-12-27 |
| **Scaffold Version** | v0.4.1 |
| **Brand Name** | Case Study Library |
| **Channel Name** | Quiet Business Machines |
| **Season 1 Plan** | v2 (LOCKED — 20 episodes @ 1/week) |
| **Asset Storage** | Google Drive |
| **Active Episode** | EP001 - UPS ORION and the "no left turns" logic (Week 1) |

### Season 1 Phase Progression

**Current Phase:** Phase 0 — Setup Gate

- [x] Season 1 Plan v2 adopted and scaffolded
- [ ] Setup Gate Prerequisites (6 items - see `docs/ops/SEASON-1-SETUP-GATE.md`)
  - [ ] Hardware gate test (video/audio/graphics export workflow)
  - [ ] Azure Speech + Key Vault verified
  - [ ] Voice bake-off done; voice frozen
  - [ ] Asset pack templates built and frozen
  - [ ] Tracker created and active (**IN PROGRESS**)
  - [ ] EP000 buffer meets Minimum Viable Pack definition
- [ ] **Phase 1 (Weeks 1–4)**: Publish EP001–EP004 (locked order)
- [ ] **Phase 2 (Weeks 5–8)**: Scale logistics + build buffer inventory (2–3 buffer episodes by Week 6)
- [ ] **Phase 3 (Weeks 9–20)**: Season completion (Logistics EP009–EP010, then Pillar B if gate passed)

### Notes
- **2025-12-27**: Azure TTS naming compliance audit completed
  - Audit report: `docs/ops/reports/azure-tts-naming-audit-2025-12-27.md`
  - Resource doc: `docs/ops/AZURE-TTS-RESOURCES.md` (provisioning commands with compliant names)
  - **Finding:** No Azure resources exist for project 202548 (previously proposed names were blocked by auth)
  - **Standard found:** Verdaio Azure Naming Standard v1.2 in template system
  - **Non-compliant proposed names:** `rg-saas202548-prodops`, `kv-saas202548-prodops`, `spch-saas202548-prodops`
  - **Compliant names proposed:**
    - Resource Group: `rg-vrd-202548-dev-eus2`
    - Key Vault: `kv-vrd-202548-dev-01`
    - Speech Service: `cog-vrd-202548-dev-eus2-01`
  - **No migration needed:** Resources can be created with compliant names from the start
  - **Recommendation:** Update `tools/tts/azure-speech-bakeoff.ps1` with compliant Key Vault name before provisioning
  - **Template system propagation:** Add Cognitive Services (`cog`) abbreviation to naming standard
- **2025-12-26**: Season 1 Plan v2 adopted as operational source-of-truth
  - **Plan file:** `docs/season-1/SEASON-1-PLAN-COMPLETE-v2.md` (LOCKED)
  - **Operational hub:** `docs/season-1/README.md` (quick links to all Season 1 artifacts)
  - **Execution scaffolding:** Created `content/season-1/` with episode folders (EP000, EP00A, EP00B, EP001–EP004)
  - **Tracking documents:** Created `tracking/season-1/` (episodes, weekly-review, corrections-log, metrics, pillar-b-safety-gate)
  - **SOPs created:** Research v2, Rights-safe Visual Sourcing, Captions Minimum, SEO/Discovery, Style Constitution v1
  - **Voice Freeze Record:** `docs/production/VOICE-FREEZE-RECORD-v1.md` (template ready; to be filled after bake-off)
  - **Setup Gate checklist:** `docs/ops/SEASON-1-SETUP-GATE.md` (Phase 0 prerequisites)
  - **Compliance checklist:** `docs/ops/SEASON-1-COMPLIANCE-CHECKLIST.md` (LOCKED items enforcement)
  - **Locked publish order:** EP001 (UPS ORION), EP002 (Last-mile economics), EP003 (Amazon same-day), EP004 (Route plans fail)
  - **Buffer policy:** 2–3 buffer-ready episodes by Week 6 (EP000, EP00A, EP00B)
  - **Next action:** Complete Setup Gate prerequisites before Week 1 publish
- **2025-12-25**: TTS/AI Voice evaluation framework ready for user testing
  - Test excerpt: `content/production/ep001-tts-test-excerpt-v1.md` (~200 words, 60-90 sec)
  - Results template: `docs/production/AI-VOICE-DECISION-RESULTS-v1.md` (10-point rubric)
  - License policy: `content/production/licenses/tts/README.md` (hash-based evidence for public repo)
  - Renders ignored: `content/production/renders/.gitignore` (prevents committing audio files)
  - **User action required:** Test TTS tools, score rubric, verify licenses, update registry/baseline
  - **Blocker:** AI voice/TTS tool still not chosen (Claude cannot generate/evaluate audio)
- **2025-12-25**: Production tooling baseline established
  - Tooling baseline: `docs/production/TOOLING-BASELINE-v1.md` (6-stage pipeline with defaults/fallbacks)
  - Tools registry: `content/production/TOOLS-REGISTRY-v1.yml` (machine-readable)
  - AI voice decision: `docs/production/AI-VOICE-DECISION-v1.md` (evaluation framework)
  - License verification: `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md` (proof capture procedure)
  - **Blockers:** AI voice/TTS and video editor not yet chosen
  - **Licensing gaps:** Canva, Epidemic Sound, stock footage need verification
  - Ready for: TTS candidate testing, video editor evaluation, license verification
- **2025-12-25**: EP001 MVP production pack completed
  - B-roll v2: `content/broll/EP001-ups-orion-broll-v2.md` (12 MVP shots + extended tier)
  - Graphics v2: `content/graphics/EP001-ups-orion-graphics-v2.md` (5 MVP graphics + extended tier)
  - Pacing v2: `content/production/EP001-readthrough-pacing-v2.md` (aligned to script v2 with cut list)
  - Asset manifest: `content/production/EP001-asset-manifest-v1.md` (licensing tracking table)
  - Recording test plan: `content/production/EP001-recording-test-plan-v1.md` (procedure with pass/fail gates)
  - Recording test log: `content/production/EP001-recording-test-log-template-v1.md` (fill-in template)
  - Press request template: `content/production/EP001-ups-press-request-template-v1.md` (optional)
  - MVP-first approach: minimal viable assets for complete episode
  - MVP budget estimate: $0-1,400 (vs. $5,000+ for extended tier)
  - Ready for recording test and asset acquisition
- **2025-12-25**: EP001 script v2 completed after read-through
  - Read-through log: `content/production/EP001-readthrough-log-v1.md` (comprehensive analysis)
  - Script v2: `content/scripts/EP001-ups-routing-script-v2.md` (~2,350 words, 15.5 min target)
  - Improvements: better speakability, reduced number density, added pattern interrupts, more conversational
  - Ready for recording test
- **2025-12-25**: EP001 script draft completed (v1)
  - Full script: `content/scripts/EP001-ups-routing-script-v1.md` (~2,480 words, 16.5 min target)
  - Source pack: `content/sources/EP001-ups-orion-sources-v1.md` (16 cited sources)
  - B-roll list: `content/broll/EP001-ups-orion-broll-v1.md` (27 shots)
  - Graphics brief: `content/graphics/EP001-ups-orion-graphics-v1.md` (10 graphics)
  - Pacing plan: `content/production/EP001-readthrough-pacing-v1.md`
  - All numeric claims backed by cited sources; factual errors from outline corrected
- **2025-12-24**: Brand vs channel naming split clarified
  - Brand (visual identity): **Case Study Library**
  - Channel (content positioning): **Quiet Business Machines**
  - Evidence report: `docs/ops/reports/saas202548-branding-naming-split-2025-12-24.md`
- **2025-12-24**: Brand baseline established
  - Brand name confirmed: **Case Study Library** (visual identity)
  - Evidence report: `docs/ops/reports/saas202548-brand-name-case-study-library-2025-12-24.md`
- **2025-12-24**: Logo asset pack added for Case Study Library brand
  - Path: `docs/branding/assets/logo/selected/v1/`
  - Brand docs: `docs/branding/BRAND.yml`, `docs/branding/BRAND.md`
- **2025-12-24**: Systemarium master plan document committed and linked
  - Path: `docs/systemarium/systemarium-master-plan-design-workflow-v1.md`
  - Contains: 90/180-day outcomes, positioning, content strategy, format design, policy guardrails, operating model, analytics system, monetization roadmap, risk register

<!-- STATUS:END -->

---

## Preflight Evidence

Captured during scaffold creation:

```
Test-Path "C:\devop\saas202548": False (path did not exist)
git --version: git version 2.51.0.windows.2
New-Item: Directory created successfully at C:\devop\saas202548
```

---

## Verification Evidence

### Git Status
```
On branch main
nothing to commit, working tree clean
```

### Branch Check
```
main
```

### Required Files Check
```
AI-UPGRADES-LOG.md
README.md
STATUS.md
docs/CHANGELOG.md
prompts/README.md
```

### Directory Tree
```
C:\devop\saas202548\assets
C:\devop\saas202548\docs
C:\devop\saas202548\pipelines
C:\devop\saas202548\prompts
C:\devop\saas202548\templates
C:\devop\saas202548\tracking
C:\devop\saas202548\.gitignore
C:\devop\saas202548\AI-UPGRADES-LOG.md
C:\devop\saas202548\README.md
C:\devop\saas202548\STATUS.md
C:\devop\saas202548\assets\audio
C:\devop\saas202548\assets\brand
C:\devop\saas202548\assets\broll
C:\devop\saas202548\assets\overlays
C:\devop\saas202548\assets\thumbnails
C:\devop\saas202548\docs\brand
C:\devop\saas202548\docs\content
C:\devop\saas202548\docs\legal
C:\devop\saas202548\docs\ops
C:\devop\saas202548\docs\reports
C:\devop\saas202548\docs\CHANGELOG.md
C:\devop\saas202548\docs\brand\BRAND-KIT.md
C:\devop\saas202548\docs\content\CHANNEL-BRIEF.md
C:\devop\saas202548\docs\content\CONTENT-PIPELINE.md
C:\devop\saas202548\docs\legal\POLICY-GUARDRAILS.md
C:\devop\saas202548\docs\ops\ASSET-STORAGE.md
C:\devop\saas202548\docs\ops\WEEKLY-RHYTHM.md
C:\devop\saas202548\pipelines\checklists
C:\devop\saas202548\pipelines\prompts
C:\devop\saas202548\pipelines\checklists\publish-checklist-v1.md
C:\devop\saas202548\templates\descriptions
C:\devop\saas202548\templates\scripts
C:\devop\saas202548\templates\thumbnails
C:\devop\saas202548\templates\descriptions\description-template-v1.md
C:\devop\saas202548\templates\scripts\script-template-v1.md
C:\devop\saas202548\templates\thumbnails\thumbnail-brief-template-v1.md
C:\devop\saas202548\tracking\episodes
C:\devop\saas202548\tracking\experiments
C:\devop\saas202548\tracking\ideas
C:\devop\saas202548\tracking\episodes\episodes.md
C:\devop\saas202548\tracking\experiments\experiments.md
C:\devop\saas202548\tracking\ideas\ideas.md
```

### Verification Results

| Check | Status |
|-------|--------|
| Git repo initialized and clean | PASS |
| Branch = main | PASS |
| Required docs exist | PASS |
| Directory structure exists | PASS |
| Templates exist | PASS |
| Tracking files exist | PASS |
| Asset storage guidance exists | PASS |
| No secrets present | PASS |

**Overall**: All 42 checks PASS. See `docs/ops/VERIFICATION-CHECKLIST.md` for full details.

---

## Decisions Made

1. **Channel Positioning**: "Quiet Business Machines" - calm, sleepy documentaries about invisible business systems
2. **Asset Storage**: Google Drive (`Quiet Business Machines/` folder)
3. **First Episode**: EP001 - How UPS Turned Routing Into a Machine
4. **First 6 Video Topics**:
   - EP001: How UPS Turned Routing Into a Machine
   - EP002: The Quiet Rules Behind Credit Card Payments
   - EP003: Why Toyota's System Was Hard to Copy
   - EP004: The Rise and Fall of Blackberry (Slow Documentary)
   - EP005: How Big Retail Inventory Actually Works
   - EP006: The History of the Barcode (and Why It Won)

## Decisions Pending

None - git remote now configured.

## Kickoff Audit Notes (2025-12-24)

- Kickoff baseline audit completed
- Added PROJECT-MEMORY-PACKET.md and LOCAL-DEV-BOOTSTRAP.md
- Full audit report: `docs/ops/reports/saas202548-kickoff-audit-2025-12-24.md`
- Git remote configured: `verdaio/saas202548` (private)

## Next Steps

1. Set up Google Drive folder structure (see `docs/ops/ASSET-STORAGE.md`)
2. Begin EP001 research and outline
3. Write EP001 script using `templates/scripts/script-template-v1.md`
