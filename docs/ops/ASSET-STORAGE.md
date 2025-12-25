# Asset Storage Guidelines

## Overview

Large video files, raw footage, and high-resolution assets are NOT stored in this Git repository. This document describes where these files live and how they are referenced.

## Storage Location: Google Drive

**Primary Storage**: Google Drive

### Folder Structure

```
Google Drive/
└── Quiet Business Machines/
    ├── _Assets/
    │   ├── Brand/           # Logos, fonts, color swatches
    │   ├── Music/           # Licensed music files
    │   ├── SFX/             # Sound effects
    │   └── Stock/           # Stock footage, images
    ├── EP001-UPS-Routing/
    │   ├── Raw/             # Raw footage, screen recordings
    │   ├── Project/         # Editor project files
    │   ├── Exports/         # Rendered versions
    │   └── Assets/          # Episode-specific assets
    ├── EP002-Credit-Cards/
    │   └── ...
    └── Archive/             # Completed episodes (final only)
```

### Asset Types and Locations

| Asset Type | Location | Naming Convention |
|------------|----------|-------------------|
| Raw Footage | `EPXXX/Raw/` | `YYYY-MM-DD_description.mp4` |
| Project Files | `EPXXX/Project/` | `EPXXX_project-name.prproj` |
| Exports | `EPXXX/Exports/` | `EPXXX_v01_platform.mp4` |
| Audio | `EPXXX/Assets/` | `EPXXX_audio-type.wav` |
| Thumbnails | `EPXXX/Assets/` | `EPXXX_thumbnail_v01.png` |

## Naming Conventions

### Episode Folders
```
EP001-UPS-Routing/
EP002-Credit-Cards/
EP003-Toyota-System/
EP004-Blackberry/
EP005-Retail-Inventory/
EP006-Barcode-History/
```

### Export Versions
```
EP001_v01_youtube.mp4      # First export
EP001_v02_youtube.mp4      # Revision
EP001_v01_youtube_4k.mp4   # 4K version
EP001_final_youtube.mp4    # Final approved
```

## Referencing Assets in Tracking Files

When referencing external assets in `tracking/episodes/episodes.md`:

```
| EP001 | Title | Stage | Date | `GDrive/Quiet Business Machines/EP001-UPS-Routing/` | Notes |
```

## Backup Policy

| Frequency | What | Where |
|-----------|------|-------|
| Continuous | All files | Google Drive (auto-sync) |
| Weekly | Project files | Local backup drive (optional) |
| Per-publish | Final exports | YouTube (published) + GDrive Archive |

### Archival Process

After publishing:
1. Move final export to `Archive/EPXXX/`
2. Keep project files in episode folder (for potential revisions)
3. Raw footage can be deleted after 90 days if storage needed

## Google Drive Setup Checklist

- [x] Primary storage location decided: Google Drive
- [ ] Create `Quiet Business Machines` folder
- [ ] Create `_Assets` subfolder with Brand, Music, SFX, Stock
- [ ] Create `EP001-UPS-Routing` folder structure
- [ ] Install Google Drive for Desktop (for local sync)
- [ ] Verify sufficient storage quota

## Notes

- Google Drive for Desktop recommended for faster editing workflow
- Consider 2TB plan if producing weekly content long-term
- Keep episode folders even after archiving for future reference
