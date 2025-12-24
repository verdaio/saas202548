# Content Pipeline

## Overview

This document defines the end-to-end workflow for producing YouTube videos, from idea to post-publish review.

```
Idea → Research → Outline → Script → Record → Edit → Thumbnail → Upload → Post-Publish
```

---

## Stage 1: Idea Intake

### Description
Capture and evaluate video ideas before committing resources.

### Activities
1. Log idea in `tracking/ideas/ideas.md`
2. Assign initial priority (High/Medium/Low)
3. Note source (viewer request, trend, personal insight)
4. Quick viability check against Channel Brief

### Artifacts
- Entry in `tracking/ideas/ideas.md`

### Definition of Done
- [ ] Idea logged with ID, title, angle
- [ ] Priority assigned
- [ ] Passes topic boundary check

---

## Stage 2: Research

### Description
Validate the idea and gather supporting material.

### Activities
1. Check if topic already covered (by us or competitors)
2. Identify unique angle or value-add
3. Gather source material, references, examples
4. Estimate effort (simple/medium/complex)

### Artifacts
- Research notes (can be inline in tracking or separate doc)
- Source links

### Definition of Done
- [ ] Unique angle identified
- [ ] Key sources collected
- [ ] Effort estimated
- [ ] Go/no-go decision made

---

## Stage 3: Outline

### Description
Structure the video before writing the full script.

### Activities
1. Define hook (first 30 seconds)
2. List main sections/chapters
3. Identify key points per section
4. Plan call-to-action

### Artifacts
- Outline document (can use `templates/scripts/script-template-v1.md`)

### Definition of Done
- [ ] Hook defined
- [ ] 3-7 main sections identified
- [ ] Key points listed
- [ ] CTA planned

---

## Stage 4: Script

### Description
Write the full script or detailed talking points.

### Activities
1. Expand outline into full script
2. Time estimate (target length)
3. Mark screen recordings or B-roll needs
4. Internal review (read aloud, check flow)

### Artifacts
- Full script file
- B-roll/screen recording shot list

### Definition of Done
- [ ] Script complete
- [ ] Estimated runtime within target
- [ ] Screen recording needs identified
- [ ] Read-aloud test passed

---

## Stage 5: Record

### Description
Capture video and audio.

### Activities
1. Set up recording environment
2. Record main content (talking head, screen, or both)
3. Record B-roll if needed
4. Check audio levels and video quality

### Artifacts
- Raw video files (stored externally per ASSET-STORAGE.md)
- Recording session notes

### Definition of Done
- [ ] All planned content recorded
- [ ] Audio is clear, no major issues
- [ ] Video is in focus, properly lit
- [ ] Files backed up to secondary location

---

## Stage 6: Edit

### Description
Assemble and polish the final video.

### Activities
1. Rough cut: assemble clips in order
2. Fine cut: trim dead air, mistakes
3. Add overlays, graphics, lower thirds
4. Add music (licensed) and sound effects
5. Color correction if needed
6. Export review version

### Artifacts
- Project file (stored externally)
- Review export (low-res for internal check)
- Final export (full resolution)

### Definition of Done
- [ ] Rough and fine cut complete
- [ ] Graphics and overlays added
- [ ] Audio balanced and clean
- [ ] Review export watched fully
- [ ] Final export rendered

---

## Stage 7: Thumbnail

### Description
Create the video thumbnail.

### Activities
1. Draft thumbnail concept using `templates/thumbnails/thumbnail-brief-template-v1.md`
2. Create or commission thumbnail
3. A/B test options if possible
4. Final selection

### Artifacts
- Thumbnail brief
- Final thumbnail file (PNG, 1280x720 minimum)

### Definition of Done
- [ ] Concept approved
- [ ] Thumbnail created at correct resolution
- [ ] Text is readable at small sizes
- [ ] High contrast and click-worthy

---

## Stage 8: Upload

### Description
Upload video and configure YouTube settings.

### Activities
1. Upload video file to YouTube (unlisted or scheduled)
2. Write title (use research for SEO)
3. Write description using `templates/descriptions/description-template-v1.md`
4. Add tags
5. Add chapters (timestamps)
6. Set thumbnail
7. Configure end screen and cards
8. Enable/check captions
9. Add pinned comment if planned
10. Complete `pipelines/checklists/publish-checklist-v1.md`

### Artifacts
- YouTube video (scheduled or live)
- Completed publish checklist

### Definition of Done
- [ ] Video uploaded
- [ ] Title, description, tags complete
- [ ] Chapters added
- [ ] Thumbnail set
- [ ] End screen and cards configured
- [ ] Captions enabled
- [ ] Publish checklist 100% complete

---

## Stage 9: Post-Publish Review

### Description
Monitor performance and capture learnings.

### Activities
1. Check initial metrics (24h, 48h, 7d)
2. Respond to comments
3. Note what worked and what didn't
4. Update `tracking/episodes/episodes.md` with retro notes
5. Archive project files

### Artifacts
- Retro notes in episode tracker
- Performance snapshot (optional: in `docs/reports/`)

### Definition of Done
- [ ] 7-day metrics reviewed
- [ ] Early comments responded to
- [ ] Retro notes logged
- [ ] Project files archived

---

## Pipeline Summary Table

| Stage | Key Artifact | DoD Items |
|-------|--------------|-----------|
| 1. Idea | ideas.md entry | Logged, prioritized, boundary-checked |
| 2. Research | Notes + sources | Angle found, go/no-go decided |
| 3. Outline | Outline doc | Hook + sections + CTA defined |
| 4. Script | Script file | Complete, timed, reviewed |
| 5. Record | Raw files | Content captured, backed up |
| 6. Edit | Final export | Polished, reviewed, rendered |
| 7. Thumbnail | PNG file | Created, readable, high contrast |
| 8. Upload | YouTube video | All metadata complete, checklist done |
| 9. Review | Retro notes | Metrics reviewed, learnings logged |
