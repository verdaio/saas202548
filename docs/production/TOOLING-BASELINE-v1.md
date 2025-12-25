# Production Tooling Baseline (v1) — EP001-Ready

**Created:** 2025-12-25
**Status:** Active
**Scope:** Research → Script → AI Voice → Visuals → Edit → Publish
**Evidence-Based:** All decisions reference existing repo artifacts

---

## Purpose

This document formalizes the production tooling baseline for "Quiet Business Machines" (saas202548), establishing:
- **Default tools** for each production stage
- **Fallback options** when defaults are unavailable
- **Input/output formats** and storage locations
- **Risk notes** for licensing, quality, and vendor lock-in

This baseline is **EP001-ready** (immediately actionable) while maintaining flexibility for future episodes.

---

## Evidence Notes

This baseline is derived from the following repo artifacts:

**Production Pack (PR #12):**
- `content/graphics/EP001-ups-orion-graphics-v2.md` - Specifies PowerPoint/Keynote, Canva, Google Slides for MVP graphics
- `content/broll/EP001-ups-orion-broll-v2.md` - Specifies Pexels, Pixabay, Unsplash (free), Storyblocks, Artgrid (paid)
- `content/production/EP001-asset-manifest-v1.md` - Specifies Epidemic Sound, YouTube Audio Library, Freesound.org, system fonts
- `content/production/EP001-recording-test-plan-v1.md` - References recording procedure but does not specify TTS vs human voice

**Channel Documentation:**
- `docs/legal/POLICY-GUARDRAILS.md` - Music licensing policy (YouTube Audio Library, Epidemic Sound, Artlist)
- `docs/content/CHANNEL-BRIEF.md` - Voice characteristics ("calm, sleepy" tone)
- `docs/ops/ASSET-STORAGE.md` - Google Drive structure (Music/, SFX/, Stock/, Exports/)

**Project Infrastructure:**
- `.gitignore` - Excludes `renders/` folder (implies local render output)
- Git commit history (PRs #8-#12) - No explicit video editor or TTS tool mentioned

**Key Finding:** Graphics and stock footage sources are well-defined. **Voice/narration and video editing tools are NOT yet explicitly chosen.**

---

## 6-Stage Production Pipeline

### Stage 1: Research

**Current Evidence:**
- EP001 used web research + citations (`content/sources/EP001-ups-orion-sources-v1.md`)
- WebSearch and WebFetch tools used during script creation (per AI-UPGRADES-LOG v0.3.4)

**Decision:**
- **Default:** Manual web research + AI-assisted search (Claude Code with WebSearch/WebFetch)
- **Fallback:** Manual research with browser + note-taking app
- **Inputs:** Topic brief, research questions
- **Outputs:** Source pack (Markdown) → `content/sources/<episode>-sources-v1.md`
- **Storage:** Sources stored in repo (text-only, no downloads)

**Risks:**
- ⚠️ Source link rot (mitigate: capture snapshots via Wayback Machine if critical)
- ⚠️ Fact-checking dependencies (mitigate: cross-reference multiple sources)

---

### Stage 2: Structure

**Current Evidence:**
- EP001 created outline before script (`content/scripts/EP001-ups-routing-outline-v1.md`)
- Outline includes section breakdown, B-roll notes, key points

**Decision:**
- **Default:** Markdown outline in repo
- **Fallback:** N/A (Markdown is baseline)
- **Inputs:** Research findings, topic brief
- **Outputs:** Outline (Markdown) → `content/scripts/<episode>-outline-v1.md`
- **Storage:** Repo

**Risks:**
- None (low-tech, version-controlled)

---

### Stage 3: Script

**Current Evidence:**
- EP001 script v2 created as Markdown with [S#] citation markers
- Scripts include B-roll cues, fact-check boxes, on-screen text callouts
- Read-through pacing plan exists (`content/production/EP001-readthrough-pacing-v2.md`)

**Decision:**
- **Default:** Markdown script with inline citations
- **Fallback:** N/A (Markdown is baseline)
- **Inputs:** Outline, source pack
- **Outputs:** Script (Markdown) → `content/scripts/<episode>-script-v2.md`
- **Storage:** Repo
- **Process:** Draft → Read-through → Revision → Recording test → Lock

**Risks:**
- None (low-tech, version-controlled)

---

### Stage 4: AI Voice / Narration

**Current Evidence:**
- ⚠️ **NOT EXPLICITLY CHOSEN YET**
- Recording test plan exists but does not specify TTS vs human voice
- Channel positioning: "calm, sleepy" tone (per `docs/content/CHANNEL-BRIEF.md`)
- Scripts reference "recording" and "voiceover" (generic terms)

**Decision:**
- **Default:** **TBD** (See `AI-VOICE-DECISION-v1.md` for evaluation framework)
- **Fallback:** Manual recording (human voice) with home studio setup
- **Inputs:** Locked script (Markdown)
- **Outputs:** Audio file (WAV or MP3) → `content/production/renders/<episode>-voice-v1.wav`
- **Storage:** Repo folder: `content/production/renders/` (local), Google Drive: `<Episode>/Audio/` (archive)

**Risks:**
- ⚠️ **BLOCKER:** Cannot proceed with voice rendering until tool is chosen
- ⚠️ Quality consistency (TTS may vary; human voice requires recording discipline)
- ⚠️ Licensing clarity (some TTS tools restrict commercial use — **UNVERIFIED**)
- ⚠️ Mispronunciation risk (TTS may struggle with technical terms, numbers)

**Next Action:**
- [ ] Review `AI-VOICE-DECISION-v1.md` and choose default TTS tool OR commit to manual recording
- [ ] Verify licensing terms for chosen tool (capture proof in `content/production/licenses/voice-tool/`)

---

### Stage 5: Visuals (Graphics + B-Roll)

**Current Evidence:**
- **Graphics:** PowerPoint/Keynote, Canva, Google Slides (MVP tier per `content/graphics/EP001-ups-orion-graphics-v2.md`)
- **Stock Footage:** Pexels, Pixabay, Unsplash (free); Storyblocks, Artgrid (paid fallback)
- **Self-Shot:** Documented in B-roll v2 (5 self-shoot candidates for EP001 MVP)
- **Fonts:** Arial/Helvetica (system), Roboto (Google Fonts)

**Decision:**

#### 5a) Graphics/Animations
- **Default:** PowerPoint/Keynote (for animations), Canva (for static graphics)
- **Fallback:** Google Slides (free alternative)
- **Avoided for MVP:** After Effects (complexity/time)
- **Inputs:** Graphics brief (`content/graphics/<episode>-graphics-v2.md`)
- **Outputs:** MP4 (1080p, 30fps) OR PNG sequence → `content/production/renders/<episode>-graphic-<id>.mp4`
- **Storage:** Source files (PPTX/Canva) in Google Drive: `<Episode>/Graphics/Source/`, Exports in Google Drive: `<Episode>/Graphics/Exports/`

**Risks:**
- ⚠️ PowerPoint animation limitations (mitigate: keep MVP animations simple)
- ⚠️ Canva licensing (**UNVERIFIED** — need to confirm commercial use rights for free vs Pro tier)

#### 5b) B-Roll/Stock Footage
- **Default:** Pexels, Pixabay, Unsplash (free stock)
- **Fallback:** Storyblocks or Artgrid (paid, if free options insufficient)
- **Self-Shoot:** Per B-roll v2 plan (5 MVP shots for EP001)
- **Inputs:** B-roll shot list (`content/broll/<episode>-broll-v2.md`)
- **Outputs:** MP4 clips → `<Episode>/B-Roll/` (Google Drive)
- **Storage:** Google Drive only (not in repo due to file size)

**Risks:**
- ⚠️ Stock footage licensing variations (mitigate: verify each clip's license, document in asset manifest)
- ⚠️ Pexels/Pixabay license changes (**UNVERIFIED** — need to capture license snapshots)

#### 5c) Music/SFX
- **Default:** Epidemic Sound (subscription) OR YouTube Audio Library (free)
- **Fallback:** Artlist (subscription), Freesound.org (SFX only)
- **Inputs:** Music selection notes (per script tone)
- **Outputs:** MP3/WAV → `<Episode>/Audio/Music/` (Google Drive)
- **Storage:** Google Drive only (not in repo due to file size + licensing)

**Risks:**
- ⚠️ YouTube Audio Library fingerprint risk (**UNVERIFIED** — practical check: test upload unlisted video)
- ⚠️ Epidemic Sound commercial use terms (**UNVERIFIED** — need to verify subscription tier allows monetized YouTube)

---

### Stage 6: Edit / Publish

**Current Evidence:**
- ⚠️ **NOT EXPLICITLY CHOSEN YET**
- `.gitignore` excludes `renders/` folder (implies local render output)
- Asset storage doc mentions "Exports/" folder in Google Drive
- Publish checklist exists (`pipelines/checklists/publish-checklist-v1.md`) but does not specify editor

**Decision:**
- **Default:** **TBD** (Candidate tools: DaVinci Resolve, CapCut, Clipchamp — not yet chosen)
- **Fallback:** Manual export from any video editor → standardized format
- **Inputs:** Voice audio, graphics, B-roll, music, script (for captions)
- **Outputs:** Final video (MP4, 1080p, H.264) → `<Episode>/Exports/<episode>-final-v1.mp4` (Google Drive)
- **Storage:** Google Drive: `<Episode>/Exports/`, Local: `renders/` (excluded from repo)

**Risks:**
- ⚠️ **BLOCKER:** Cannot formalize export workflow until editor is chosen
- ⚠️ Lock-in risk (some editors have proprietary project files)
- ⚠️ Learning curve (DaVinci Resolve = powerful but steep; CapCut = fast but limited)

**Next Action:**
- [ ] Choose default video editor based on: export quality, caption workflow, learning curve, cost
- [ ] Document export presets (resolution, bitrate, codec) for consistency

---

## Tool Decisions We Have NOT Made Yet

### 1. AI Voice / TTS Tool (BLOCKER for EP001)
**Status:** NOT CHOSEN
**Impact:** Cannot render voiceover until decided
**Options Under Consideration:** See `AI-VOICE-DECISION-v1.md` for evaluation framework
**Next Action:**
- [ ] Review AI-VOICE-DECISION-v1.md evaluation rubric
- [ ] Test 3 candidate tools with EP001 script excerpt (60 seconds)
- [ ] Verify licensing for commercial use
- [ ] Choose default + document in TOOLS-REGISTRY-v1.yml

### 2. Video Editor (BLOCKER for EP001)
**Status:** NOT CHOSEN
**Impact:** Cannot finalize edit workflow or export settings
**Candidates:** DaVinci Resolve (free, professional), CapCut (fast, beginner-friendly), Clipchamp (browser-based)
**Next Action:**
- [ ] Test caption workflow in each candidate editor
- [ ] Test export quality and file size
- [ ] Choose default + document export presets

### 3. Licensing Verification for Existing Tools
**Status:** UNVERIFIED
**Impact:** Risk of copyright issues if assumptions are wrong
**Tools Needing Verification:**
- Canva (free vs Pro tier commercial use)
- Pexels/Pixabay (license snapshots for each clip)
- Epidemic Sound (subscription tier allows YouTube monetization)
- YouTube Audio Library (fingerprint risk)
**Next Action:**
- [ ] Capture license screenshots/receipts
- [ ] Document in `content/production/licenses/<tool-name>/`
- [ ] Update asset manifest with proof links

---

## Folder Structure (Repo + Google Drive)

### Repo Structure (Text Files Only):
```
content/
  ├── sources/           # Research source packs (Markdown)
  ├── scripts/           # Scripts (Markdown)
  ├── broll/             # B-roll shot lists (Markdown, NOT raw files)
  ├── graphics/          # Graphics briefs (Markdown, NOT raw files)
  └── production/
      ├── renders/       # Voice/graphics exports (local only, .gitignore'd)
      └── licenses/      # License proof (screenshots, receipts, PDFs)
          ├── <tool-name>/
          └── <asset-id>/
```

### Google Drive Structure (Large Files):
```
Quiet Business Machines/
  └── <Episode-ID>/
      ├── Audio/
      │   ├── Voice/      # Rendered voiceover
      │   └── Music/      # Background music + SFX
      ├── B-Roll/         # Stock footage + self-shot clips
      ├── Graphics/
      │   ├── Source/     # PPTX, Canva files
      │   └── Exports/    # MP4, PNG exports
      └── Exports/        # Final rendered video
```

---

## Decision Gates (When Can We Proceed?)

### ✅ Can Start Now:
- Research (Stage 1)
- Structure (Stage 2)
- Script (Stage 3)
- Graphics creation (Stage 5a)
- Stock footage sourcing (Stage 5b)

### ⚠️ Blocked Until Tool Chosen:
- **Voice rendering (Stage 4)** — Blocked until TTS tool or manual recording process is decided
- **Final edit (Stage 6)** — Blocked until video editor is chosen

### 🔒 Blocked Until Licensing Verified:
- Canva graphics (need Pro tier verification if using paid features)
- Epidemic Sound music (need subscription tier confirmation)
- Stock footage (need per-clip license documentation)

---

## Next Steps (Priority Order)

1. **AI Voice Decision** (BLOCKER) — Review `AI-VOICE-DECISION-v1.md`, test tools, choose default
2. **Video Editor Decision** (BLOCKER) — Test candidates, choose default, document export presets
3. **License Verification** (RISK MITIGATION) — Capture proof for Canva, Pexels, Epidemic Sound, YouTube Audio Library
4. **Recording Test** — Run EP001 recording test using chosen voice tool (per `content/production/EP001-recording-test-plan-v1.md`)
5. **Asset Acquisition** — Source stock footage, create graphics, select music (per EP001 MVP plan)

---

**Created:** 2025-12-25
**Last Updated:** 2025-12-25
**Next Review:** After EP001 voice and editor decisions
**Status:** Active (with 2 blockers)
