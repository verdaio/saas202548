# Azure TTS Resources
## Case Study Library (saas202548)

**Last Updated:** 2025-12-27
**Status:** ✓ PROVISIONING COMPLETE (all resources operational; smoke test passed)
**Standard:** Verdaio Azure Naming Standard v1.2
**Provisioning Report:** [azure-tts-provision-dev-2025-12-27.md](reports/azure-tts-provision-dev-2025-12-27.md)

---

## Overview

This document defines the Azure infrastructure for Text-to-Speech (TTS) production in the Case Study Library project. All resources follow the Verdaio Azure Naming Standard v1.2.

**Related Documentation:**
- [Azure Naming Audit Report](reports/azure-tts-naming-audit-2025-12-27.md) — Naming compliance audit
- [Media Warehouse Paths](MEDIA-WAREHOUSE-PATHS.md) — Local media storage conventions
- [Phase 0 Setup Gate Report](reports/phase0-setup-gate-azure-voice-bakeoff-2025-12-26.md) — Initial TTS setup

---

## Development Environment

### Resource Group

**Name:** `rg-vrd-202548-dev-eus2-tts-01`
**Location:** East US 2 (`eastus2`)
**Status:** ✓ Created (2025-12-27)
**Note:** Includes `-tts-01` slice for TTS-specific resources

**Tags:**
- `Org`: `vrd`
- `Project`: `202548`
- `Environment`: `development`
- `Owner`: `chris.stephens@verdaio.com`
- `CostCenter`: `202548-llc`
- `CreatedDate`: (to be set on creation)

**Provisioning Command:**
```bash
az group create \
  --name rg-vrd-202548-dev-eus2-tts-01 \
  --location eastus2 \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=2025-12-27
```

---

### Azure Speech Service (Cognitive Services)

**Name:** `cog-vrd-202548-dev-eus2-tts-01`
**Kind:** `SpeechServices`
**SKU:** `S0` (Standard)
**Location:** East US 2 (`eastus2`)
**Status:** ✓ Created (2025-12-27)
**Note:** Includes `-tts-01` slice for clarity

**Endpoint:** `https://eastus2.api.cognitive.microsoft.com/`
**TTS Endpoint:** `https://eastus2.tts.speech.microsoft.com/cognitiveservices/v1`

**Tags:** Same as Resource Group

**Provisioning Command:**
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

**Verification:**
```bash
az cognitiveservices account show \
  --name cog-vrd-202548-dev-eus2-tts-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --query "{name:name, kind:kind, sku:sku.name, location:location, ttsEndpoint:properties.endpoints.\"Speech Services Text to Speech (Neural)\"}" \
  -o table
```

---

### Key Vault

**Name:** `kv-vrd-202548-dev-01`
**Authorization:** RBAC-enabled (no access policies)
**Location:** East US 2 (`eastus2`)
**Status:** ✓ Created (2025-12-27); ✓ RBAC role assigned; ✓ Secrets stored
**URI:** `https://kv-vrd-202548-dev-01.vault.azure.net/`
**Note:** Region omitted from name due to 24-character limit (per standard)

**Tags:** Same as Resource Group

**Provisioning Command:**
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

**RBAC Role Assignment (for current user):**
```bash
az role assignment create \
  --role "Key Vault Secrets Officer" \
  --assignee chris.stephens@verdaio.com \
  --scope $(az keyvault show --name kv-vrd-202548-dev-01 --query id -o tsv)
```

---

### Key Vault Secrets

**Secret Names:**
- `azure-speech-key` — Azure Speech API key (primary)
- `azure-speech-region` — Azure region code (e.g., `eastus2`)
- `azure-speech-endpoint` — TTS endpoint URL (e.g., `https://eastus2.tts.speech.microsoft.com`)

**Status:** ✓ All secrets stored (2025-12-27)

**Storage Procedure:**
```bash
# Retrieve Speech API keys
SPEECH_KEY=$(az cognitiveservices account keys list \
  --name cog-vrd-202548-dev-eus2-tts-01 \
  --resource-group rg-vrd-202548-dev-eus2-tts-01 \
  --query "key1" -o tsv)

# Store in Key Vault (requires RBAC role assignment)
az keyvault secret set \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-key \
  --value "$SPEECH_KEY"

az keyvault secret set \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-region \
  --value "eastus2"

az keyvault secret set \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-endpoint \
  --value "https://eastus2.tts.speech.microsoft.com"
```

**Retrieval (for automation):**
```bash
# Retrieve secret value
az keyvault secret show \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-key \
  --query "value" -o tsv

# Retrieve secret ID (metadata only, no value)
az keyvault secret show \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-key \
  --query "id" -o tsv
```

---

## Key Rotation Procedure

### When to Rotate

- Every 90 days (routine)
- On suspected compromise
- On personnel changes (if manually accessed)

### Rotation Steps

1. **Generate new key in Azure:**
   ```bash
   az cognitiveservices account keys regenerate \
     --name cog-vrd-202548-dev-eus2-tts-01 \
     --resource-group rg-vrd-202548-dev-eus2-tts-01 \
     --key-name Key2
   ```

2. **Update Key Vault secret:**
   ```bash
   NEW_KEY=$(az cognitiveservices account keys list \
     --name cog-vrd-202548-dev-eus2-tts-01 \
     --resource-group rg-vrd-202548-dev-eus2-tts-01 \
     --query "key2" -o tsv)

   az keyvault secret set \
     --vault-name kv-vrd-202548-dev-01 \
     --name azure-speech-key \
     --value "$NEW_KEY"
   ```

3. **Test TTS bake-off runner:**
   ```powershell
   .\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural")
   ```

4. **Regenerate old key (Key1) after verification:**
   ```bash
   az cognitiveservices account keys regenerate \
     --name cog-vrd-202548-dev-eus2-tts-01 \
     --resource-group rg-vrd-202548-dev-eus2-tts-01 \
     --key-name Key1
   ```

5. **Document rotation:**
   - Update this document with rotation date
   - Log in `AI-UPGRADES-LOG.md` or `CHANGELOG.md`

---

## TTS Health Verification

### Quick Test

```powershell
# Run bake-off runner with single voice
.\tools\tts\azure-speech-bakeoff.ps1 -Voices @("en-GB-RyanNeural")
```

**Expected Output:**
- Audio file created in media warehouse: `C:\devop\media\saas202548\tts-bakeoff\<date>\`
- Manifest JSON generated
- No errors in PowerShell output

### Manual API Test

```bash
# Get credentials from Key Vault
SPEECH_KEY=$(az keyvault secret show \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-key \
  --query "value" -o tsv)

REGION=$(az keyvault secret show \
  --vault-name kv-vrd-202548-dev-01 \
  --name azure-speech-region \
  --query "value" -o tsv)

# Test TTS API
curl -X POST "https://$REGION.tts.speech.microsoft.com/cognitiveservices/v1" \
  -H "Ocp-Apim-Subscription-Key: $SPEECH_KEY" \
  -H "Content-Type: application/ssml+xml" \
  -H "X-Microsoft-OutputFormat: riff-24khz-16bit-mono-pcm" \
  -d '<speak version="1.0" xml:lang="en-US"><voice name="en-GB-RyanNeural">Hello, this is a test.</voice></speak>' \
  --output test-audio.wav
```

---

## Optional Resources (Not Yet Provisioned)

### Storage Account

**Name:** `stvrd202548deveus201`
**Purpose:** Cache TTS audio, store artifacts
**Status:** Not needed yet (using local media warehouse)

**Provisioning (if needed):**
```bash
az storage account create \
  --name stvrd202548deveus201 \
  --resource-group rg-vrd-202548-dev-eus2 \
  --location eastus2 \
  --sku Standard_LRS \
  --kind StorageV2 \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=$(date +%Y-%m-%d)
```

---

### Log Analytics Workspace

**Name:** `log-vrd-202548-dev-eus2`
**Purpose:** Centralized logging and diagnostics
**Status:** Not needed yet

**Provisioning (if needed):**
```bash
az monitor log-analytics workspace create \
  --resource-group rg-vrd-202548-dev-eus2 \
  --workspace-name log-vrd-202548-dev-eus2 \
  --location eastus2 \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=$(date +%Y-%m-%d)
```

---

### Application Insights

**Name:** `appi-vrd-202548-dev-eus2`
**Purpose:** TTS usage telemetry and performance monitoring
**Status:** Not needed yet

**Provisioning (if needed):**
```bash
az monitor app-insights component create \
  --app appi-vrd-202548-dev-eus2 \
  --resource-group rg-vrd-202548-dev-eus2 \
  --location eastus2 \
  --workspace $(az monitor log-analytics workspace show \
    --resource-group rg-vrd-202548-dev-eus2 \
    --workspace-name log-vrd-202548-dev-eus2 \
    --query id -o tsv) \
  --tags Org=vrd Project=202548 Environment=development \
         Owner=chris.stephens@verdaio.com CostCenter=202548-llc \
         CreatedDate=$(date +%Y-%m-%d)
```

---

## Staging Environment (Optional)

### Resource Names

| Resource Type | Name |
|---------------|------|
| Resource Group | `rg-vrd-202548-stg-eus2` |
| Speech Service | `cog-vrd-202548-stg-eus2-01` |
| Key Vault | `kv-vrd-202548-stg-01` |
| Storage Account | `stvrd202548stgeus201` |
| Log Analytics | `log-vrd-202548-stg-eus2` |
| App Insights | `appi-vrd-202548-stg-eus2` |

**Provisioning:** Same commands as dev, replacing `dev` with `stg` and `development` with `staging`

---

## Production Environment (Optional)

### Resource Names

| Resource Type | Name |
|---------------|------|
| Resource Group | `rg-vrd-202548-prd-eus2` |
| Speech Service | `cog-vrd-202548-prd-eus2-01` |
| Key Vault | `kv-vrd-202548-prd-01` |
| Storage Account | `stvrd202548prdeus201` |
| Log Analytics | `log-vrd-202548-prd-eus2` |
| App Insights | `appi-vrd-202548-prd-eus2` |

**Provisioning:** Same commands as dev, replacing `dev` with `prd` and `development` with `production`

---

## Cost Monitoring

### Current Cost (Dev Environment)

**Resource Group:** `rg-vrd-202548-dev-eus2`

```bash
# View accumulated costs
az consumption usage list \
  --start-date $(date -d '30 days ago' +%Y-%m-%d) \
  --end-date $(date +%Y-%m-%d) \
  | jq '[.[] | select(.instanceName | contains("202548"))] | group_by(.meterCategory) | map({category: .[0].meterCategory, total: (map(.pretaxCost) | add)})'
```

### Expected Costs (S0 SKU)

- **Speech Service S0:** ~$1.00 per 1,000 transactions (pay-as-you-go)
- **Key Vault:** ~$0.03 per 10,000 operations
- **Total (estimated):** < $5/month for dev environment with bake-off usage

---

## Support and Troubleshooting

### Common Issues

**Issue:** Key Vault access denied
**Solution:**
```bash
az role assignment create \
  --role "Key Vault Secrets Officer" \
  --assignee <user-email> \
  --scope $(az keyvault show --name kv-vrd-202548-dev-01 --query id -o tsv)
```

**Issue:** Speech API quota exceeded
**Solution:** Check quota limits and consider upgrading SKU

**Issue:** Regional endpoint errors
**Solution:** Verify `azure-speech-region` secret matches Speech Service region

---

## Version History

| Date | Change | Author |
|------|--------|--------|
| 2025-12-27 | Initial documentation (pre-provisioning) | Claude Code |
| 2025-12-27 | Updated to reflect provisioning completion (resources created, RBAC assigned, secrets stored, smoke test passed) | Claude Code |

---
