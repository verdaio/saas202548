# Azure TTS Dev Environment Provisioning Report
## Case Study Library (saas202548)

**Provisioning Date:** 2025-12-27
**Environment:** Development (dev)
**Region:** East US 2 (eastus2)
**Standard:** Verdaio Azure Naming Standard v1.2
**Status:** PARTIAL — Resources created; RBAC blocker prevents secret storage

---

## Executive Summary

**Completed:**
- ✓ Resource Group created with compliant tags
- ✓ Key Vault created with RBAC authorization
- ✓ Speech Service created (SKU: S0)
- ✓ All resources follow Verdaio naming standard v1.2

**Blocker:**
- ✗ Azure CLI role assignment fails with "MissingSubscription" error
- ✗ Cannot store secrets in Key Vault (permission denied)
- **Manual intervention required:** Assign "Key Vault Secrets Officer" role via Azure Portal

**Next Steps:**
1. Manual: Assign RBAC role via Azure Portal
2. Store Speech API key and region in Key Vault
3. Update repo tooling with final resource names
4. Run verification (TTS test synthesis)

---

## Final Resource Names

### Naming Compliance

**Key Vault Naming Exception Applied:**
- Standard pattern: `kv-{org}-{proj}-{env}-{region}-{seq}` → `kv-vrd-202548-dev-eus2-01` (26 chars, exceeds 24-char limit)
- **Standard exception:** Omit region token → `kv-vrd-202548-dev-01` (20 chars) ✓
- **Source:** `C:\devop\new-template-system\.template-system-v2\docs\security\AZURE-NAMING-CONVENTIONS.md` (lines 79-88)

**Deviation from Human-Proposed Name:**
- Proposed: `kv-vrd-202548-dev-eu2-01` (compressed region)
- **Applied:** `kv-vrd-202548-dev-01` (region omitted, per standard)
- **Rationale:** Standard example shows region omission, not compression

### Resource Inventory

| Resource Type | Name | Location | Status | Notes |
|---------------|------|----------|--------|-------|
| Resource Group | `rg-vrd-202548-dev-eus2-tts-01` | eastus2 | ✓ Created | Includes `-tts` slice for clarity |
| Key Vault | `kv-vrd-202548-dev-01` | eastus2 | ✓ Created | RBAC enabled; region omitted (24-char limit) |
| Speech Service | `cog-vrd-202548-dev-eus2-tts-01` | eastus2 | ✓ Created | SKU: S0; includes `-tts` slice |

### Tags Applied (All Resources)

| Tag | Value |
|-----|-------|
| Org | `vrd` |
| Project | `202548` |
| Environment | `development` |
| Owner | `chris.stephens@verdaio.com` |
| CostCenter | `202548-llc` |
| CreatedDate | `2025-12-27` |

---

## Provisioning Timeline

### 1. Preflight Checks ✓

**Git Status:**
```
On branch ops/phase0-setup-gate-azure-voice-bakeoff-v1
nothing to commit, working tree clean
```

**Azure CLI:**
```json
{
  "azure-cli": "2.77.0",
  "azure-cli-core": "2.77.0"
}
```

**Azure Account:**
```
Name: Azure subscription 1
Tenant: Verdaio
User: chris.stephens@verdaio.com
```

**Existing Resources Check:**
```bash
az group list --query "[?contains(name, '202548')]" -o table
# Result: (empty) — No existing 202548 resources
```

### 2. Resource Group Creation ✓

**Command:**
```bash
az group create \
  --name rg-vrd-202548-dev-eus2-tts-01 \
  --location eastus2 \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=2025-12-27
```

**Result:**
```json
{
  "name": "rg-vrd-202548-dev-eus2-tts-01",
  "location": "eastus2",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": { /* all tags applied */ }
}
```

**Verification:**
```bash
az group show --name rg-vrd-202548-dev-eus2-tts-01 --query "{name:name, location:location, provisioningState:properties.provisioningState}" -o table
```

### 3. Key Vault Creation ✓

**Command:**
```bash
az keyvault create \
  --name kv-vrd-202548-dev-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --location eastus2 \
  --enable-rbac-authorization true \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=2025-12-27
```

**Result:**
```json
{
  "name": "kv-vrd-202548-dev-01",
  "location": "eastus2",
  "properties": {
    "provisioningState": "Succeeded",
    "enableRbacAuthorization": true,
    "enableSoftDelete": true,
    "softDeleteRetentionInDays": 90,
    "vaultUri": "https://kv-vrd-202548-dev-01.vault.azure.net/"
  }
}
```

**Verification:**
```bash
az keyvault show --name kv-vrd-202548-dev-01 --query "{name:name, vaultUri:properties.vaultUri, rbac:properties.enableRbacAuthorization}" -o table
```

### 4. Speech Service Creation ✓

**Command:**
```bash
az cognitiveservices account create \
  --name cog-vrd-202548-dev-eus2-tts-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --kind SpeechServices \
  --sku S0 \
  --location eastus2 \
  --yes \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=2025-12-27
```

**Result:**
```json
{
  "name": "cog-vrd-202548-dev-eus2-tts-01",
  "kind": "SpeechServices",
  "location": "eastus2",
  "sku": {
    "name": "S0"
  },
  "properties": {
    "provisioningState": "Succeeded",
    "endpoint": "https://eastus2.api.cognitive.microsoft.com/",
    "endpoints": {
      "Speech Services Text to Speech (Neural)": "https://eastus2.tts.speech.microsoft.com"
    }
  }
}
```

**TTS Endpoint:** `https://eastus2.tts.speech.microsoft.com`

**Verification:**
```bash
az cognitiveservices account show \
  --name cog-vrd-202548-dev-eus2-tts-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --query "{name:name, kind:kind, sku:sku.name, location:location, ttsEndpoint:properties.endpoints.\"Speech Services Text to Speech (Neural)\"}" \
  -o table
```

### 5. RBAC Role Assignment ✗ FAILED

**Attempted:**
```bash
az role assignment create \
  --role "Key Vault Secrets Officer" \
  --assignee ac071c4e-dc2a-4f3f-b1a5-c2cf1a168f33 \
  --scope "/subscriptions/b3fc75c0-c060-4a53-a7cf-5f6ae22fefec/resourceGroups/rg-vrd-202548-dev-eus2-tts-01/providers/Microsoft.KeyVault/vaults/kv-vrd-202548-dev-01"
```

**Error:**
```
ERROR: (MissingSubscription) The request did not have a subscription or a valid tenant level resource provider.
Code: MissingSubscription
```

**Troubleshooting Attempted:**
- Verified subscription context: ✓ Correct
- Tried explicit `--subscription` parameter: Failed
- Tried user email vs object ID: Failed
- Tried access policy fallback: Blocked by RBAC mode

**Root Cause:**
Likely Azure CLI bug or tenant/subscription configuration issue. This error persists despite correct subscription context.

**Workaround:**
**Manual role assignment required via Azure Portal:**

1. Navigate to: `https://portal.azure.com`
2. Go to: Key Vaults → `kv-vrd-202548-dev-01` → Access control (IAM)
3. Click: Add → Add role assignment
4. Select role: `Key Vault Secrets Officer`
5. Select members: `chris.stephens@verdaio.com`
6. Review + assign

### 6. Secret Storage ✗ BLOCKED

**Blocked due to missing RBAC role assignment.**

**Secrets to store (after role assignment):**

```bash
# Retrieve Speech API key
SPEECH_KEY=$(az cognitiveservices account keys list \
  --name cog-vrd-202548-dev-eus2-tts-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --query "key1" -o tsv)

# Store in Key Vault
az keyvault secret set \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-key \
  --value "$SPEECH_KEY"

az keyvault secret set \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-region \
  --value "eastus2"
```

**Secret Names (per `docs/ops/AZURE-TTS-RESOURCES.md`):**
- `azure-speech-key` — Speech API primary key
- `azure-speech-region` — Azure region (`eastus2`)

### 7. Verification ⏳ PENDING

**Pending completion of secret storage.**

**Verification Plan:**
1. List Key Vault secrets (names only):
   ```bash
   az keyvault secret list --vault-name kv-vrd-202548-dev-01 --query "[].name" -o tsv
   ```

2. Test TTS synthesis (single voice):
   ```powershell
   .\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural") -VaultName kv-vrd-202548-dev-01
   ```

3. Verify audio file created in media warehouse:
   ```
   C:\devop\media\saas202548\tts-bakeoff\<date>\ep001-excerpt__en-GB-RyanNeural__style-default.wav
   ```

---

## Resource Summary

### Created Resources (3)

| Resource | ID | Status |
|----------|------|--------|
| Resource Group | `/subscriptions/b3fc75c0-c060-4a53-a7cf-5f6ae22fefec/resourceGroups/rg-vrd-202548-dev-eus2-tts-01` | ✓ Provisioned |
| Key Vault | `/subscriptions/b3fc75c0-c060-4a53-a7cf-5f6ae22fefec/resourceGroups/rg-vrd-202548-dev-eus2-tts-01/providers/Microsoft.KeyVault/vaults/kv-vrd-202548-dev-01` | ✓ Provisioned |
| Speech Service | `/subscriptions/b3fc75c0-c060-4a53-a7cf-5f6ae22fefec/resourceGroups/rg-vrd-202548-dev-eus2-tts-01/providers/Microsoft.CognitiveServices/accounts/cog-vrd-202548-dev-eus2-tts-01` | ✓ Provisioned |

### Secrets (Pending)

| Secret Name | Description | Status |
|-------------|-------------|--------|
| `azure-speech-key` | Speech API primary key | ⏳ Pending (RBAC blocker) |
| `azure-speech-region` | Azure region (`eastus2`) | ⏳ Pending (RBAC blocker) |

### Cost Estimate

**Monthly (Dev Environment):**
- Speech Service S0: ~$1.00 per 1,000 transactions (pay-as-you-go)
- Key Vault: ~$0.03 per 10,000 operations
- **Total Estimated:** < $5/month for development usage

---

## Next Steps

### Immediate (Manual Intervention Required)

1. **Assign RBAC Role via Azure Portal:**
   - Resource: `kv-vrd-202548-dev-01`
   - Role: `Key Vault Secrets Officer`
   - User: `chris.stephens@verdaio.com`

2. **Store Secrets (after RBAC):**
   ```bash
   # Get Speech key
   az cognitiveservices account keys list \
     --name cog-vrd-202548-dev-eus2-tts-01 \
     --resource-group rg-vrd-202548-dev-eus2-tts-01

   # Store in Key Vault
   az keyvault secret set --vault-name kv-vrd-202548-dev-01 --name azure-speech-key --value "<KEY>"
   az keyvault secret set --vault-name kv-vrd-202548-dev-01 --name azure-speech-region --value "eastus2"
   ```

3. **Update Repo Tooling:**
   - Update `tools/tts/azure-speech-bakeoff.ps1` default `-VaultName` to `kv-vrd-202548-dev-01`

4. **Run Verification:**
   ```powershell
   .\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural")
   ```

5. **Update Documentation:**
   - Update `docs/ops/AZURE-TTS-RESOURCES.md` with final resource names
   - Update `docs/ops/reports/azure-tts-naming-audit-2025-12-27.md` with final names
   - Update `docs/CHANGELOG.md`, `AI-UPGRADES-LOG.md`, `STATUS.md`

### After Verification Complete

6. **Commit Changes:**
   - Stage provisioning documentation updates
   - Commit with evidence reference
   - Push to branch `ops/phase0-setup-gate-azure-voice-bakeoff-v1`

7. **Create PR:**
   - Base: `chore/kickoff-baseline-audit`
   - Include: Audit report + provisioning report + tooling updates
   - Evidence: Link to this report

---

## Issues and Resolutions

### Issue #1: Azure CLI Role Assignment Failure

**Issue:** `az role assignment create` fails with "MissingSubscription" error despite correct subscription context.

**Error:**
```
ERROR: (MissingSubscription) The request did not have a subscription or a valid tenant level resource provider.
```

**Troubleshooting:**
- ✓ Verified `az account show` returns correct subscription
- ✓ Tried explicit `--subscription` parameter
- ✓ Tried user email vs object ID
- ✓ Tried resetting subscription context with `az account set`
- ✗ All attempts failed with same error

**Root Cause:**
Likely Azure CLI bug (v2.77.0) or tenant/subscription configuration issue beyond CLI control.

**Resolution:**
Manual role assignment via Azure Portal (workaround).

**Impact:**
- Secret storage blocked until manual role assignment
- TTS verification blocked until secrets stored
- Documentation updates can proceed
- Repo tooling can be updated with final names

**Reference:**
- Azure CLI GitHub Issues (similar reports): [azure-cli#20231](https://github.com/Azure/azure-cli/issues/20231)
- Workaround: Azure Portal RBAC assignment

---

## Sign-off

**Provisioning Date:** 2025-12-27
**Status:** PARTIAL — Resources created; manual RBAC assignment required
**Provisioned By:** Claude Code (automated provisioning)
**Manual Step Required:** RBAC role assignment (chris.stephens@verdaio.com)

**Resources Created:**
- ✓ Resource Group: `rg-vrd-202548-dev-eus2-tts-01`
- ✓ Key Vault: `kv-vrd-202548-dev-01`
- ✓ Speech Service: `cog-vrd-202548-dev-eus2-tts-01`

**Blockers:**
- ⏳ RBAC role assignment (manual intervention required)
- ⏳ Secret storage (depends on RBAC)
- ⏳ TTS verification (depends on secrets)

**Next Action:** Manual RBAC assignment via Azure Portal, then continue with secret storage and verification.

---
