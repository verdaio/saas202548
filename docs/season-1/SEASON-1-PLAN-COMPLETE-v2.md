# Case Study Library — Season 1 Plan Complete v2 (Expert Review Fixes Applied)

**Project**
- **Name:** Case Study Library
- **Repo:** `C:\devop\saas202548`
- **Status:** PLANNING COMPLETE (Season 1 v2) — fixes applied from expert review
- **Principle:** Maintain a repeatable weekly machine with credibility-first guardrails.

---

## What changed from v1 → v2 (applied)
1) Season timeline clarified as **20-week minimum** (20 episodes) with explicit phases.
2) Buffer policy upgraded to **2–3 buffer-ready episodes by Week 6**.
3) Script length bands corrected for 15/20/25 minutes and will be calibrated after EP001 export.
4) Pillar B safety tightened: **Safe Subset first**, stricter sourcing, and a high-risk language checklist.
5) Rights-safe visual sourcing SOP added (maps/logos/photos/screenshots).
6) Captions minimum correction standard added (names, acronyms, numbers, meaning changes).
7) Claims process split into **Critical vs Narrative** to prevent research grind.
8) EP001–EP004 publish order explicitly locked.
9) One-page **Style Constitution** added (typography/color/map/icon/source-tag rules).
10) SEO/Discovery SOP added (description, pinned comment, end screens, playlists).
11) Metrics section upgraded with **numeric bands (draft)** + iteration rules.
12) Signature frameworks locked (recurring structure every episode).

---

# 0) Season 1 Definition (LOCKED)

- **Season 1 = 20 longform episodes** published at **1/week** (minimum **20 weeks**).
- Season 1 is scope-based (20 episodes), not calendar-based.
- **Content pillars:** Logistics "Invisible Machines" (10) + Failures That Teach (10), with Pillar B gated.

---

# 1) Phased Execution Map (LOCKED)

## Phase 0 — Week 0 (Setup gate)
- Resolve hardware gate test logged PASS/FAIL
- Azure Speech + Key Vault verified
- Voice bake-off done; voice frozen
- Asset pack templates built and frozen
- Tracker created and active
- EP000 buffer meets Minimum Viable Pack definition

## Phase 1 — Weeks 1–4 (Logistics ramp; lock the machine)
- Publish EP001–EP004 (locked order below)
- 3–5 Shorts per week + 1 community post/week
- Weekly review ritual executed
- Claims + QA gates executed without exception

## Phase 2 — Weeks 5–8 (Scale logistics; build buffer inventory)
- Publish EP005–EP008 (Logistics)
- Create **two additional buffer-ready "Lite" episodes** by end of Week 6 (EP00A, EP00B)
- Begin Pillar B research only if Pillar B Safety Gate passes

## Phase 3 — Weeks 9–20 (Season completion)
- Finish Logistics EP009–EP010
- Start Pillar B only after Safety Gate, using Safe Subset ordering first
- Maintain packaging discipline (one major variable/week)

---

# 2) Locked Publish Order (Weeks 1–4) (LOCKED)

- **Week 1:** EP001 — UPS ORION and the "no left turns" logic
- **Week 2:** EP002 — Last-mile economics: why delivery is expensive
- **Week 3:** EP003 — Amazon same-day delivery (sortation + last mile)
- **Week 4:** EP004 — Why route plans fail in real life (humans + constraints)

---

# 3) Buffer Policy (Upgraded) (LOCKED)

## 3.1 Buffer inventory requirement
- By end of **Week 6**, have **2–3 buffer-ready episodes**:
  - EP000 (already defined)
  - EP00A (Lite)
  - EP00B (Lite)

## 3.2 Lite episode definition (4-hour emergency format)
- Mechanism-heavy, low numbers, strong diagrams
- 12–16 minutes (shorter than flagship)
- 2–3 diagrams + 1 map schematic
- Minimal rights risk visuals (house-made graphics)

## 3.3 "Shorts-only week" contingency (allowed, bounded)
If a week breaks:
- Publish **no longform**, but ship:
  - 5 Shorts
  - 1 community post
  - Update tracker with reason
- Next week: publish buffer episode to re-stabilize cadence

---

# 4) Script Length Bands (Corrected) (LOCKED as baseline; calibrate after EP001)

## 4.1 Word count bands (narration)
- **15 minutes:** 2,000–2,600 words
- **20 minutes:** 2,600–3,200 words
- **25 minutes:** 3,200–4,000 words

## 4.2 Calibration rule
After EP001 export:
- Record actual WPM for chosen voice (including pauses).
- Update bands in v3 if needed (version bump required).

---

# 5) Research System SOP v2 (LOCKED)

## 5.1 Source rubric (unchanged; summarized)
- Tier 1 Primary (filings, gov reports, company technical docs, peer-reviewed)
- Tier 2 High-quality secondary (reputable journalism, credible books, reputable industry reports)
- Tier 3 Tertiary (not allowed for critical)

## 5.2 Claims system split: Critical vs Narrative (NEW, LOCKED)

### Critical claims (strict)
Critical = numbers, precise dates, causality, safety/regulatory implications, or thesis-central.
- Require **two sources** OR a single authoritative primary that directly states it.
- Must have on-screen source tags if shown as a key-stat.

### Narrative claims (lighter)
Mechanisms and framing that are not specific numbers/dates/causality.
- Require at least **one Tier 1 or Tier 2** source, or broad consensus.
- Still recorded in `claims.md`, but marked `Critical=NO`.

**Why:** prevents research grind while keeping credibility for what matters.

---

# 6) Rights-Safe Visual Sourcing SOP (NEW, LOCKED)

## 6.1 Default visual stack (in order)
1) **House-made visuals:** diagrams, maps, icons, overlays (preferred)
2) **Public domain / government visuals:** with attribution
3) **Licensed stock:** only if license is clear and stored
4) **Company logos/screenshots:** limited, factual, used as identifiers, with attribution

## 6.2 Maps policy (LOCKED)
- Prefer schematic maps you draw (pins/paths) over copying map tiles.
- If using map imagery/tiles, use a provider whose license allows it and follow attribution rules.
- Keep map overlays minimal: highlight flows, not detailed cartography.

## 6.3 Logos/screenshots policy (LOCKED)
- Use only when necessary to identify entities or show documented interfaces.
- Never imply endorsement.
- Avoid prolonged logo display; keep it contextual.

## 6.4 Receipts and licensing storage (LOCKED)
- Store receipts and license links in the media warehouse:
  - `...\library\receipts-licenses\`
- Each episode `sources.md` includes a "Visual credits" section when applicable.

---

# 7) Captions Minimum Standard (NEW, LOCKED)

- Use YouTube auto captions.
- Minimum correction pass required:
  - Names
  - Acronyms
  - Numbers
  - Any caption that changes meaning
- Target time: 5–10 minutes per episode, not optional.

---

# 8) Style Constitution (One Page) (NEW, LOCKED)

Purpose: prevent drift across episodes.

## 8.1 Typography
- One font family for Season 1 (to be selected when asset pack is built).
- Title/Chapter/Body/Source tag sizes follow the 1080p baseline.

## 8.2 Color + density
- Calm palette; avoid neon/saturated alerts.
- High contrast for readability; muted backgrounds.
- Source tag always in same corner and style.

## 8.3 Icon + diagram language
- Simple geometric icons; consistent stroke weight.
- Diagrams use the same arrow style, node shapes, and spacing.

## 8.4 Map style
- Schematic maps with minimal detail.
- Emphasize flow lines and nodes; keep background subdued.

## 8.5 Stat callout pattern
- One dominant number (if used)
- One supporting label
- Tiny source tag in consistent placement

---

# 9) SEO / Discovery SOP (NEW, LOCKED)

## 9.1 Description structure (standard)
- 2–3 sentence hook summary
- "What you'll learn" (3 bullets)
- "Key ideas" (optional bullets)
- "Sources" bibliography (links)
- Corrections line ("If you spot an error, share a source and we'll correct it.")

## 9.2 Pinned comment template
- One-sentence takeaway
- Link to Sources section (or highlight 2–3 key sources)
- Next episode tease

## 9.3 End screens and playlists
- End screen: latest video + playlist
- Assign exactly one primary playlist per episode

---

# 10) Metrics Bands (Draft) + Decision Policy (Upgraded) (LOCKED v1; refine after 4 uploads)

These are not promises; they are guardrails to prevent random changes.

## 10.1 Draft bands (first 8 weeks)
- **CTR:**
  - Low: < 2%
  - Okay: 2–5%
  - Good: > 5%
- **Early retention (first 30–60 seconds):**
  - Weak: big drop before 60s
  - Okay: stabilizes after early hook
- **Average view duration (AVD):**
  - Weak: < 30% of video
  - Okay: 30–45%
  - Strong: > 45%

## 10.2 Decision policy (one change/week)
- Strong retention + weak CTR → change **thumbnail** first.
- Weak retention early → change **hook structure**, not packaging.
- Both weak → adjust topic framing/angle (next episode).

**Rule:** change only one major variable per week.

---

# 11) Signature Frameworks (NEW, LOCKED)

Every episode must explicitly cover these four sections (can be implicit in chapters, but must exist):

1) **What the system optimizes**
2) **Constraints that matter**
3) **Failure modes / where it breaks**
4) **Tradeoffs and who pays**

This is the channel's "explanatory moat."

---

# 12) Pillar B Safety Gate v2 (Upgraded) (LOCKED)

## 12.1 Gate prerequisites (unchanged + clarified)
Pillar B may begin only after:
- 4 Logistics episodes published with consistent QA
- Research SOP executed successfully at least twice
- Corrections policy in place
- Buffer inventory is at least EP000 + one additional Lite episode

## 12.2 Pillar B Safe Subset ordering (NEW)
Start with lower-defamation-risk, high-primary-source cases first:
1) Target Canada (supply chain/data collapse)
2) Hershey ERP peak season failure
3) MoviePass pricing math failure
4) Quibi product-market mismatch
5) Nokia / BlackBerry incumbency case studies (careful sourcing)

Higher-risk topics deferred later in the pillar:
- Boeing 737 MAX
- Theranos
- WeWork (manageable but requires careful language)

## 12.3 High-risk language checklist (required)
Before publish:
- No motive speculation
- No accusations without documents
- Causal claims only if supported by authoritative sources
- Clear "reported/according to" phrasing and scope

Chris remains required reviewer.

---

# 13) Season 1 Remaining Items (Updated Definitive List)

These are the remaining items still to add (planning or repo scaffolding), now updated after v2 fixes.

## 13.1 Planning items still missing (need to add)
1) **Episode numbering policy (public vs internal)** and naming conventions in titles.
2) Final **Channel thesis paragraph** + About page copy (one paragraph + 3 bullets).
3) Final **playlist governance rules** (when to create new playlists, naming).
4) **Visual library sources list** (approved icon pack source, approved map approach).
5) **Topic pivot triggers** after 8 weeks (exact rule: what would force a pivot).
6) **Contractor handoff packet** (future; minimal safe delegation list).
7) **Automation roadmap** (post Week 2 stabilization).
8) **Season 1 retrospective template** (end of season).

## 13.2 Repo additions to implement later (execution scaffolding)
- Create directories and skeleton files (EP000–EP004)
- Create tracker file
- Create corrections log file
- Create ops reports folder
- Create Voice Freeze Record file

---

## Change Control
- This plan is **LOCKED** as **Season 1 Plan Complete v2**.
- Any changes require a version bump and rationale.
