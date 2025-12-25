# Branding Naming Split Evidence Report

**Report Date:** 2025-12-24
**Repo:** `verdaio/saas202548`
**Agent:** Claude Code (Claude Opus 4.5)
**Prompt Reference:** `cc-saas202548-branding-naming-split-template-propagation-v1.md` (Workstream 1)

---

## Summary

This change clarifies the explicit naming split between the **brand** (visual identity) and the **channel** (content positioning) in the repo's branding documentation.

| Type | Name | Purpose |
|------|------|---------|
| **Brand** | Case Study Library | Logo, visual assets, branding |
| **Channel** | Quiet Business Machines | YouTube channel name, content tone |

---

## Files Changed

| Path | Change |
|------|--------|
| `docs/branding/BRAND.yml` | Added `channel_name: "Quiet Business Machines"` field |
| `docs/branding/BRAND.md` | Added Naming section explaining the two-name convention |
| `docs/CHANGELOG.md` | Added v0.3.3 entry |
| `AI-UPGRADES-LOG.md` | Added v0.3.3 entry |
| `STATUS.md` | Bumped version to v0.3.3, added Brand Name row, added note |

---

## Verification Checklist

| Check | Result |
|-------|--------|
| `Test-Path docs\branding\BRAND.yml` | PASS |
| `Test-Path docs\branding\BRAND.md` | PASS |
| `BRAND.yml` contains "Case Study Library" | PASS |
| `BRAND.yml` contains "Quiet Business Machines" | PASS |
| `BRAND.md` contains "Case Study Library" | PASS |
| `BRAND.md` contains "Quiet Business Machines" | PASS |

**Overall:** All 6 checks PASS

---

## Non-Goals (Intentionally Not Changed)

1. **Historical evidence reports** under `docs/ops/reports/` were not modified
2. **Logo asset paths** remain unchanged (`docs/branding/assets/logo/selected/v1/`)
3. **Systemarium references** were not changed (separate project document)
4. **Episode/content docs** referencing "Quiet Business Machines" as channel name were not changed (correct usage)

---

## Key Rule Documented

> Do not rename logo assets when the channel name changes. Assets are versioned under `selected/v1/` and should remain stable. To update branding, create a new version (`v2/`) rather than overwriting.

---

## Evidence Commands

```powershell
# Verification checks
Test-Path docs\branding\BRAND.yml                                    # True
Test-Path docs\branding\BRAND.md                                     # True

# Brand name verification
Select-String -Path docs\branding\BRAND.yml -Pattern "Case Study Library" -SimpleMatch
# docs\branding\BRAND.yml:5:brand_name: "Case Study Library"

Select-String -Path docs\branding\BRAND.yml -Pattern "Quiet Business Machines" -SimpleMatch
# docs\branding\BRAND.yml:8:channel_name: "Quiet Business Machines"

Select-String -Path docs\branding\BRAND.md -Pattern "Case Study Library" -SimpleMatch
# docs\branding\BRAND.md:3:> Brand identity documentation for Case Study Library.

Select-String -Path docs\branding\BRAND.md -Pattern "Quiet Business Machines" -SimpleMatch
# docs\branding\BRAND.md:14:| **Channel** (content positioning) | Quiet Business Machines | ...
```
