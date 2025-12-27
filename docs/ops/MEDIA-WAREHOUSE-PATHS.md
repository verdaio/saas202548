# Media Warehouse Paths

## Purpose

This document defines the local media warehouse convention for SaaS202548. The media warehouse stores audio files, video exports, and other media artifacts that must NOT be committed to git.

## Base Path

**Local base path:** `C:\devop\media\saas202548\`

## Structure Convention

Media files are organized by:
- **Purpose:** `tts-bakeoff`, `final-audio`, `video-exports`, etc.
- **Date:** YYYY-MM-DD folders for temporal organization

Example:
```
C:\devop\media\saas202548\
  ├── tts-bakeoff\
  │   ├── 2025-12-26\
  │   │   ├── manifest.json
  │   │   └── ep001-excerpt__*.wav
  │   └── 2026-01-15\
  ├── final-audio\
  │   └── ep001\
  └── video-exports\
```

## Rules

1. **No media in git:** Audio, video, and large media files must NEVER be committed to the repository
2. **Store receipts/exports/audio locally:** All generated media goes into the warehouse
3. **Keep manifests in repo:** Text-based manifest files (JSON, Markdown) that reference media are committed
4. **Include date folders:** Use YYYY-MM-DD format for temporal organization
5. **Retention note:** Media in the warehouse should be backed up externally if valuable; local warehouse is not the source of truth for production assets

## Manifest Convention

For each media generation run:
- Create a JSON manifest in the media warehouse folder: `manifest.json`
- Create a repo-side pointer in `content/production/*/MANIFEST.md` that:
  - Documents the warehouse path
  - Summarizes what was generated
  - Reminds that audio files are not in git
  - Links to any relevant decision records

## Safety

All tools that write media must verify that the output directory is NOT within the git repository root before writing files.
