# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [v0.4.0] - 2025-12-26

### Added
- Season 1 Plan v2 adopted as operational source-of-truth
  - `docs/season-1/SEASON-1-PLAN-COMPLETE-v2.md` - Complete locked plan (20 episodes, phased execution)
  - `docs/season-1/README.md` - Season 1 operational hub with quick links
- Setup Gate and Compliance enforcement
  - `docs/ops/SEASON-1-SETUP-GATE.md` - Phase 0 prerequisites checklist
  - `docs/ops/SEASON-1-COMPLIANCE-CHECKLIST.md` - Maps LOCKED items to artifacts and routines
  - `docs/ops/reports/season-1-setup-gate-baseline-2025-12-26.md` - Baseline evidence report
- Execution scaffolding for Season 1 episodes
  - Created `content/season-1/` directory structure
  - Episode folders for EP000, EP00A-lite, EP00B-lite, EP001-EP004 with standard templates
  - Each folder includes: `script.md`, `sources.md`, `claims.md`, `visual-credits.md`, `qa-checklist.md`, `export-notes.md`
- Season 1 tracking documents
  - `tracking/season-1/episodes.md` - Locked publish order (EP001-EP004) + buffer policy tracking
  - `tracking/season-1/weekly-review.md` - Weekly ritual template
  - `tracking/season-1/corrections-log.md` - Error tracking and corrections policy
  - `tracking/season-1/metrics.md` - Metric bands + one-change-per-week decision policy
  - `tracking/season-1/pillar-b-safety-gate.md` - Gate checklist + safe subset ordering + high-risk language checklist
- Season 1 SOPs (locked as part of Plan v2)
  - `docs/ops/RESEARCH-SYSTEM-SOP-v2.md` - Source tiers + Critical vs Narrative claims split
  - `docs/ops/RIGHTS-SAFE-VISUAL-SOURCING-SOP.md` - Visual stack + maps/logos policy + receipts storage
  - `docs/ops/CAPTIONS-MINIMUM-STANDARD.md` - Required correction pass (5-10 min/episode)
  - `docs/ops/SEO-DISCOVERY-SOP.md` - Description structure + pinned comment + end screens
  - `docs/production/STYLE-CONSTITUTION-v1.md` - Typography, color, diagrams, maps, stat callouts (prevents drift)
- Voice Freeze Record
  - `docs/production/VOICE-FREEZE-RECORD-v1.md` - TTS voice freeze template (to be filled after bake-off + WPM calibration)

### Changed
- Updated `README.md` with prominent link to Season 1 Operational Hub
- Updated `STATUS.md` to reflect Phase 0 (Setup gate) as current phase

### Notes
- Plan v2 is LOCKED; any changes require version bump and rationale
- Setup Gate prerequisites must pass before Week 1 publish
- Locked publish order: EP001 (UPS ORION), EP002 (Last-mile economics), EP003 (Amazon same-day), EP004 (Route plans fail)
- Buffer policy: 2-3 buffer-ready episodes by Week 6 (EP000, EP00A, EP00B)
- WPM calibration required after EP001 export (critical for script length bands)
- All execution scaffolding follows repeatable structure (script → sources → claims → QA → export)

---

## [v0.3.8] - 2025-12-25

### Added
- TTS/AI Voice evaluation framework (ready for user testing)
  - `content/production/ep001-tts-test-excerpt-v1.md` - Test excerpt (~200 words, 60-90 sec)
  - `content/production/renders/.gitignore` - Ignore audio files (*.mp3, *.wav, *.m4a)
  - `docs/production/AI-VOICE-DECISION-RESULTS-v1.md` - Results template for user to fill in
  - `content/production/licenses/tts/README.md` - Hash-based licensing evidence policy

### Notes
- Test excerpt includes: "UPS" (U-P-S), "ORION", large numbers, technical terms
- Evaluation framework ready, but **requires user testing** (Claude cannot generate or evaluate audio)
- Licensing evidence uses SHA256 hashes (public repo safety — no sensitive screenshots committed)
- User must: test tools, score rubric, verify licenses, update registry/baseline with chosen tool
- **Blocker:** AI voice/TTS tool still not chosen (awaiting user testing)

---

## [v0.3.7] - 2025-12-25

### Added
- Production tooling baseline and decision frameworks
  - `docs/production/TOOLING-BASELINE-v1.md` - 6-stage pipeline with defaults, fallbacks, and decision gates
  - `content/production/TOOLS-REGISTRY-v1.yml` - Machine-readable tooling registry
  - `docs/production/AI-VOICE-DECISION-v1.md` - TTS evaluation framework with 10-point rubric
  - `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md` - License proof capture procedure
  - `content/production/renders/` - Folder for local render outputs (.gitkeep)
  - `content/production/licenses/` - Folder for licensing proof (.gitkeep)

### Notes
- Evidence-based decisions from EP001 production pack (PR #12)
- Graphics tools formalized: PowerPoint/Keynote, Canva, Google Slides (MVP tier)
- Stock sources formalized: Pexels, Pixabay, Unsplash (free); Storyblocks, Artgrid (paid)
- Music sources formalized: Epidemic Sound, YouTube Audio Library, Freesound.org
- **Blockers identified:** AI voice/TTS tool and video editor not yet chosen
- **Licensing gaps:** Canva, Epidemic Sound, stock footage require verification
- Ready for EP001 tool testing and licensing verification

---

## [v0.3.6] - 2025-12-25

### Added
- EP001 MVP production pack with tiered asset approach
  - `content/broll/EP001-ups-orion-broll-v2.md` - MVP-first B-roll plan (12 MVP shots + extended tier)
  - `content/graphics/EP001-ups-orion-graphics-v2.md` - MVP-first graphics plan (5 MVP graphics + extended tier)
  - `content/production/EP001-readthrough-pacing-v2.md` - Pacing plan aligned to script v2 with cut list
  - `content/production/EP001-asset-manifest-v1.md` - Asset and licensing tracking table
  - `content/production/EP001-recording-test-plan-v1.md` - Recording test procedure
  - `content/production/EP001-recording-test-log-template-v1.md` - Recording test log template
  - `content/production/EP001-ups-press-request-template-v1.md` - Press request template (optional)

### Changed
- Updated STATUS.md to reflect EP001 progress (Script v2 → Production Prep)

### Notes
- MVP-first approach separates minimal viable assets from optional enhancements
- MVP tier: 12 B-roll shots + 5 graphics = complete episode with minimal cost/time
- Extended tier: Carry-forward from v1 for production value polish
- Asset manifest tracks licensing status for legal compliance
- Recording test plan provides pass/fail gates and marking system
- Estimated MVP budget: $0-1,400 (vs. $5,000+ for full extended tier)
- Ready for recording test and asset acquisition

---

## [v0.3.5] - 2025-12-25

### Added
- EP001 read-through log and script v2
  - `content/production/EP001-readthrough-log-v1.md` - Comprehensive read-through analysis
  - `content/scripts/EP001-ups-routing-script-v2.md` - Revised script with speakability improvements (~2,350 words, 15.5 min target)

### Changed
- Updated STATUS.md to reflect EP001 progress (Script Draft → Script v2 ready for recording test)

### Notes
- Read-through log identifies 10 priority edits and 3 top retention risks
- Script v2 improvements:
  - Better speakability (shorter sentences, clearer number delivery)
  - Reduced number density in Sections 1 and 6
  - More conversational language (less academic phrasing)
  - Added pattern interrupts and concrete examples
  - Better pacing distribution (15.5 min vs 16.5 min)
- All numeric claims still properly cited with [S#] markers
- Citation integrity verified — no new sources required

---

## [v0.3.4] - 2025-12-25

### Added
- EP001 full script draft with cited sources
  - `content/scripts/EP001-ups-routing-script-v1.md` - Full narration script (~2,480 words, 16.5 min target)
  - `content/sources/EP001-ups-orion-sources-v1.md` - Comprehensive source pack with 16 citations
  - `content/broll/EP001-ups-orion-broll-v1.md` - B-roll shot list (27 shots)
  - `content/graphics/EP001-ups-orion-graphics-v1.md` - Graphics and animations brief (10 graphics)
  - `content/production/EP001-readthrough-pacing-v1.md` - Read-through pacing plan and procedure

### Changed
- Updated STATUS.md to reflect EP001 progress (Outline → Script Draft)

### Notes
- All numeric claims in script are supported by cited sources
- Corrected several inaccuracies from outline (package volume, fleet size, mileage, timeline)
- Script includes source markers [S1]-[S16] for fact-checking
- Production artifacts ready for next phase (recording, B-roll acquisition, graphics production)

---

## [v0.3.3] - 2025-12-24

### Changed
- Clarified brand vs channel naming split in branding docs
  - Brand (visual identity): Case Study Library
  - Channel (content positioning): Quiet Business Machines
- Added `channel_name` field to `BRAND.yml`
- Added Naming section to `BRAND.md`

---

## [v0.3.2] - 2025-12-24

### Added
- Brand name decision evidence report

### Notes
- Canonical brand name confirmed: Case Study Library
- PR #6 (brand assets) verified and documented
- See `docs/ops/reports/saas202548-brand-name-case-study-library-2025-12-24.md`

---

## [v0.3.1] - 2025-12-24

### Added
- Selected logo asset pack for Case Study Library brand
  - Path: `docs/branding/assets/logo/selected/v1/`
  - Includes: source files, PNG exports (full/icon/wordmark), favicon, usage docs
- Brand documentation: `docs/branding/BRAND.yml`, `docs/branding/BRAND.md`
- Assets README: `docs/branding/assets/README.md`

### Changed
- Updated README.md with brand documentation links

---


## [v0.3.0] - 2025-12-24

### Added
- Kickoff baseline audit completed
- `docs/project/PROJECT-MEMORY-PACKET.md` - Quick-reference for repo onboarding
- `docs/ops/LOCAL-DEV-BOOTSTRAP.md` - Local environment setup guide
- `docs/ops/reports/saas202548-kickoff-audit-2025-12-24.md` - Full audit report

### Changed
- Updated STATUS.md with audit notes and pending decision (git remote)

### Notes
- Top risk identified: No git remote configured
- Recommended next PR: Configure GitHub/GitLab remote

---

## [v0.2.1] - 2025-12-24

### Added
- Systemarium master plan, design, and workflow document (v1)
  - Located at `docs/systemarium/systemarium-master-plan-design-workflow-v1.md`
  - Comprehensive plan covering: target outcomes, positioning, content strategy, format design, policy guardrails, operating model, analytics, monetization roadmap, and risk register
- Created `docs/systemarium/` directory for Systemarium project documentation
- Added Docs section to README.md linking to master plan

---


## [v0.2.0] - 2025-12-24

### Added
- Channel positioning: "Quiet Business Machines" - calm, sleepy documentaries about invisible business systems
- First 6 video episodes planned:
  - EP001: How UPS Turned Routing Into a Machine
  - EP002: The Quiet Rules Behind Credit Card Payments
  - EP003: Why Toyota's System Was Hard to Copy
  - EP004: The Rise and Fall of Blackberry (Slow Documentary)
  - EP005: How Big Retail Inventory Actually Works
  - EP006: The History of the Barcode (and Why It Won)
- Detailed episode briefs with research needed, key points, and visual approach
- Content pillars defined: Systems Explained, Quiet Histories, Behind the Machines
- "Sleepy" tone guidelines and voice characteristics

### Changed
- Updated README.md with channel name and positioning
- Updated STATUS.md with decisions made
- Updated CHANNEL-BRIEF.md with full positioning details

---

## [v0.1.0] - 2025-12-24

### Added
- Initial repository scaffold for YouTube channel operations
- Directory structure for docs, assets, templates, pipelines, tracking
- Core documentation files:
  - `README.md` - Project overview and usage
  - `STATUS.md` - Progress tracking and verification
  - `AI-UPGRADES-LOG.md` - AI-assisted changes log
  - `docs/CHANGELOG.md` - This file
- Operational documentation:
  - `docs/ops/ASSET-STORAGE.md` - External asset storage guidelines
  - `docs/ops/WEEKLY-RHYTHM.md` - Weekly operating cadence
  - `docs/ops/VERIFICATION-CHECKLIST.md` - Scaffold verification
- Content documentation:
  - `docs/content/CHANNEL-BRIEF.md` - Channel positioning
  - `docs/content/CONTENT-PIPELINE.md` - Production workflow
- Brand documentation:
  - `docs/brand/BRAND-KIT.md` - Visual identity guidelines
- Legal documentation:
  - `docs/legal/POLICY-GUARDRAILS.md` - Compliance requirements
- Templates:
  - `templates/scripts/script-template-v1.md`
  - `templates/descriptions/description-template-v1.md`
  - `templates/thumbnails/thumbnail-brief-template-v1.md`
- Checklists:
  - `pipelines/checklists/publish-checklist-v1.md`
- Tracking files:
  - `tracking/ideas/ideas.md`
  - `tracking/episodes/episodes.md`
  - `tracking/experiments/experiments.md`
- Prompts documentation:
  - `prompts/README.md` - Prompt usage guidelines

### Notes
- This is a content operations repo, not a software application
- Large video files should be stored externally per `docs/ops/ASSET-STORAGE.md`
- Scaffold is ready for channel owner to define positioning and first content
