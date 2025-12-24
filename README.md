# saas202548 — YouTube Video Channel

A content operations repository for managing a YouTube video channel with deterministic workflows, governance, and documentation.

## What This Repo Is

This is **not** a software application. It is an operational hub for:
- Planning and tracking video content
- Storing templates and checklists
- Maintaining brand consistency
- Documenting processes and learnings

All large video files (raw footage, exports, project files) are stored externally. See [`docs/ops/ASSET-STORAGE.md`](docs/ops/ASSET-STORAGE.md) for storage guidelines.

## Content Positioning

**Intended Audience**: [TBD - to be defined by channel owner]

**Content Focus**: [TBD - to be defined by channel owner]

**Content Principles**:
- Advertiser-friendly (no shock content, controversy bait, or policy violations)
- Educational and/or entertaining value
- Honest, no misleading claims
- Properly attributed sources and licensed assets

## Repository Layout

```
saas202548/
├── docs/
│   ├── ops/          # Operational docs (asset storage, verification, weekly rhythm)
│   ├── brand/        # Brand guidelines and kit
│   ├── content/      # Channel brief, content pipeline
│   ├── legal/        # Policy guardrails, compliance
│   └── reports/      # Performance reports, retrospectives
├── assets/           # Small assets tracked in git (brand files, thumbnails)
│   ├── brand/        # Logos, fonts, color swatches
│   ├── thumbnails/   # Final thumbnail files
│   ├── overlays/     # Video overlays and graphics
│   ├── broll/        # Stock footage references (not raw files)
│   └── audio/        # Audio references (not raw files)
├── templates/
│   ├── scripts/      # Video script templates
│   ├── descriptions/ # Description templates
│   └── thumbnails/   # Thumbnail brief templates
├── pipelines/
│   ├── checklists/   # Publish checklists, QA checklists
│   └── prompts/      # AI prompts for content generation
├── prompts/          # Repo-local prompts for AI-assisted workflows
└── tracking/
    ├── ideas/        # Video idea backlog
    ├── episodes/     # Episode tracker
    └── experiments/  # A/B tests and experiments
```

## Weekly Operating Cadence

See [`docs/ops/WEEKLY-RHYTHM.md`](docs/ops/WEEKLY-RHYTHM.md) for the full weekly workflow.

**Summary**:
- **Monday**: Review last week, plan this week, update tracking
- **Tuesday-Thursday**: Execute (script, record, edit)
- **Friday**: Final review, schedule publish
- **Weekend**: Publish goes live, light engagement
- **Daily**: 15-minute minimum habit (even if just notes)

## How to Propose a Video

1. Add idea to [`tracking/ideas/ideas.md`](tracking/ideas/ideas.md)
2. If approved, create episode entry in [`tracking/episodes/episodes.md`](tracking/episodes/episodes.md)
3. Use [`templates/scripts/script-template-v1.md`](templates/scripts/script-template-v1.md) for writing
4. Follow [`pipelines/checklists/publish-checklist-v1.md`](pipelines/checklists/publish-checklist-v1.md) before publishing

## Verification Checklist

This repo uses verification evidence to confirm scaffold integrity:

| Check | Status |
|-------|--------|
| Git repo initialized | See `STATUS.md` |
| Branch is `main` | See `STATUS.md` |
| Required docs exist | See `STATUS.md` |
| Directory structure complete | See `STATUS.md` |
| Templates exist | See `STATUS.md` |
| Tracking files exist | See `STATUS.md` |
| No secrets present | Spot-checked |

Full verification evidence is in [`STATUS.md`](STATUS.md) under "Verification Evidence".

## Key Documents

- [`STATUS.md`](STATUS.md) - Current project status and verification
- [`docs/CHANGELOG.md`](docs/CHANGELOG.md) - Version history
- [`AI-UPGRADES-LOG.md`](AI-UPGRADES-LOG.md) - AI-assisted changes log
- [`docs/content/CHANNEL-BRIEF.md`](docs/content/CHANNEL-BRIEF.md) - Channel positioning
- [`docs/content/CONTENT-PIPELINE.md`](docs/content/CONTENT-PIPELINE.md) - Full workflow
- [`docs/legal/POLICY-GUARDRAILS.md`](docs/legal/POLICY-GUARDRAILS.md) - Compliance rules
