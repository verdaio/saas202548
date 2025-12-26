# TTS/AI Voice Licensing Evidence (Hash-Based)

**Purpose:** Document licensing verification for TTS tools used in production
**Policy:** Public repo safety — hash-based evidence instead of committed screenshots
**Created:** 2025-12-25

---

## Why Hash-Based Evidence?

This repository is **public**. We cannot commit:
- Screenshots of account dashboards
- Receipts or invoices
- Logged-in pages showing email addresses, account IDs, or payment info
- Any files that might reveal personal or financial information

**But** we still need to prove we verified licensing terms.

**Solution:** Store proof files **locally** (outside git tracking) and commit a **cryptographic hash** of those files as evidence.

---

## How It Works

### 1. Capture Proof Locally

When you verify a TTS tool's licensing terms, capture proof files and save them **locally only** (not in this repo):

**Recommended local storage:**
- `C:\Users\[YourName]\Documents\saas202548-licenses\tts\`
- Or a secure cloud folder (Google Drive, OneDrive, etc.)

**What to capture:**
- Screenshot of the tool's terms of service page
- Screenshot of your subscription/plan page
- Screenshot of the section that mentions "commercial use" or "YouTube"
- Copy of invoice/receipt (if purchased)
- Date-stamped notes summarizing the key terms

**File naming convention:**
- `[toolKey]-terms-YYYY-MM-DD.png`
- `[toolKey]-plan-YYYY-MM-DD.png`
- `[toolKey]-receipt-YYYY-MM-DD.pdf`
- `[toolKey]-notes-YYYY-MM-DD.txt`

Example:
- `elevenlabs-terms-2025-12-25.png`
- `elevenlabs-plan-2025-12-25.png`
- `elevenlabs-receipt-2025-12-25.pdf`

---

### 2. Compute SHA256 Hashes

For each proof file, compute a SHA256 hash:

**PowerShell (Windows):**
```powershell
Get-FileHash -Path "C:\path\to\elevenlabs-terms-2025-12-25.png" -Algorithm SHA256
```

**Bash (Mac/Linux):**
```bash
sha256sum /path/to/elevenlabs-terms-2025-12-25.png
```

**Output example:**
```
SHA256: a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2
```

---

### 3. Create Evidence Record (Committed to Repo)

For each TTS tool, create a subdirectory:
```
content/production/licenses/tts/[toolKey]/evidence-record-v1.md
```

Example:
```
content/production/licenses/tts/elevenlabs/evidence-record-v1.md
content/production/licenses/tts/clipchamp/evidence-record-v1.md
content/production/licenses/tts/capcut/evidence-record-v1.md
```

**Template:** See `evidence-record-template.md` below.

---

## Evidence Record Template

Copy this template to `content/production/licenses/tts/[toolKey]/evidence-record-v1.md`:

```markdown
# License Evidence Record: [Tool Name]

**Tool Key:** [toolKey]
**Tool Name:** [Full Tool Name]
**Verification Date:** [YYYY-MM-DD]
**Verified By:** [Your Name]
**Status:** VERIFIED / UNVERIFIED

---

## License Summary

**License Type:** [e.g., "Free tier", "Pro subscription", "Creator plan"]
**Commercial Use:** YES / NO / UNCLEAR
**YouTube Monetization:** YES / NO / UNCLEAR
**Attribution Required:** YES / NO / UNCLEAR

**Key Terms (short summary, not verbatim):**
- [e.g., "Commercial use allowed on Creator plan and above"]
- [e.g., "YouTube monetization explicitly permitted"]
- [e.g., "No attribution required for generated audio"]

**Limitations/Restrictions:**
- [e.g., "Free tier limited to 10,000 characters/month"]
- [e.g., "Audio must be used in combination with video/images (no standalone audio)"]

**UNVERIFIED Flags:**
- [ ] None — all terms explicitly stated
- [ ] [Flag if any terms are unclear or implied but not explicit]

---

## Evidence Sources

**Official URLs Checked:**
1. Terms of Service: [URL]
2. Pricing Page: [URL]
3. License/Usage Policy: [URL]
4. FAQ or Help Docs: [URL]

**Date Checked:** [YYYY-MM-DD]

---

## Proof Files (Local Only, Not Committed)

**Local Storage Path:** [e.g., `C:\Users\...\saas202548-licenses\tts\elevenlabs\`]

| File Name | SHA256 Hash | Date Captured | Description |
|-----------|-------------|---------------|-------------|
| `[toolKey]-terms-YYYY-MM-DD.png` | `[64-char hash]` | [YYYY-MM-DD] | Screenshot of Terms of Service |
| `[toolKey]-plan-YYYY-MM-DD.png` | `[64-char hash]` | [YYYY-MM-DD] | Screenshot of subscription plan page |
| `[toolKey]-receipt-YYYY-MM-DD.pdf` | `[64-char hash]` | [YYYY-MM-DD] | Receipt/invoice (if applicable) |
| `[toolKey]-notes-YYYY-MM-DD.txt` | `[64-char hash]` | [YYYY-MM-DD] | Summary notes |

**How to verify proof files:**
If you need to verify that the local proof files haven't been tampered with, recompute the SHA256 hash and compare to the hash listed above.

---

## Notes

[Add any additional context, warnings, or observations about this tool's licensing]

---

## Related Docs

- Decision framework: `docs/production/AI-VOICE-DECISION-v1.md`
- Decision results: `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`
- License verification procedure: `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md`
```

---

## Why This Approach?

**Transparency:** Anyone can see we checked licensing terms and when.
**Privacy:** No sensitive account info is exposed in a public repo.
**Auditability:** SHA256 hashes prove the evidence existed at the time of decision.
**Integrity:** If proof files are modified, the hash will change (detectable tampering).

---

## Verification Workflow

1. **Before choosing a tool:** Capture proof files locally
2. **Compute hashes:** Use PowerShell or Bash to generate SHA256 hashes
3. **Create evidence record:** Use template above, fill in hashes and URLs
4. **Commit evidence record:** Add to git, push to repo
5. **Keep proof files safe:** Store locally in a backed-up location

**Do NOT commit:**
- Actual screenshots
- Actual receipts/invoices
- Any file containing personal info

**Do commit:**
- Evidence record with hashes
- URLs checked
- Summary of terms (non-copyright, your own words)

---

## Directory Structure

```
content/production/licenses/tts/
├── README.md (this file)
├── elevenlabs/
│   └── evidence-record-v1.md
├── clipchamp/
│   └── evidence-record-v1.md
├── capcut/
│   └── evidence-record-v1.md
└── [other-tools]/
    └── evidence-record-v1.md
```

---

## Related Files

- **License verification checklist:** `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md`
- **TTS decision framework:** `docs/production/AI-VOICE-DECISION-v1.md`
- **TTS decision results:** `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`
- **Tools registry:** `content/production/TOOLS-REGISTRY-v1.yml`
