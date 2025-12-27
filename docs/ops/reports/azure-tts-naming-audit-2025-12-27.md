# Azure TTS Naming Audit Report
## Case Study Library (saas202548)

**Audit Date:** 2025-12-27
**Auditor:** Claude Code (automated audit)
**Standard Version:** Verdaio Azure Naming Standard v1.2
**Standard Location:** `C:\devop\new-template-system\.template-system-v2\docs\security\AZURE-NAMING-CONVENTIONS.md`

---

## Executive Summary

**Finding:** No Azure TTS resources exist for project 202548 yet. Previously proposed names (from phase0 report) are **NON-COMPLIANT** with the Verdaio Azure Naming Standard.

**Recommendation:** Adopt compliant naming before provisioning any Azure resources.

**Status:** ✓ NO MIGRATION NEEDED — Resources can be created with compliant names from the start

---

## 1. Naming Standard Discovery

### Canonical Standard Found

**Location:** `C:\devop\new-template-system\.template-system-v2\docs\security\AZURE-NAMING-CONVENTIONS.md`

**Version:** 1.2 (Last Updated: 2025-12-08)

**Global Pattern:**
```
{type}-{org}-{proj}-{env}-{region}-{slice}-{seq}
```

**Tokens for saas202548:**
- `{org}`: `vrd` (Verdaio)
- `{proj}`: `202548` (extracted from projectID last 6 chars)
- `{env}`: `dev`, `stg`, `prd` (standardized environment codes)
- `{region}`: `eus2` (East US 2), `cus` (Central US), etc.
- `{seq}`: `01`, `02`, etc. (sequence number)

### Resource Type Patterns

| Resource Type | Abbreviation | Pattern | Max Length |
|---------------|--------------|---------|------------|
| Resource Group | `rg` | `rg-{org}-{proj}-{env}-{region}` | - |
| Key Vault | `kv` | `kv-{org}-{proj}-{env}-{seq}` | 24 chars |
| Storage Account | `st` | `st{org}{proj}{env}{region}{seq}` (no hyphens) | 24 chars |
| Log Analytics | `log` | `log-{org}-{proj}-{env}-{region}` | - |
| App Insights | `appi` | `appi-{org}-{proj}-{env}-{region}` | - |
| Cognitive Services | `cog` | `cog-{org}-{proj}-{env}-{region}-{seq}` ⚠ (inferred) | - |

⚠ **Note:** Cognitive Services (Speech) abbreviation not explicitly defined in standard. Using `cog` as inferred pattern based on Azure conventions.

### Tagging Requirements

All resources must have these tags:

| Tag | Example Value |
|-----|---------------|
| `Org` | `vrd` |
| `Project` | `202548` |
| `Environment` | `development` or `production` |
| `Owner` | `chris.stephens@verdaio.com` |
| `CostCenter` | `202548-llc` |
| `CreatedDate` | `2025-12-27` |

---

## 2. Azure Resource Inventory

### Current State

**Subscription:** Azure subscription 1 (Verdaio tenant)

**Existing Resources for Project 202548:** NONE

```
az group list --query "[?contains(name, '202548')]" -o table
# Result: (empty)

az cognitiveservices account list --query "[?contains(name, '202548')]" -o table
# Result: (empty)

az keyvault list --query "[?contains(name, '202548')]" -o table
# Result: (empty)
```

**Other Projects in Subscription:**
- Project 202524 (dev environment): Resource groups, Key Vault, Storage, PostgreSQL, etc.
- Project 202546 (stg environment): Resource groups, Key Vault, Storage, App Service, etc.

**Conclusion:** No migration needed. Resources can be created with compliant names from the start.

---

## 3. Compliance Audit

### Previously Proposed Names (Phase 0 Report — 2025-12-26)

From `docs/ops/reports/phase0-setup-gate-azure-voice-bakeoff-2025-12-26.md`:

| Resource Type | Proposed Name | Status |
|---------------|---------------|--------|
| Resource Group | `rg-saas202548-prodops` | ✗ Never created |
| Key Vault | `kv-saas202548-prodops` | ✗ Never created |
| Speech Service | `spch-saas202548-prodops` | ✗ Never created |

### Compliance Analysis

| Proposed Name | Compliant? | Issues |
|---------------|-----------|---------|
| `rg-saas202548-prodops` | ✗ NO | 1. Missing `{org}` token (`vrd`)<br>2. Full projectID instead of code (`saas202548` vs `202548`)<br>3. Non-standard env (`prodops` vs `dev/stg/prd`)<br>4. Missing `{region}` token |
| `kv-saas202548-prodops` | ✗ NO | Same issues as above + missing sequence number |
| `spch-saas202548-prodops` | ✗ NO | Same issues + non-standard resource type abbreviation |

**Root Cause:** Proposed names do not follow the Verdaio Azure Naming Standard v1.2.

---

## 4. Compliant Naming Proposal

### Assumptions

- **Environment:** `dev` (minimum baseline per prompt)
- **Region:** `eus2` (East US 2, default per phase0 report)
- **Owner:** `chris.stephens@verdaio.com`
- **Cost Center:** `202548-llc` (inferred from project code)

### Proposed Compliant Names

#### Development Environment (dev)

| Resource Type | Compliant Name | Length | Pattern Applied |
|---------------|----------------|--------|-----------------|
| Resource Group | `rg-vrd-202548-dev-eus2` | 23 chars | `rg-{org}-{proj}-{env}-{region}` |
| Key Vault | `kv-vrd-202548-dev-01` | 20 chars | `kv-{org}-{proj}-{env}-{seq}` ✓ (< 24) |
| Speech Service | `cog-vrd-202548-dev-eus2-01` | 27 chars | `cog-{org}-{proj}-{env}-{region}-{seq}` |
| Storage Account | `stvrd202548deveus201` | 20 chars | `st{org}{proj}{env}{region}{seq}` ✓ (< 24) |
| Log Analytics | `log-vrd-202548-dev-eus2` | 24 chars | `log-{org}-{proj}-{env}-{region}` |
| App Insights | `appi-vrd-202548-dev-eus2` | 25 chars | `appi-{org}-{proj}-{env}-{region}` |

#### Staging Environment (stg) — Optional

| Resource Type | Compliant Name |
|---------------|----------------|
| Resource Group | `rg-vrd-202548-stg-eus2` |
| Key Vault | `kv-vrd-202548-stg-01` |
| Speech Service | `cog-vrd-202548-stg-eus2-01` |

#### Production Environment (prd) — Optional

| Resource Type | Compliant Name |
|---------------|----------------|
| Resource Group | `rg-vrd-202548-prd-eus2` |
| Key Vault | `kv-vrd-202548-prd-01` |
| Speech Service | `cog-vrd-202548-prd-eus2-01` |

### Proposed Compliant Tags

```json
{
  "Org": "vrd",
  "Project": "202548",
  "Environment": "development",
  "Owner": "chris.stephens@verdaio.com",
  "CostCenter": "202548-llc",
  "CreatedDate": "2025-12-27"
}
```

---

## 5. Migration Plan

### Status: NOT REQUIRED

**Reason:** No Azure resources exist for project 202548. Resources can be created with compliant names immediately.

### Recommended Actions

1. **Update PowerShell script** (`tools/tts/azure-speech-bakeoff.ps1`):
   - Change default `-VaultName` from `kv-saas202548-prodops` to `kv-vrd-202548-dev-01`

2. **Update phase0 report** (`docs/ops/reports/phase0-setup-gate-azure-voice-bakeoff-2025-12-26.md`):
   - Document naming standard compliance
   - Replace proposed names with compliant names

3. **Create Azure resources** with compliant names (after approval):
   ```bash
   # Resource Group
   az group create \
     --name rg-vrd-202548-dev-eus2 \
     --location eastus2 \
     --tags Org=vrd Project=202548 Environment=development Owner=chris.stephens@verdaio.com CostCenter=202548-llc CreatedDate=2025-12-27

   # Key Vault
   az keyvault create \
     --name kv-vrd-202548-dev-01 \
     --resource-group rg-vrd-202548-dev-eus2 \
     --location eastus2 \
     --enable-rbac-authorization true \
     --tags Org=vrd Project=202548 Environment=development Owner=chris.stephens@verdaio.com CostCenter=202548-llc CreatedDate=2025-12-27

   # Speech Service (Cognitive Services)
   az cognitiveservices account create \
     --name cog-vrd-202548-dev-eus2-01 \
     --resource-group rg-vrd-202548-dev-eus2 \
     --kind SpeechServices \
     --sku S0 \
     --location eastus2 \
     --tags Org=vrd Project=202548 Environment=development Owner=chris.stephens@verdaio.com CostCenter=202548-llc CreatedDate=2025-12-27
   ```

4. **Store secrets in Key Vault**:
   ```bash
   # Retrieve Speech keys
   az cognitiveservices account keys list \
     --name cog-vrd-202548-dev-eus2-01 \
     --resource-group rg-vrd-202548-dev-eus2

   # Store in Key Vault (replace <KEY> with actual key)
   az keyvault secret set \
     --vault-name kv-vrd-202548-dev-01 \
     --name azure-speech-key \
     --value "<KEY>"

   az keyvault secret set \
     --vault-name kv-vrd-202548-dev-01 \
     --name azure-speech-region \
     --value "eastus2"
   ```

---

## 6. Speech Service Abbreviation Recommendation

### Issue

The Verdaio Azure Naming Standard v1.2 does not explicitly define an abbreviation for Azure Cognitive Services / Speech Services.

### Analysis

**Options:**
1. **`cog`** — Generic Cognitive Services (aligns with Azure service family)
2. **`spch`** — Specific to Speech Services (more descriptive)
3. **`speech`** — Full word (violates 2-4 char abbreviation guideline)

**Recommendation:** Use **`cog`** for consistency with Azure service taxonomy.

**Rationale:**
- Azure Speech is part of Azure Cognitive Services
- Other Cognitive Services might be added later (Vision, Language, etc.)
- `cog` allows for multiple cognitive service types under the same naming pattern
- Consistent with other multi-service abbreviations like `psql` (PostgreSQL)

### Proposed Standard Update

Add to `AZURE-NAMING-CONVENTIONS.md` (if propagated to template system):

```markdown
| Cognitive Services | `cog` | `cog-{org}-{proj}-{env}-{region}-{seq}` | `cog-vrd-202548-prd-eus2-01` |
```

---

## 7. Resource Inventory Table

| Resource Type | Required? | Exists? | Current Name | Compliant Name | Compliant? | Migration? |
|---------------|-----------|---------|--------------|----------------|-----------|------------|
| Resource Group | Yes | No | - | `rg-vrd-202548-dev-eus2` | N/A | Create new |
| Speech Service | Yes | No | - | `cog-vrd-202548-dev-eus2-01` | N/A | Create new |
| Key Vault | Yes | No | - | `kv-vrd-202548-dev-01` | N/A | Create new |
| Storage Account | Optional | No | - | `stvrd202548deveus201` | N/A | Not needed yet |
| Log Analytics | Optional | No | - | `log-vrd-202548-dev-eus2` | N/A | Not needed yet |
| App Insights | Optional | No | - | `appi-vrd-202548-dev-eus2` | N/A | Not needed yet |

**Legend:**
- **Required?** — Minimum baseline for TTS functionality
- **Exists?** — Current Azure state
- **Compliant?** — N/A (no existing resources to audit)
- **Migration?** — Action required

---

## 8. Verification Evidence

### Preflight Checks

```bash
# Git status
git status
# Output: On branch ops/phase0-setup-gate-azure-voice-bakeoff-v1, working tree clean

# Azure CLI version
az version
# Output: azure-cli: 2.77.0

# Azure account
az account show
# Output: Azure subscription 1 (Verdaio tenant)
```

### Resource Discovery

```bash
# Resource groups for 202548
az group list --query "[?contains(name, '202548')]" -o table
# Output: (empty)

# Cognitive Services for 202548
az cognitiveservices account list --query "[?contains(name, '202548')]" -o table
# Output: (empty)

# Key Vaults for 202548
az keyvault list --query "[?contains(name, '202548')]" -o table
# Output: (empty)

# All resource groups (for context)
az group list --query "[].name" -o tsv
# Output:
# rg-vrd-202524-dev-eus2-net
# rg-vrd-202524-dev-eus2-data
# rg-vrd-202524-dev-eus2-app
# NetworkWatcherRG
# rg-tfstate-verdaio-eastus2-01
# rg-vrd-202546-stg-eus2-data
# rg-vrd-202546-stg-eus2-net
# rg-vrd-202546-stg-eus2-app
```

---

## 9. Compliance Summary

### Findings

✓ **PASS** — Canonical Azure Naming Standard found
✓ **PASS** — No existing resources to migrate
✗ **FAIL** — Previously proposed names are non-compliant
✓ **PASS** — Compliant names proposed and validated

### Recommendations

1. **Adopt compliant naming** before provisioning Azure resources
2. **Update automation scripts** to use compliant Key Vault name
3. **Propagate Speech Service abbreviation** (`cog`) to template system standard
4. **Document tagging requirements** in resource provisioning scripts

---

## 10. Template System Propagation Recommendation

### Proposed Update

**File to update:** `C:\devop\new-template-system\.template-system-v2\docs\security\AZURE-NAMING-CONVENTIONS.md`

**Section:** Common Resource Types (after line 62)

**Addition:**
```markdown
| Cognitive Services | `cog` | `cog-{org}-{proj}-{env}-{region}-{seq}` | `cog-vrd-202548-prd-eus2-01` |
| App Insights | `appi` | `appi-{org}-{proj}-{env}-{region}` | `appi-vrd-202548-prd-eus2` |
```

**Rationale:**
- Cognitive Services (including Speech) are common Azure resources
- App Insights is widely used for observability
- These additions standardize naming across Verdaio projects

**Do not propagate yet.** Wait for explicit approval from Chris.

---

## 11. Next Steps

### Immediate (No Approval Needed)

- [x] Audit complete
- [x] Compliant names proposed
- [x] Documentation created

### Awaiting Approval

- [ ] Approve compliant naming scheme (dev environment)
- [ ] Approve Speech Service abbreviation (`cog`)
- [ ] Approve Azure resource provisioning

### After Approval

- [ ] Update `tools/tts/azure-speech-bakeoff.ps1` with compliant Key Vault name
- [ ] Provision Azure resources with compliant names
- [ ] Store secrets in Key Vault
- [ ] Update phase0 report with compliant resource details
- [ ] Run bake-off runner to test TTS
- [ ] Update AI-UPGRADES-LOG, CHANGELOG, STATUS

---

## Sign-off

**Audit Date:** 2025-12-27
**Audit Scope:** Azure TTS naming compliance for saas202548
**Standard Applied:** Verdaio Azure Naming Standard v1.2
**Status:** ✓ AUDIT COMPLETE — Awaiting approval for compliant resource provisioning

**Prepared by:** Claude Code (automated audit)

---
