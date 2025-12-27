# AI Upgrades Log

This log tracks all AI-assisted changes made to this repository.

## Format

Each entry includes:
- **Version**: Semantic version tag
- **Date**: When the change was made
- **Agent**: AI system used (e.g., Claude Code)
- **Prompt Reference**: Link or ID of the prompt used (if applicable)
- **Changes**: Summary of what was done
- **Verification**: Evidence that the change was successful

---

## [v0.4.4] - 2025-12-27

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-azure-tts-hd-bakeoff-v1.md`

### Changes
**Operational Upgrade:** Azure TTS HD voice bake-off completed (8 DragonHDLatestNeural voices) + SSML template + enhanced bake-off script

**1. HD Voice Discovery:**
- ✓ Discovered 64 DragonHD voices available in eastus2 region
- ✓ Authenticated API call via Key Vault credentials
- ✓ Found 23 en-US + 1 en-GB DragonHDLatestNeural voices

**2. Curated Candidate Set:**
- ✓ Selected 8 voices for bake-off (male-first strategy)
- 6 US male: Brian, Davis, Andrew, Adam, Steffan
- 1 GB male: Ollie
- 2 US female: Ava, Emma

**3. SSML Template Created:**
- ✓ Created `content/production/ep001-tts-hd-bakeoff-ssml-v1.xml`
- Features: -5% slower prosody, 250ms breaks at paragraphs
- Pronunciation fixes: UPS (spelled out), ORION (IPA phoneme)
- VOICE_NAME_PLACEHOLDER for template substitution

**4. Enhanced Bake-Off Script:**
- ✓ Updated `tools/tts/azure-speech-bakeoff.ps1`
- Added `-SsmlPath` parameter for SSML template input
- Support for colon-syntax voice names (replaces `:` with `-` in filenames)
- Backwards compatible with markdown excerpt workflow
- Manifest tracks source type (ssml_template vs markdown_excerpt)

**5. HD Voice Bake-Off Execution:**
- ✓ Ran full bake-off with 8 DragonHD voices
- ✓ All voices synthesized successfully (0 errors)
- ✓ Total duration: ~3 min 21 sec
- ✓ Total output: ~34 MB (8 WAV files)

**Voices Tested:**
- `en-US-Brian:DragonHDLatestNeural` — 4,404,892 bytes
- `en-US-Davis:DragonHDLatestNeural` — 3,750,802 bytes
- `en-US-Andrew:DragonHDLatestNeural` — 4,199,942 bytes
- `en-US-Adam:DragonHDLatestNeural` — 3,930,194 bytes
- `en-US-Steffan:DragonHDLatestNeural` — 4,488,654 bytes
- `en-GB-Ollie:DragonHDLatestNeural` — 4,414,280 bytes
- `en-US-Ava:DragonHDLatestNeural` — 4,525,828 bytes
- `en-US-Emma:DragonHDLatestNeural` — 4,313,508 bytes

**6. Deterministic Manifest Generated:**
- ✓ SHA256 manifest created: `C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\SHA256SUMS.txt`
- ✓ Contains: SHA256 hash + filename for all 8 WAV files
- ✓ Safe to document (hashes contain no sensitive data)

**7. Media Warehouse:**
- ✓ All audio files stored OUTSIDE git repository
- ✓ Path: `C:\devop\media\saas202548\tts-bakeoff\2025-12-27-hd\`
- ✓ Git safety verified (no *.wav files staged or committed)

**8. Documentation Updates:**
- Created `docs/ops/reports/azure-tts-hd-bakeoff-2025-12-27.md`:
  - Complete HD bake-off evidence report
  - Voice comparison table with file sizes
  - SSML template documentation
  - Script enhancements summary
  - SHA256 manifest documentation
  - Execution timeline
- Updated `docs/production/AI-VOICE-DECISION-PACK-ep001-v1.md`:
  - Marked HD bake-off as active round
  - Updated audio files location to HD folder
  - Updated voice scoring worksheet with 8 HD voices
  - Marked baseline bake-off as superseded
- Updated `STATUS.md`:
  - Marked HD bake-off complete (8 voices tested)
  - Added HD bake-off note with details
  - Marked baseline bake-off as superseded (voices not human enough)
  - Updated scaffold version to v0.4.4
- Updated `docs/CHANGELOG.md` (v0.4.4)
- Updated `AI-UPGRADES-LOG.md` (this file)

### Verification
- **HD voices discovered:** PASS (64 DragonHD voices found)
- **SSML template created:** PASS (1,532 chars, hash: CA359B76980865BD527A02A7B35C0106)
- **Script enhanced:** PASS (-SsmlPath parameter added, colon support added)
- **HD bake-off run:** PASS (8/8 voices successful, 0 errors)
- **SHA256 manifest:** PASS (8 entries)
- **Media warehouse:** PASS (files outside git)
- **Docs updated:** PASS (5 files modified/created)

**Next:** Voice selection using Voice Decision Pack, then voice freeze for Season 1

---

## [v0.4.3] - 2025-12-27

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-azure-tts-bakeoff-template-fix-v1.md` (Parts A-B)

### Changes
**Operational Upgrade:** Azure TTS voice bake-off completed (7 voices) + deterministic manifest + PR created

**1. GitHub PR Created:**
- ✓ PR #18: "chore(azure): provision Azure TTS dev + KV secrets + smoke test"
- Base branch: `chore/kickoff-baseline-audit`
- Head branch: `ops/phase0-setup-gate-azure-voice-bakeoff-v1`
- URL: https://github.com/verdaio/saas202548/pull/18

**2. Voice Bake-Off Execution:**
- ✓ Ran full bake-off with 7 voices (4 British, 2 American, 1 Australian)
- ✓ All voices synthesized successfully (0 errors, 0 retries)
- ✓ Total duration: ~30 seconds
- ✓ Total output: ~30 MB (7 WAV files)

**Voices Tested:**
- `en-GB-RyanNeural` (British male) — 4,418,822 bytes
- `en-GB-ThomasNeural` (British male) — 4,369,448 bytes
- `en-GB-SoniaNeural` (British female) — 4,191,816 bytes
- `en-US-GuyNeural` (American male) — 4,349,984 bytes
- `en-US-AriaNeural` (American female) — 4,503,852 bytes
- `en-US-JennyNeural` (American female) — 4,396,428 bytes
- `en-AU-WilliamNeural` (Australian male) — 3,916,962 bytes

**3. Deterministic Manifest Generated:**
- ✓ SHA256 manifest created: `C:\devop\media\saas202548\tts-bakeoff\2025-12-26\manifest.sha256.tsv`
- ✓ Contains: filename, size_bytes, SHA256 hash for all 7 WAV files
- ✓ Safe to document (hashes contain no sensitive data)

**4. Media Warehouse:**
- ✓ All audio files stored OUTSIDE git repository
- ✓ Path: `C:\devop\media\saas202548\tts-bakeoff\2025-12-26\`
- ✓ Git safety verified (no *.wav files staged or committed)

**5. Documentation Updates:**
- Created `docs/ops/reports/azure-tts-bakeoff-2025-12-27.md`:
  - Full bake-off evidence report
  - Voice comparison table
  - SHA256 manifest documentation
  - Execution timeline
  - Next steps (voice selection)
- Updated `docs/ops/AZURE-TTS-RESOURCES.md`:
  - Added Voice Bake-Off section
  - Full bake-off run instructions
  - Custom voice list examples
  - Post-bake-off steps (SHA256 manifest, voice selection, evidence docs)
  - Bake-off history table
- Updated `STATUS.md`:
  - Marked "Azure Speech + Key Vault verified" as complete
  - Marked "Voice bake-off done" as in progress (bake-off complete, voice selection pending)
  - Added bake-off completion note with details
- Updated `docs/CHANGELOG.md` (v0.4.3)
- Updated `AI-UPGRADES-LOG.md` (this file)

### Verification
- **PR created:** PASS (PR #18)
- **Voice bake-off run:** PASS (7/7 voices successful)
- **SHA256 manifest:** PASS (all 7 files hashed)
- **Git safety:** PASS (no audio files in git)
- **Documentation updated:** PASS (all required docs updated)

### Key Outcomes
- **7 voices successfully synthesized** with Azure Speech Service
- **Deterministic manifest** (SHA256 hashes) for file integrity verification
- **Zero git pollution** (all audio files in media warehouse)
- **Complete evidence trail** for bake-off execution
- **Voice selection ready** (awaiting human listening + Voice Decision Pack)

### Next Actions
1. **Create Voice Decision Pack** worksheet for Chris (Part C)
2. **Voice selection** using rubric + listening
3. **Voice freeze** documentation for Season 1
4. **Template system updates** (Part D) to prevent recurrence

---

## [v0.4.2] - 2025-12-27

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-azure-tts-provision-dev-v1.md`, `cc-saas202548-azure-tts-secrets-smoketest-v1.md`

### Changes
**Operational Upgrade:** Azure TTS dev environment provisioning (COMPLETE - all resources operational, smoke test passed)

**1. Azure Resources Provisioned:**
- ✓ Resource Group: `rg-vrd-202548-dev-eus2-tts-01` (eastus2)
  - Created with compliant tags (Org, Project, Environment, Owner, CostCenter, CreatedDate)
  - Includes `-tts-01` slice for TTS-specific resources
- ✓ Key Vault: `kv-vrd-202548-dev-01` (eastus2)
  - RBAC authorization enabled (no access policies)
  - Soft delete enabled (90-day retention)
  - Vault URI: `https://kv-vrd-202548-dev-01.vault.azure.net/`
  - **Note:** Region omitted from name (24-char limit per standard)
- ✓ Speech Service: `cog-vrd-202548-dev-eus2-tts-01` (eastus2)
  - Kind: SpeechServices
  - SKU: S0 (Standard)
  - TTS Endpoint: `https://eastus2.tts.speech.microsoft.com`
  - Includes `-tts-01` slice for clarity

**2. Naming Compliance:**
- All resources follow Verdaio Azure Naming Standard v1.2
- Key Vault naming exception applied: region omitted due to 24-character limit
  - Standard example: `kv-vrd-202545-prd-01` (region omitted, not compressed)
  - Deviation from human proposal: used `kv-vrd-202548-dev-01` instead of `kv-vrd-202548-dev-eu2-01`
  - Rationale: Standard shows region omission, not compression (lines 79-88 of AZURE-NAMING-CONVENTIONS.md)
- Resource Group and Speech Service include `-tts-01` slice for organizational clarity

**3. RBAC Assignment (Manual Workaround):**
- ✗ Azure CLI `az role assignment create` failed with persistent "MissingSubscription" error
- ✓ Manual role assignment via Azure Portal succeeded
  - Role: "Key Vault Secrets Officer"
  - User: chris.stephens@verdaio.com
  - Scope: `kv-vrd-202548-dev-01`
- Root cause: Azure CLI bug (v2.77.0) or tenant/subscription configuration issue

**4. Secret Storage (Complete):**
- ✓ Fetched Speech Service API key (key1) without printing
- ✓ Stored 3 secrets in Key Vault:
  - `azure-speech-key` — Speech API key (primary)
  - `azure-speech-region` — Region code (`eastus2`)
  - `azure-speech-endpoint` — TTS endpoint URL (`https://eastus2.tts.speech.microsoft.com`)
- ✓ Verified bakeoff script reads correct secret names from vault

**5. TTS Smoke Test (Complete):**
- ✓ Ran single-voice test: `en-GB-RyanNeural`
- ✓ Audio file generated: 4,418,822 bytes (4.4 MB WAV)
- ✓ Output path: `C:\devop\media\saas202548\tts-bakeoff\2025-12-27\azure-speech-en-GB-RyanNeural.wav`
- ✓ Manifest file generated
- ✓ End-to-end workflow verified (Key Vault → Azure Speech API → audio synthesis)

**6. Repository Updates:**
- Updated `tools/tts/azure-speech-bakeoff.ps1`:
  - Default `-VaultName` changed from `kv-saas202548-prodops` to `kv-vrd-202548-dev-01`
- Updated `docs/ops/AZURE-TTS-RESOURCES.md`:
  - Status changed from "NOT YET PROVISIONED" → "PARTIAL PROVISIONING" → "✓ PROVISIONING COMPLETE"
  - All resource names updated to actual provisioned names
  - All commands updated with `-tts-01` slice
  - Added all 3 secret names with status
  - Updated Key Vault status to show RBAC assigned and secrets stored
  - Added version history entry
- Updated `docs/CHANGELOG.md` (v0.4.2) - changed from PARTIAL to COMPLETE with all verification details
- Updated `STATUS.md` - reflecting provisioning completion
- Updated `AI-UPGRADES-LOG.md` (this file)

**7. Evidence Documentation:**
- Updated `docs/ops/reports/azure-tts-provision-dev-2025-12-27.md`:
  - Complete provisioning timeline with CLI commands
  - Resource inventory with IDs and status
  - RBAC manual assignment documentation
  - Secret storage verification (names only, no values)
  - TTS smoke test results with output file paths
  - Full completion summary (8 steps complete)

### Verification
- **Preflight checks:** PASS (git clean, Azure CLI authenticated)
- **Resource Group created:** PASS (`rg-vrd-202548-dev-eus2-tts-01`)
- **Key Vault created:** PASS (`kv-vrd-202548-dev-01`, RBAC enabled)
- **Speech Service created:** PASS (`cog-vrd-202548-dev-eus2-tts-01`, SKU: S0)
- **RBAC role assignment:** PASS (manual via Azure Portal after CLI failure)
- **Key Vault access:** PASS (secret list successful)
- **Secret storage:** PASS (3 secrets stored: key, region, endpoint)
- **TTS smoke test:** PASS (4.4 MB audio file generated)
- **End-to-end workflow:** PASS (Key Vault → Azure Speech API → audio synthesis)
- **Repository tooling updated:** PASS (bakeoff script VaultName updated)
- **Documentation updated:** PASS (all docs reflect complete provisioning)

### Key Outcomes
- **3 Azure resources successfully provisioned** with compliant names and tags
- **Naming standard compliance** achieved with documented exceptions
- **Identified Azure CLI RBAC bug** requiring manual workaround (successfully completed via Portal)
- **3 secrets securely stored** in Key Vault (key, region, endpoint)
- **End-to-end TTS workflow verified** with smoke test (4.4 MB audio generated)
- **Complete provisioning evidence** documented for audit trail
- **Repository ready** for voice bake-off testing

### Next Actions
1. **Run full voice bake-off** with all 7 default voices (operational next step)
2. **Select production voice** using decision framework from Season 1 Plan
3. **Continue Phase 0 Setup Gate** (Azure TTS + voice bake-off item now complete)

---

## [v0.4.1] - 2025-12-27

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-azure-tts-naming-audit-v1.md`

### Changes
**Operational Upgrade:** Azure TTS naming compliance audit with canonical standard discovery

**1. Canonical Naming Standard Discovery:**
- Located authoritative Azure Naming Standard in template system:
  - Path: `C:\devop\new-template-system\.template-system-v2\docs\security\AZURE-NAMING-CONVENTIONS.md`
  - Version: 1.2 (Last Updated: 2025-12-08)
  - Verdaio standard pattern: `{type}-{org}-{proj}-{env}-{region}-{slice}-{seq}`
- Key tokens for saas202548:
  - `{org}`: `vrd` (Verdaio)
  - `{proj}`: `202548` (extracted from projectID last 6 chars)
  - `{env}`: `dev`, `stg`, `prd`
  - `{region}`: `eus2` (East US 2), etc.

**2. Azure Resource Inventory:**
- Discovered NO Azure resources exist for project 202548 (confirmed via Azure CLI)
- Previously proposed names from phase0 report (2025-12-26) were never created (blocked by auth issue)
- Resource discovery commands:
  - `az group list` — No resource groups with "202548"
  - `az cognitiveservices account list` — No Speech Services
  - `az keyvault list` — No Key Vaults with "202548"

**3. Compliance Audit:**
- Audited proposed names from phase0 report against Verdaio standard
- **Finding:** All proposed names NON-COMPLIANT
  - `rg-saas202548-prodops` — Missing org, using full projectID, non-standard env, missing region
  - `kv-saas202548-prodops` — Same issues + missing sequence number
  - `spch-saas202548-prodops` — Same issues + non-standard abbreviation
- **Root Cause:** Proposed names do not follow Verdaio Azure Naming Standard v1.2

**4. Compliant Naming Proposal:**
- Proposed compliant names for dev environment (East US 2):
  - Resource Group: `rg-vrd-202548-dev-eus2`
  - Key Vault: `kv-vrd-202548-dev-01` (20 chars, within 24 char limit)
  - Speech Service: `cog-vrd-202548-dev-eus2-01` (using `cog` for Cognitive Services)
- Defined compliant tags (Org, Project, Environment, Owner, CostCenter, CreatedDate)
- Included stg/prd environment naming proposals (optional)

**5. Documentation Created:**
- `docs/ops/reports/azure-tts-naming-audit-2025-12-27.md` — Comprehensive audit report with:
  - Naming standard discovery section
  - Azure resource inventory (current state: none)
  - Compliance analysis (proposed names vs standard)
  - Compliant naming proposal (dev/stg/prd environments)
  - Migration plan (NOT REQUIRED — no resources exist)
  - Speech Service abbreviation recommendation (`cog`)
  - Resource inventory table
  - Verification evidence (CLI commands and outputs)
  - Template system propagation recommendation
- `docs/ops/AZURE-TTS-RESOURCES.md` — Azure TTS resource documentation with:
  - Overview and related docs
  - Dev environment resource definitions (RG, Speech, Key Vault)
  - Provisioning commands with compliant names and tags
  - Key Vault secret management (azure-speech-key, azure-speech-region)
  - Key rotation procedure
  - TTS health verification commands
  - Optional resources (Storage, Log Analytics, App Insights)
  - Stg/prd environment naming (optional)
  - Cost monitoring guidance
  - Troubleshooting section
- Updated `docs/CHANGELOG.md` (v0.4.1)
- Updated `AI-UPGRADES-LOG.md` (this file)

**6. Key Recommendations:**
- Update `tools/tts/azure-speech-bakeoff.ps1` default `-VaultName` from `kv-saas202548-prodops` to `kv-vrd-202548-dev-01`
- Provision Azure resources with compliant names (after approval)
- Propagate to template system: Add Cognitive Services (`cog`) and App Insights (`appi`) abbreviations to `AZURE-NAMING-CONVENTIONS.md`

### Verification
- **Preflight checks:** PASS (git clean, Azure CLI authenticated, subscription verified)
- **Naming standard found:** PASS (canonical standard located in template system)
- **Resource inventory:** PASS (confirmed no 202548 resources exist)
- **Compliance audit:** PASS (proposed names audited, non-compliance identified)
- **Compliant names proposed:** PASS (dev/stg/prd naming proposals validated)
- **Documentation created:** PASS (audit report + resource doc)
- **Logs updated:** PASS (CHANGELOG, AI-UPGRADES-LOG)

### Key Outcomes
- **No migration needed:** Resources can be created with compliant names from the start
- **Naming compliance:** All proposed names aligned to Verdaio Azure Naming Standard v1.2
- **Documentation complete:** Comprehensive audit report + operational resource doc
- **Provisioning ready:** Commands prepared for compliant Azure resource creation
- **Template system improvement identified:** Cognitive Services and App Insights abbreviations should be added to standard

### Next Actions
1. Approve compliant naming scheme (dev environment)
2. Approve Speech Service abbreviation (`cog`)
3. Update `tools/tts/azure-speech-bakeoff.ps1` with compliant Key Vault name
4. Provision Azure resources with compliant names (RG, Speech Service, Key Vault)
5. Store secrets in Key Vault (azure-speech-key, azure-speech-region)
6. Run bake-off runner to test TTS
7. (Optional) Propagate `cog` and `appi` abbreviations to template system naming standard

---

## [v0.4.0] - 2025-12-26

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-ops-season1-plan-adopt-v1.md`

### Changes
**Operational Upgrade:** Season 1 Plan v2 adopted as operational source-of-truth with comprehensive scaffolding

**1. Season 1 Plan Installation:**
- Created `docs/season-1/SEASON-1-PLAN-COMPLETE-v2.md` (LOCKED plan — 20 episodes @ 1/week, phased execution)
- Created `docs/season-1/README.md` (operational hub with quick links to all Season 1 artifacts)
- Updated root `README.md` with prominent link to Season 1 Operational Hub

**2. Setup Gate + Compliance:**
- Created `docs/ops/SEASON-1-SETUP-GATE.md` (Phase 0 prerequisites: 6-item checklist)
- Created `docs/ops/SEASON-1-COMPLIANCE-CHECKLIST.md` (maps LOCKED items to artifacts and routines)
- Created `docs/ops/reports/season-1-setup-gate-baseline-2025-12-26.md` (baseline evidence report)

**3. Execution Scaffolding:**
- Created `content/season-1/` directory structure
- Created episode folders: `ep000/`, `ep00a-lite/`, `ep00b-lite/`, `ep001/`, `ep002/`, `ep003/`, `ep004/`
- Each folder includes standard templates:
  - `script.md` (with signature framework reminders)
  - `sources.md` (bibliography + visual credits)
  - `claims.md` (Critical vs Narrative claims table)
  - `visual-credits.md` (rights-safe checklist + receipts location)
  - `qa-checklist.md` (claims QA, captions, rights-safe, SEO, signature frameworks)
  - `export-notes.md` (export settings + WPM calibration for EP001)

**4. Tracking Documents:**
- Created `tracking/season-1/episodes.md` (locked publish order EP001-EP004 + buffer policy tracking)
- Created `tracking/season-1/weekly-review.md` (weekly ritual template with metrics snapshot + one-change-per-week decision)
- Created `tracking/season-1/corrections-log.md` (error tracking log with corrections policy)
- Created `tracking/season-1/metrics.md` (draft metric bands + decision policy: CTR, retention, AVD)
- Created `tracking/season-1/pillar-b-safety-gate.md` (gate checklist + safe subset ordering + high-risk language checklist)

**5. SOPs (locked as part of Plan v2):**
- Created `docs/ops/RESEARCH-SYSTEM-SOP-v2.md` (source tiers + Critical vs Narrative claims split)
- Created `docs/ops/RIGHTS-SAFE-VISUAL-SOURCING-SOP.md` (visual stack + maps/logos policy + receipts storage)
- Created `docs/ops/CAPTIONS-MINIMUM-STANDARD.md` (required correction pass: names, acronyms, numbers, meaning changes)
- Created `docs/ops/SEO-DISCOVERY-SOP.md` (description structure + pinned comment + end screens + playlists)
- Created `docs/production/STYLE-CONSTITUTION-v1.md` (typography, color, diagrams, maps, stat callouts — prevents drift)

**6. Voice Freeze Record:**
- Created `docs/production/VOICE-FREEZE-RECORD-v1.md` (TTS voice freeze template; to be filled after bake-off + WPM calibration)

**7. Repo Status Updates:**
- Updated `STATUS.md` to reflect Phase 0 (Setup gate) as current phase
- Updated `docs/CHANGELOG.md` with v0.4.0 entry
- Updated `AI-UPGRADES-LOG.md` (this file)

### Verification
- **Branch:** `ops/season1-plan-adopt-v1`
- **Working tree status:** Clean before adoption; new files pending commit
- **Files created:** 50+ new files (plan, SOPs, tracking, templates, episode scaffolds)
- **Preflight checks:** PASS (no dirty tree, no overlapping files)
- **Reconciliation:** Existing EP001 work integrated (script v2, sources, production pack)
- **Evidence report:** `docs/ops/reports/season-1-plan-adoption-evidence-2025-12-26.md` (pending creation)

### Key Outcomes
- **Repeatable weekly machine:** All episodes now follow same structure (script → sources → claims → QA → export)
- **LOCKED plan enforcement:** Compliance checklist ensures all LOCKED items have artifacts and routines
- **Setup Gate prerequisites:** Phase 0 must complete before Week 1 publish
- **Locked publish order:** EP001 (UPS ORION), EP002 (Last-mile economics), EP003 (Amazon same-day), EP004 (Route plans fail)
- **Buffer policy:** 2–3 buffer-ready episodes by Week 6 (EP000, EP00A, EP00B)
- **Change control:** Plan v2 is LOCKED; any changes require version bump and rationale

### Next Actions
1. Complete Setup Gate prerequisites (voice bake-off, Azure Speech, asset pack templates, EP000 buffer)
2. Commit and create PR to `chore/kickoff-baseline-audit` (main branch)
3. Begin Phase 1 (Weeks 1–4) after Setup Gate passes

---

## [v0.3.8] - 2025-12-25

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-ops-ep001-tts-eval-select-v1.md`

### Changes
- Created TTS/AI Voice evaluation framework (ready for user testing)
- Created `content/production/ep001-tts-test-excerpt-v1.md`:
  - Extracted ~200 words from EP001 script v2 (Cold Open + Section 1)
  - Includes test requirements: "UPS" (U-P-S), "ORION", large numbers, technical terms
  - Desired speaking notes: calm/neutral tone, pronunciation guidance, pacing at 150 WPM
  - Target duration: 60-90 seconds
- Created `content/production/renders/.gitignore`:
  - Ignores audio files: `*.mp3`, `*.wav`, `*.m4a`, `*.aac`, `*.flac`, `*.ogg`
  - Prevents accidental commit of large media files
- Created `docs/production/AI-VOICE-DECISION-RESULTS-v1.md`:
  - Comprehensive results template for user to fill in after testing
  - Candidates table (tool, lane, available, duration, notes)
  - 10-point rubric scoring table (naturalness, consistency, pronunciation, etc.)
  - Detailed notes section per tool (strengths, weaknesses, pronunciation tests, export workflow, cost, licensing)
  - Decision justification section (chosen default + fallback)
  - Blockers and next steps checklist
  - Verification checklist
- Created `content/production/licenses/tts/README.md`:
  - Hash-based licensing evidence policy for public repo safety
  - Explains why we don't commit screenshots/receipts (public repo)
  - Procedure: store proof locally, compute SHA256 hashes, commit hash records only
  - Evidence record template with hash table
  - Verification workflow
- Updated docs/CHANGELOG.md, AI-UPGRADES-LOG.md (this file)

### Verification
- Test excerpt created: PASS
- `.gitignore` created for renders: PASS
- Decision results template created: PASS
- TTS license README created: PASS
- Documentation files updated: PASS
- No audio files committed: PASS (renders/.gitignore in place)
- No sensitive data committed: PASS (hash-based evidence policy documented)

### Notes
- **Critical limitation:** Claude Code cannot generate or listen to audio
- **User action required:** User must test TTS tools, score rubric, fill in results template
- Scaffolding complete: test excerpt, evaluation template, licensing policy all ready
- **Blocker still present:** AI voice/TTS tool not chosen (awaiting user testing)
- Next steps for user:
  1. Test at least one tool per lane (A/B/C) if available
  2. Generate audio renders using test excerpt
  3. Score each tool using 10-point rubric
  4. Verify licensing terms, capture proof files locally
  5. Compute SHA256 hashes, create evidence records
  6. Fill in `AI-VOICE-DECISION-RESULTS-v1.md`
  7. Update `TOOLS-REGISTRY-v1.yml` and `TOOLING-BASELINE-v1.md` with chosen tool

---

## [v0.3.7] - 2025-12-25

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-production-tooling-discovery-and-baseline-v1.md`

### Changes
- Discovered and formalized production tooling baseline for EP001
- Evidence discovery via Grep search across repo:
  - Found PowerPoint/Keynote, Canva, Google Slides references in graphics-v2.md
  - Found Pexels, Pixabay, Unsplash, Storyblocks, Artgrid references in broll-v2.md
  - Found Epidemic Sound, YouTube Audio Library, Freesound.org references in asset-manifest
  - Identified gaps: AI voice/TTS and video editor not yet chosen
- Created `docs/production/TOOLING-BASELINE-v1.md`:
  - 6-stage pipeline (Research, Structure, Script, AI Voice, Visuals, Edit/Publish)
  - Evidence notes referencing specific repo files and commits
  - Default tools + fallbacks for each stage
  - Decision gates: what can start now vs blocked
  - "Open decisions" section with explicit blockers
- Created `content/production/TOOLS-REGISTRY-v1.yml`:
  - Machine-readable tool registry with chosen defaults
  - Licensing verification status (mostly "incomplete")
  - Candidates under evaluation (TTS, video editor)
  - Evidence references (file paths + commit SHAs)
- Created `docs/production/AI-VOICE-DECISION-v1.md`:
  - 3 evaluation lanes (built-in editor voices, editor pro voices, dedicated TTS)
  - 10-point rubric (quality, licensing, cost, workflow, etc.)
  - Test plan for evaluating candidates
  - Licensing verification checklist per tool
  - Decision template to fill after testing
- Created `docs/production/LICENSE-VERIFICATION-CHECKLIST-v1.md`:
  - Proof requirements (screenshots, receipts, summaries)
  - Folder structure for `content/production/licenses/`
  - License summary template (Markdown)
  - Per-asset verification checklist
  - Music fingerprint risk guidance (practical, not legal advice)
- Created folder structure:
  - `content/production/renders/` (.gitkeep)
  - `content/production/licenses/` (.gitkeep)
- Updated docs/CHANGELOG.md, AI-UPGRADES-LOG.md, STATUS.md

### Verification
- All 4 deliverable files created: PASS
- No secrets added: PASS (all placeholders + documentation)
- TOOLS-REGISTRY-v1.yml is valid YAML: PASS (basic parse check)
- Folders created with .gitkeep: PASS
- Documentation files updated: PASS

### Notes
- Evidence-first approach: all tool claims reference specific repo files
- Two blockers identified: AI voice/TTS and video editor must be chosen before EP001 voice/edit
- Licensing gaps documented: Canva, Epidemic Sound, stock footage need verification
- Baseline is EP001-ready for stages 1-3 (Research, Structure, Script) and stage 5a-c (Graphics, Stock, Music sourcing)
- Stages 4 (Voice) and 6 (Edit) blocked until tool decisions made
- Next actions: test TTS candidates, choose video editor, verify licenses

---

## [v0.3.6] - 2025-12-25

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-content-ep001-production-pack-mvp-v1.md`

### Changes
- Created MVP-first production pack for EP001 with tiered asset approach
- Created `content/broll/EP001-ups-orion-broll-v2.md`:
  - MVP tier: 12 critical shots (minimum for complete episode)
  - Extended tier: Additional shots from v1 for polish
  - Each shot includes: purpose, section/timecode, licensing plan, production notes
  - Self-shoot candidates, stock footage candidates, and critical graphics identified
- Created `content/graphics/EP001-ups-orion-graphics-v2.md`:
  - MVP tier: 5 graphics (PowerPoint/Canva-level complexity)
  - Route comparison graphics (convoluted vs. clean, left vs. right turns)
  - On-screen statistics template (reusable)
  - "Beat the Computer" poster
  - Extended tier: Advanced animations from v1
- Created `content/production/EP001-readthrough-pacing-v2.md`:
  - Aligned timing targets to script v2 structure
  - Added prioritized cut list (Tier 1, Tier 2, Tier 3)
  - Pacing tips specific to script v2
- Created `content/production/EP001-asset-manifest-v1.md`:
  - Comprehensive asset tracking table
  - Columns: Asset ID, Type, Filename, Source, License Status, Proof, Where Used, Notes
  - Seeded with all MVP shots and graphics
  - Licensing summary and risk notes
- Created `content/production/EP001-recording-test-plan-v1.md`:
  - Step-by-step procedure for recording test
  - Pre-recording setup checklist (environment, equipment, software, script prep)
  - Target delivery style guidelines
  - Pass/fail gates with specific criteria
  - Common issues and fixes
  - Marking system for script annotations
- Created `content/production/EP001-recording-test-log-template-v1.md`:
  - Fill-in template for tracking recording test results
  - Setup tracking, timing breakdown, stumbles log, energy assessment
  - Top 10 priority fixes table
  - Cut candidates tracking
  - Pass/fail decision framework
- Created `content/production/EP001-ups-press-request-template-v1.md`:
  - Professional press request letter template for UPS materials
  - Usage notes and customization guidance
  - Backup plan for fair use approach if declined
- Updated docs/CHANGELOG.md, AI-UPGRADES-LOG.md, STATUS.md

### Verification
- All 7 production pack files created: PASS
- No new numeric claims introduced: PASS (qualitative descriptions only)
- MVP tier sanity: PASS (12 B-roll shots, 5 graphics)
- Asset manifest includes all MVP items: PASS (verified table completeness)
- Documentation files updated: PASS

### Notes
- MVP-first philosophy: minimal viable assets for complete episode
- MVP budget: $0-1,400 (vs. $5,000+ for extended tier)
- MVP production time: 20-30 hours total (vs. 60-80 hours for extended)
- Asset manifest critical for licensing compliance
- Recording test plan provides human-executable procedure with clear pass/fail gates
- Press request template is optional; fair use approach is fallback
- Next steps: recording test → asset acquisition → final production

---

## [v0.3.5] - 2025-12-25

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-content-ep001-readthrough-revise-v1.md`

### Changes
- Conducted comprehensive read-through analysis of EP001 script v1
- Created `content/production/EP001-readthrough-log-v1.md`:
  - Section-by-section analysis (stumbles, awkward phrasing, flow issues)
  - Top 10 priority edits identified
  - Top 3 retention risks documented
  - Pacing analysis and pattern interrupt assessment
  - Energy curve evaluation
- Created `content/scripts/EP001-ups-routing-script-v2.md`:
  - Improved speakability (shorter sentences, clearer number delivery)
  - Reduced number density (cut ~130 words, improved pacing)
  - More conversational language ("eclectic" → "people who understood both math and reality")
  - Added pattern interrupts (questions, concrete examples)
  - Better transitions between sections
  - Removed rigid "First, Second, Third, Fourth" structure in recap
- Updated docs/CHANGELOG.md, AI-UPGRADES-LOG.md, STATUS.md

### Verification
- All new files created: PASS (read-through log, script v2)
- Citation integrity maintained: PASS (all [S#] markers verified)
- Word count reduction: PASS (2,480 → 2,350 words, -5%)
- Estimated duration improvement: PASS (16.5 min → 15.5 min)
- All "MUST CHANGE" edits from read-through log applied: PASS
- Documentation files updated: PASS

### Notes
- Read-through log serves as procedure template for future scripts
- Script v2 addresses speakability, retention, and flow issues while preserving structure
- No new sources required; all existing citations remain valid
- Ready for recording test and final micro-adjustments

---

## [v0.3.4] - 2025-12-25

### Agent
Claude Code (Claude Sonnet 4.5)

### Prompt Reference
`cc-saas202548-content-ep001-script-draft-v1.md`

### Changes
- Created full script draft for EP001 with comprehensive production artifacts:
  - **Script**: `content/scripts/EP001-ups-routing-script-v1.md` (~2,480 words, 16.5 min target)
  - **Sources**: `content/sources/EP001-ups-orion-sources-v1.md` (16 citations with URLs, dates, and notes)
  - **B-roll**: `content/broll/EP001-ups-orion-broll-v1.md` (27 shots with timing, licensing notes)
  - **Graphics**: `content/graphics/EP001-ups-orion-graphics-v1.md` (10 graphics/animations with specs)
  - **Pacing**: `content/production/EP001-readthrough-pacing-v1.md` (read-through procedure and timing)
- Conducted source research using WebSearch and WebFetch for all numeric claims
- Corrected factual inaccuracies from outline:
  - Package volume: 25M → 22.4M daily (2024 data)
  - Fleet size: 125K → 135K vehicles (2024 data)
  - Annual miles: 5.5B → 3.5B (5.5B is packages, not miles)
  - Dynamic routing: 2024 → 2020-2021 (correct timeline)
- Updated docs/CHANGELOG.md, AI-UPGRADES-LOG.md, STATUS.md

### Verification
- All 5 content files created: PASS
- All numeric claims have source markers [S#]: PASS (verified via grep)
- All source markers [S1]-[S16] exist in source pack: PASS
- Script word count within target range (2,100-3,200): PASS (2,480 words)
- Documentation files updated: PASS
- No secrets or sensitive data in files: PASS

### Notes
- Script follows outline structure but corrects factual errors identified during research
- Source pack includes "Risk Notes" section flagging weakly supported claims
- All graphics are specified as self-made or requiring licensing
- Pacing plan includes procedure for read-through and revision workflow
- Ready for next phase: script read-through, revisions, and recording

---

## [v0.3.3] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-branding-naming-split-template-propagation-v1.md` (Workstream 1)

### Changes
- Clarified brand vs channel naming split in branding docs
- Added `channel_name: "Quiet Business Machines"` to `BRAND.yml`
- Added Naming section to `BRAND.md` explaining the two-name convention
- Created evidence report: `docs/ops/reports/saas202548-branding-naming-split-2025-12-24.md`

### Verification
- `BRAND.yml` contains both `brand_name` and `channel_name`: PASS
- `BRAND.md` contains Naming section: PASS

### Notes
- Brand (visual identity): Case Study Library
- Channel (content positioning): Quiet Business Machines
- Rule: assets are versioned under `selected/v1/`; do not rename when channel name changes

---

## [v0.3.2] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-brand-name-apply-case-study-library-v1.md`

### Changes
- Confirmed canonical brand name: **Case Study Library**
- Verified PR #6 merge and all branding assets
- Created evidence report: `docs/ops/reports/saas202548-brand-name-case-study-library-2025-12-24.md`

### Verification
- `BRAND.yml` contains brand_name: "Case Study Library": PASS
- `BRAND.md` contains "Case Study Library": PASS
- All logo asset paths verified: PASS (5/5 checks)

### Notes
- "Case Study Library" = visual brand identity (logo, assets)
- "Quiet Business Machines" = channel name/content positioning
- Historical records preserved as-is

---

## [v0.3.1] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-brand-assets-integrate-logo-v1.md`

### Changes
- Added selected logo asset pack for Case Study Library brand
  - Path: `docs/branding/assets/logo/selected/v1/`
  - Source files: `original.jpeg`, `original-transparent.png`
  - PNG exports: full (4 sizes), icon (10 files incl. favicon), wordmark (3 sizes)
- Created brand documentation:
  - `docs/branding/BRAND.yml` - Machine-readable brand config
  - `docs/branding/BRAND.md` - Brand guidelines
  - `docs/branding/assets/README.md` - Assets organization
- Updated README.md with brand documentation links

### Verification
- `Test-Path docs\branding\assets\logo\selected\v1\source\original.jpeg`: PASS
- `Test-Path docs\branding\assets\logo\selected\v1\png\icon\logo-avatar-square-800.png`: PASS
- `Test-Path docs\branding\assets\logo\selected\v1\png\icon\favicon.ico`: PASS
- `Test-Path docs\branding\assets\logo\selected\v1\docs\USAGE.md`: PASS
- README links verified: PASS

### Notes
- Brand name confirmed: Case Study Library
- Logo pack source: Generated by ChatGPT
- 19 image files + 1 documentation file added

---

## [v0.3.0] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-kickoff-project-bootstrap-v1.md`

### Changes
- Completed kickoff baseline audit for saas202548 repo
- Created `docs/project/PROJECT-MEMORY-PACKET.md` - Quick-reference doc for repo onboarding
- Created `docs/ops/LOCAL-DEV-BOOTSTRAP.md` - Local environment setup guide
- Created `docs/ops/reports/saas202548-kickoff-audit-2025-12-24.md` - Full audit report
- Updated STATUS.md with version bump and audit notes
- Updated docs/CHANGELOG.md with v0.3.0 entry

### Verification
- All new files created successfully
- No secrets detected in repo
- Git working tree clean before changes
- Audit report captures all baseline gaps

### Notes
- Repo is a content ops repo, not a software application
- No code/tests/CI to verify (not applicable for this repo type)
- Top risk: No git remote configured (single point of failure)
- Recommended: Configure GitHub/GitLab remote as first priority
- Template propagation candidates identified for `.template-system-v2`:
  - PROJECT-MEMORY-PACKET.md pattern
  - Kickoff audit report template
  - LOCAL-DEV-BOOTSTRAP.md pattern

---

## [v0.2.1] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-docs-add-master-plan-workflow-v1.md`

### Changes
- Added Systemarium master plan, design, and workflow document (v1) to repo
  - Source: external file `systemarium-master-plan-design-workflow-v1 (1).md`
  - Target: `docs/systemarium/systemarium-master-plan-design-workflow-v1.md`
- Created `docs/systemarium/` directory for Systemarium project documentation
- Updated README.md with Docs section linking to master plan
- Updated docs/CHANGELOG.md with entry for this addition
- Updated STATUS.md with note about master plan doc

### Verification
- File exists at `docs/systemarium/systemarium-master-plan-design-workflow-v1.md`
- README.md contains link to master plan in Docs section
- docs/CHANGELOG.md contains v0.2.1 entry
- STATUS.md updated with master plan note

### Notes
- Document preserved as-is from source (no content modifications)
- No truncation or placeholder issues detected in source

---

## [v0.2.0] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
User direction: "Start with Quiet Business Machines..."

### Changes
- Defined channel positioning: "Quiet Business Machines"
  - Calm, sleepy documentaries about invisible business systems
  - Three content pillars: Systems Explained, Quiet Histories, Behind the Machines
  - "Sleepy" tone guidelines for late-night learning aesthetic
- Planned first 6 video episodes with detailed briefs:
  - EP001: How UPS Turned Routing Into a Machine
  - EP002: The Quiet Rules Behind Credit Card Payments
  - EP003: Why Toyota's System Was Hard to Copy
  - EP004: The Rise and Fall of Blackberry (Slow Documentary)
  - EP005: How Big Retail Inventory Actually Works
  - EP006: The History of the Barcode (and Why It Won)
- Updated tracking files with episode details, research needs, visual approaches
- Updated README, STATUS, and CHANGELOG to reflect positioning

### Verification
- CHANNEL-BRIEF.md updated with full positioning
- tracking/ideas/ideas.md contains 6 approved ideas
- tracking/episodes/episodes.md contains 6 episode briefs
- STATUS.md shows positioning and topics as decided

### Notes
- Topics selected for low controversy and infinite series potential
- Recommend starting with EP001 (UPS) or EP006 (Barcode) for accessible hooks
- "Slow Documentary" format introduced with EP004 (Blackberry)

---

## [v0.1.0] - 2025-12-24

### Agent
Claude Code (Claude Opus 4.5)

### Prompt Reference
`cc-saas202548-youtube-channel-scaffold-v1.md`

### Changes
- Created initial repository scaffold for YouTube channel operations
- Established directory structure:
  - `/docs` (ops, brand, content, legal, reports)
  - `/assets` (brand, thumbnails, overlays, broll, audio)
  - `/templates` (scripts, descriptions, thumbnails)
  - `/pipelines` (checklists, prompts)
  - `/prompts`
  - `/tracking` (ideas, episodes, experiments)
- Created core documentation files
- Created operational documentation
- Created content and brand documentation
- Created templates and checklists
- Set up tracking system
- Ran verification and captured evidence

### Verification
See `STATUS.md` under "Verification Evidence" for full verification results.

### Notes
- Scaffold follows Verdaio-style governance patterns
- Designed to be reproducible and template-ready
- No creative content produced; scaffold only
