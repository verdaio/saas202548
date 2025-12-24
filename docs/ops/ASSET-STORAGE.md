# Asset Storage Guidelines

## Overview

Large video files, raw footage, and high-resolution assets are NOT stored in this Git repository. This document describes where these files live and how they are referenced.

## Storage Locations

### Primary Storage (TO BE CONFIGURED)

| Asset Type | Location | Naming Convention |
|------------|----------|-------------------|
| Raw Footage | `[TBD: local drive or cloud]` | `YYYY-MM-DD_episode-id_description` |
| Exported Videos | `[TBD: local drive or cloud]` | `episode-id_version_platform` |
| Project Files | `[TBD: local drive or cloud]` | `episode-id_project-name` |
| Audio Masters | `[TBD: local drive or cloud]` | `episode-id_audio-type` |

### Recommended Options

1. **Local External Drive**
   - Pros: Fast access, no subscription cost, offline capable
   - Cons: No built-in backup, single point of failure
   - Recommended for: Active projects, editing workflow

2. **Cloud Storage (Google Drive / OneDrive / Dropbox)**
   - Pros: Backup, accessible anywhere, shareable
   - Cons: Sync times, subscription cost for large storage
   - Recommended for: Archived footage, backups

3. **Hybrid Approach (Recommended)**
   - Active projects on local drive
   - Completed episodes archived to cloud
   - Weekly backup of local to cloud

## Referencing Assets in Tracking Files

When referencing external assets in `tracking/episodes/episodes.md`:

```
| EP001 | Title | Stage | Date | `D:\video\EP001\` | Notes |
```

Always use:
- Consistent folder naming: `EPXXX` prefix
- Full path or relative path from storage root
- Date-stamped subfolders for versions if needed

## Backup Policy (TO BE CONFIGURED)

| Frequency | What | Where |
|-----------|------|-------|
| Daily | Active project files | [TBD] |
| Weekly | All footage | [TBD] |
| Monthly | Full archive | [TBD] |

## Action Required

Before publishing first video, decide:
1. [ ] Primary storage location
2. [ ] Backup destination
3. [ ] Naming convention confirmation
4. [ ] Backup frequency
