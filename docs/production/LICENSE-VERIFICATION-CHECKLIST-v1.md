# License Verification Checklist (v1)

**Created:** 2025-12-25
**Status:** Active
**Scope:** Verify and document licensing for all production assets
**Reference:** See `content/production/EP001-asset-manifest-v1.md` for asset tracking

---

## Purpose

This checklist ensures that all production assets (stock footage, music, graphics tools, fonts, TTS voices) are properly licensed for commercial use on YouTube. It provides a standard procedure for capturing proof and updating the asset manifest.

---

## General Licensing Principles

### What Requires Verification:
- ✅ Stock footage (Pexels, Pixabay, Unsplash, paid stock)
- ✅ Music tracks (Epidemic Sound, YouTube Audio Library, Artlist)
- ✅ SFX (Freesound.org)
- ✅ Graphics tools (Canva, if using Pro features)
- ✅ TTS / Voice tools (ElevenLabs, editor voices, etc.)
- ✅ Fonts (if not system fonts or Google Fonts)

### What Does NOT Require Verification:
- ❌ Self-created content (own footage, own graphics from scratch)
- ❌ System fonts (Arial, Helvetica)
- ❌ Google Fonts (already open license)
- ❌ Public domain content (verify it's actually public domain)

---

## Proof Requirements (What to Capture)

For each asset, capture the following:

### 1. License Page Screenshot
- **What:** Screenshot of the license terms page
- **Why:** Terms can change; capture snapshot at time of use
- **Format:** PNG or PDF
- **Filename:** `<asset-id>-license-page-<YYYY-MM-DD>.png`
- **Example:** `BROLL-MVP-001a-license-page-2025-12-25.png`

### 2. Asset Download Page Screenshot
- **What:** Screenshot showing asset ID, download date, and license type
- **Why:** Proves which asset was downloaded and under what terms
- **Format:** PNG or PDF
- **Filename:** `<asset-id>-download-page-<YYYY-MM-DD>.png`

### 3. Subscription Receipt (If Paid)
- **What:** Email receipt or account screenshot showing active subscription
- **Why:** Proves paid tier was active at time of download
- **Format:** PDF or PNG
- **Filename:** `<service>-subscription-receipt-<YYYY-MM-DD>.pdf`
- **Example:** `epidemic-sound-subscription-receipt-2025-12-25.pdf`

### 4. License Summary (Plain English)
- **What:** Text file summarizing key license terms
- **Why:** Quick reference without parsing legal text
- **Format:** Markdown
- **Filename:** `<asset-id>-license-summary.md`
- **Template:** See below

---

## License Summary Template

Create a file: `content/production/licenses/<asset-id>/<asset-id>-license-summary.md`

```markdown
# License Summary: [Asset ID]

**Asset:** [Asset Name / Description]
**Source:** [Pexels / Pixabay / Epidemic Sound / etc.]
**Download Date:** [YYYY-MM-DD]
**License Type:** [Pexels License / Pixabay License / etc.]
**License URL:** [Link to license terms page]

## Commercial Use:
- **Allowed:** YES / NO
- **YouTube Monetization:** YES / NO
- **Attribution Required:** YES / NO
- **Modifications Allowed:** YES / NO

## Restrictions:
- [List any restrictions, e.g., "Cannot use in merchandise"]
- [Or "None" if no restrictions]

## Proof Captured:
- [X] License page screenshot
- [X] Download page screenshot
- [X] Subscription receipt (if paid)

## Notes:
- [Any additional context, e.g., "Free tier used, no subscription"]
```

---

## Folder Structure

Store all licensing proof in:

```
content/production/licenses/
├── <tool-name>/              # For tools/services (e.g., canva/, epidemic-sound/)
│   ├── <tool>-license-page-<YYYY-MM-DD>.png
│   ├── <tool>-subscription-receipt-<YYYY-MM-DD>.pdf
│   └── <tool>-license-summary.md
├── <asset-id>/               # For individual assets (e.g., BROLL-MVP-001a/)
│   ├── <asset-id>-license-page-<YYYY-MM-DD>.png
│   ├── <asset-id>-download-page-<YYYY-MM-DD>.png
│   └── <asset-id>-license-summary.md
└── README.md                 # Index of all licenses (auto-generated or manual)
```

**Example:**
```
content/production/licenses/
├── canva/
│   ├── canva-license-page-2025-12-25.png
│   ├── canva-subscription-receipt-2025-12-25.pdf
│   └── canva-license-summary.md
├── epidemic-sound/
│   ├── epidemic-sound-license-page-2025-12-25.png
│   ├── epidemic-sound-subscription-receipt-2025-12-25.pdf
│   └── epidemic-sound-license-summary.md
├── BROLL-MVP-001a/
│   ├── BROLL-MVP-001a-license-page-2025-12-25.png
│   ├── BROLL-MVP-001a-download-page-2025-12-25.png
│   └── BROLL-MVP-001a-license-summary.md
└── AUDIO-001/
    ├── AUDIO-001-license-page-2025-12-25.png
    ├── AUDIO-001-download-page-2025-12-25.png
    └── AUDIO-001-license-summary.md
```

---

## How to Fill Asset Manifest "Proof/Link" Column

In `content/production/EP001-asset-manifest-v1.md`, the "Proof/Link" column should reference:

**Before Acquisition:**
```markdown
| Asset ID | ... | License Status | Proof/Link | ... |
|----------|-----|----------------|------------|-----|
| BROLL-MVP-001a | ... | TBD | [link once acquired] | ... |
```

**After Acquisition:**
```markdown
| Asset ID | ... | License Status | Proof/Link | ... |
|----------|-----|----------------|------------|-----|
| BROLL-MVP-001a | ... | Verified | licenses/BROLL-MVP-001a/ | ... |
```

**Or with direct link:**
```markdown
| Asset ID | ... | License Status | Proof/Link | ... |
|----------|-----|----------------|------------|-----|
| BROLL-MVP-001a | ... | Verified | licenses/BROLL-MVP-001a/BROLL-MVP-001a-license-summary.md | ... |
```

---

## Music Fingerprint Risk Guidance

**Context:** YouTube Content ID may flag music even if properly licensed. This is a practical risk, not a legal one.

### Practical Checks (Not Guarantees):

1. **YouTube Audio Library:**
   - **Fingerprint Risk:** LOW (Google's own library, but false positives still possible)
   - **Practical Test:** Upload unlisted video with track, wait 24 hours, check for claims
   - **Mitigation:** Keep license screenshot + unlisted test video as proof

2. **Epidemic Sound:**
   - **Fingerprint Risk:** VERY LOW (Epidemic clears claims via whitelist)
   - **Practical Test:** Follow Epidemic's YouTube channel linking process
   - **Mitigation:** Link YouTube channel to Epidemic account BEFORE uploading

3. **Artlist:**
   - **Fingerprint Risk:** LOW (Artlist clears claims, but verify subscription is active)
   - **Practical Test:** Similar to Epidemic (link channel)
   - **Mitigation:** Keep subscription receipt + account screenshot

4. **Freesound.org:**
   - **Fingerprint Risk:** VARIES (depends on license type and track popularity)
   - **Practical Test:** Check track's license (CC0 = safest, CC BY = requires attribution)
   - **Mitigation:** Prefer CC0 tracks, add attribution in video description even if not required

### What to Do If Flagged:
1. **Dispute with proof:** Upload license screenshot + subscription receipt
2. **Mute audio:** If dispute fails, mute flagged section and replace track
3. **Re-upload:** If entire video is flagged, re-upload with different track

### What NOT to Claim:
- ❌ "Music is 100% safe from Content ID" (no such guarantee exists)
- ❌ "Licensed music cannot be claimed" (false positives happen)
- ✅ "Music is properly licensed; any claims will be disputed with proof" (accurate)

---

## Verification Checklist (Per Asset)

Use this checklist for each asset before marking "Verified" in asset manifest:

### For Stock Footage (Pexels, Pixabay, Unsplash, etc.):
- [ ] Captured license page screenshot
- [ ] Captured download page screenshot (showing asset ID)
- [ ] Created license summary (Markdown)
- [ ] Verified: "Commercial use: YES"
- [ ] Verified: "YouTube monetization: YES"
- [ ] Verified: "Attribution required: [YES/NO]"
- [ ] Stored all proof in `licenses/<asset-id>/`
- [ ] Updated asset manifest "Proof/Link" column
- [ ] Updated asset manifest "License Status" to "Verified"

### For Music (Epidemic Sound, YouTube Audio Library, etc.):
- [ ] Captured license page screenshot
- [ ] Captured subscription receipt (if paid service)
- [ ] Created license summary (Markdown)
- [ ] Verified: "YouTube monetization: YES"
- [ ] Linked YouTube channel (if required by service)
- [ ] Performed practical test (unlisted upload, wait 24h, check for claims)
- [ ] Stored all proof in `licenses/<asset-id>/`
- [ ] Updated asset manifest "Proof/Link" column
- [ ] Updated asset manifest "License Status" to "Verified"

### For Graphics Tools (Canva, PowerPoint, etc.):
- [ ] Captured license page screenshot (from tool's TOS)
- [ ] Captured subscription receipt (if using paid tier)
- [ ] Created license summary (Markdown)
- [ ] Verified: "Commercial use of created graphics: YES"
- [ ] Verified: "YouTube monetization: YES"
- [ ] Stored all proof in `licenses/<tool-name>/`
- [ ] No per-graphic proof needed (tool license covers all outputs)

### For TTS / Voice Tools:
- [ ] Captured license page screenshot (from tool's TOS)
- [ ] Captured subscription receipt (if using paid tier)
- [ ] Created license summary (Markdown)
- [ ] Verified: "Commercial use of generated voice: YES"
- [ ] Verified: "YouTube monetization: YES"
- [ ] Verified: "Attribution required: [YES/NO]"
- [ ] Stored all proof in `licenses/<tool-name>/`
- [ ] No per-render proof needed (tool license covers all outputs)

### For Fonts:
- [ ] System fonts (Arial, Helvetica): No verification needed
- [ ] Google Fonts (Roboto): No verification needed (open license)
- [ ] Other fonts: Capture license screenshot, verify commercial use

---

## Pre-Publish Final Check

Before publishing EP001 (or any episode), verify:

- [ ] All assets in manifest have "License Status" = "Verified" OR "N/A (own work)"
- [ ] All "TBD" entries have been resolved OR removed from final cut
- [ ] All "Proof/Link" cells reference actual proof files
- [ ] Spot-check 3 random assets: proof files exist and are complete
- [ ] If music is used: YouTube channel is linked (if required by service)
- [ ] If attribution is required: attribution text added to video description

---

## Common Pitfalls (Avoid These)

### ❌ Assuming "Free = No License Needed"
**Wrong:** "Pexels is free, so I don't need to check the license"
**Right:** "Pexels is free AND I've verified the license allows commercial use + captured proof"

### ❌ Trusting Verbal Summaries
**Wrong:** "Someone told me Canva Free allows commercial use"
**Right:** "I've read Canva's TOS and captured a screenshot of the relevant section"

### ❌ Ignoring License Changes
**Wrong:** "I captured proof once; it's valid forever"
**Right:** "I capture proof per asset, per download, because licenses can change"

### ❌ Skipping Proof for "Obvious" Assets
**Wrong:** "YouTube Audio Library is Google's; obviously it's safe"
**Right:** "I've captured proof and performed a practical test (unlisted upload)"

### ❌ Mixing Personal and Commercial Use
**Wrong:** "I use Canva Free for personal stuff, so I can use it for this channel"
**Right:** "I've verified Canva Free (or Pro) explicitly allows YouTube monetization"

---

## Next Actions (Priority Order)

1. **Create licenses folder:** `mkdir -p content/production/licenses`
2. **Verify tool licenses:** Canva, Epidemic Sound, TTS tool (once chosen)
3. **Verify stock footage:** Per-clip verification for Pexels, Pixabay, Unsplash
4. **Perform music tests:** Unlisted upload with YouTube Audio Library track (if used)
5. **Update asset manifest:** Fill "Proof/Link" and "License Status" columns
6. **Pre-publish check:** Run final verification checklist before EP001 publish

---

**Created:** 2025-12-25
**Last Updated:** 2025-12-25
**Next Review:** After EP001 asset acquisition
**Status:** Active
