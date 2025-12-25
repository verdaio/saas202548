# Project Memory Packet

> Quick-reference for anyone (human or AI) onboarding to this repo.

## Repo Identity

| Field | Value |
|-------|-------|
| **Repo Path** | `C:\devop\saas202548` |
| **Repo Name** | saas202548 (Quiet Business Machines) |
| **Type** | Content Operations Repository |
| **Default Branch** | `main` |
| **Remote** | Not configured |

## Purpose

This is a **content operations repository** for the **Quiet Business Machines** YouTube channel. It is **not** a software application.

The repo serves as an operational hub for:
- Planning and tracking video content
- Storing templates and checklists
- Maintaining brand consistency
- Documenting processes and learnings

## Primary Commands

Since this is a docs/content repo (not a software project), there are no build/test/lint commands.

| Task | Command |
|------|---------|
| Check repo status | `git status` |
| View episode tracker | Open `tracking/episodes/episodes.md` |
| View idea backlog | Open `tracking/ideas/ideas.md` |
| View publish checklist | Open `pipelines/checklists/publish-checklist-v1.md` |

## Local URLs / Ports

Not applicable. This repo contains no runnable services.

## External Services

| Service | Purpose | Location |
|---------|---------|----------|
| Google Drive | Asset storage (video files, exports) | `Quiet Business Machines/` folder |
| YouTube Studio | Channel management | [studio.youtube.com](https://studio.youtube.com) |

## Credentials / Seed Logins

**No credentials are stored in this repository.**

For access to external services:
- Google Drive: Request access from channel owner
- YouTube Studio: Request access from channel owner

## Key Invariants

1. **No video files in git**: Large assets (raw footage, exports, project files) are stored in Google Drive, not in this repo
2. **Template-driven workflow**: All episodes should use templates from `/templates/`
3. **Tracking required**: All episodes must be tracked in `/tracking/episodes/episodes.md`
4. **QA before publish**: Use `/pipelines/checklists/publish-checklist-v1.md` before publishing

## Verification Checklist

To verify repo health:

```powershell
# 1. Check git status
git status

# 2. Verify required files exist
Test-Path README.md
Test-Path STATUS.md
Test-Path AI-UPGRADES-LOG.md
Test-Path docs/CHANGELOG.md

# 3. Verify directory structure
Test-Path docs
Test-Path assets
Test-Path templates
Test-Path tracking
Test-Path pipelines
Test-Path prompts
```

## Key Documents

| Document | Path | Purpose |
|----------|------|---------|
| README | `README.md` | Repo overview |
| Status | `STATUS.md` | Current progress and verification |
| Changelog | `docs/CHANGELOG.md` | Version history |
| AI Log | `AI-UPGRADES-LOG.md` | AI-assisted changes |
| Channel Brief | `docs/content/CHANNEL-BRIEF.md` | Channel positioning |
| Content Pipeline | `docs/content/CONTENT-PIPELINE.md` | Production workflow |
| Policy Guardrails | `docs/legal/POLICY-GUARDRAILS.md` | Compliance rules |
| Asset Storage | `docs/ops/ASSET-STORAGE.md` | Where to store video files |
| Weekly Rhythm | `docs/ops/WEEKLY-RHYTHM.md` | Weekly cadence |

## Quick Start

1. Read `README.md` for repo overview
2. Check `STATUS.md` for current progress
3. Review episode tracker at `tracking/episodes/episodes.md`
4. Use templates from `/templates/` for new content
5. Follow checklists in `/pipelines/checklists/` for publishing
