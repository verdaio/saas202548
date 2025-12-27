# Azure TTS Voice Bake-Off Evidence Report
## saas202548 - Case Study Library

**Date:** 2025-12-27
**Status:** ✓ COMPLETE (7 voices generated)
**Related Reports:**
- [Azure TTS Provisioning](azure-tts-provision-dev-2025-12-27.md)
- [Azure TTS Naming Audit](azure-tts-naming-audit-2025-12-27.md)

---

## Executive Summary

Full voice bake-off completed for EP001 test excerpt using Azure Speech Service. Generated audio samples for 7 voices (4 British, 2 American, 1 Australian) to support voice selection for Season 1 production.

**Key Results:**
- ✓ All 7 voices synthesized successfully
- ✓ Deterministic SHA256 manifest generated
- ✓ No audio files committed to git (stored in media warehouse)
- ✓ Total size: ~30 MB (7 audio files)

---

## Voices Tested

| Voice | Accent | Gender | File Size (bytes) | Status |
|-------|--------|--------|-------------------|--------|
| en-GB-RyanNeural | British | Male | 4,418,822 | ✓ |
| en-GB-ThomasNeural | British | Male | 4,369,448 | ✓ |
| en-GB-SoniaNeural | British | Female | 4,191,816 | ✓ |
| en-US-GuyNeural | American | Male | 4,349,984 | ✓ |
| en-US-AriaNeural | American | Female | 4,503,852 | ✓ |
| en-US-JennyNeural | American | Female | 4,396,428 | ✓ |
| en-AU-WilliamNeural | Australian | Male | 3,916,962 | ✓ |

**Total:** 7 voices, 30,147,312 bytes (~30 MB)

---

## Test Configuration

### Test Excerpt
- **File:** `content/production/ep001-tts-test-excerpt-v1.md`
- **Content Hash:** `B14A538BA42B724B5A0CF6408CB2F2F8` (MD5)
- **Length:** ~200 words, 60-90 seconds
- **Test Elements:** UPS acronym, ORION pronunciation, large numbers, technical terms

### Azure Speech Configuration
- **Region:** eastus2
- **Endpoint:** `https://eastus2.tts.speech.microsoft.com`
- **Format:** riff-24khz-16bit-mono-pcm (WAV)
- **SSML Features:**
  - Prosody rate: 0.95
  - UPS: spelled out (<say-as interpret-as="characters">)
  - ORION: phonetic pronunciation (IPA)
  - Paragraph breaks: 500ms

### Credentials
- **Key Vault:** `kv-vrd-202548-dev-01`
- **Secrets Used:**
  - `azure-speech-key`
  - `azure-speech-region`

---

## Output Files

### Media Warehouse Location
```
C:\devop\media\saas202548\tts-bakeoff\2025-12-26\
```

**IMPORTANT:** Audio files are stored OUTSIDE git repository per media warehouse conventions.

### File Listing

```
ep001-excerpt__en-AU-WilliamNeural__style-default.wav    3,916,962 bytes
ep001-excerpt__en-GB-RyanNeural__style-default.wav       4,418,822 bytes
ep001-excerpt__en-GB-SoniaNeural__style-default.wav      4,191,816 bytes
ep001-excerpt__en-GB-ThomasNeural__style-default.wav     4,369,448 bytes
ep001-excerpt__en-US-AriaNeural__style-default.wav       4,503,852 bytes
ep001-excerpt__en-US-GuyNeural__style-default.wav        4,349,984 bytes
ep001-excerpt__en-US-JennyNeural__style-default.wav      4,396,428 bytes
manifest.json                                             (JSON metadata)
manifest.sha256.tsv                                       (SHA256 hashes)
```

### SHA256 Manifest
**File:** `C:\devop\media\saas202548\tts-bakeoff\2025-12-26\manifest.sha256.tsv`

SHA256 hashes for file integrity verification:
```
ep001-excerpt__en-AU-WilliamNeural__style-default.wav    3ae3f6edd56b6518480f91a4a293181fa93135f168b764674e9c43dcab6eaf91
ep001-excerpt__en-GB-RyanNeural__style-default.wav       a2e9382bd8b8575e2ccf91ee5e2093d2ff159a586da34eb2cf9e67eecda06488
ep001-excerpt__en-GB-SoniaNeural__style-default.wav      fc30b63c423ebb7a6c25d789c5b180b6f0cf2ebeada3d8917e2efb9a537e6fa7
ep001-excerpt__en-GB-ThomasNeural__style-default.wav     f7c396ba5a393b551759c658113af1367d8057e7465c9f943a271b277d9e31b8
ep001-excerpt__en-US-AriaNeural__style-default.wav       82798cc38133f2213cb4a01de53bc1ce458b8fa0470a5bcf3b2c7029363ed451
ep001-excerpt__en-US-GuyNeural__style-default.wav        1282150943d1e5b90c285d976c3c3f4b6eb83456807f92135c3b87c67c09a04c
ep001-excerpt__en-US-JennyNeural__style-default.wav      2df9e2d79b8980ca289440c02678dd465d2b0be0b29eeeb38ed7ed6b934848f0
```

**Note:** SHA256 hashes provided for integrity verification. Hashes are safe to commit (no sensitive data).

---

## Execution Timeline

| Time | Event |
|------|-------|
| 09:06:29 | Preflight checks (output directory safety, excerpt loading) |
| 09:06:29 | Retrieved Azure credentials from Key Vault |
| 09:06:34 | Started voice synthesis (7 voices) |
| 09:06:35 | en-GB-RyanNeural ✓ |
| 09:06:42 | en-GB-ThomasNeural ✓ |
| 09:06:47 | en-GB-SoniaNeural ✓ |
| 09:06:49 | en-US-GuyNeural ✓ |
| 09:06:51 | en-US-AriaNeural ✓ |
| 09:06:53 | en-US-JennyNeural ✓ |
| 09:06:58 | en-AU-WilliamNeural ✓ |
| 09:06:59 | Manifest written |
| 09:06:59 | Bake-off complete (success: 7, failures: 0) |

**Total Duration:** ~30 seconds

---

## Errors and Retries

**None.** All 7 voices synthesized successfully on first attempt.

---

## Git Safety Verification

- ✓ Output directory verified as OUTSIDE git repository
- ✓ No audio files (.wav) added to git staging area
- ✓ No audio files (.wav) committed to repository
- ✓ Only documentation and manifest references committed

**Git Safety Check:**
```powershell
git status
# Expected: no *.wav files in "Changes not staged" or "Changes to be committed"
```

---

## Tool Used

**Script:** `tools/tts/azure-speech-bakeoff.ps1`
**Version:** As of commit 3ff0c93
**Key Vault Name:** `kv-vrd-202548-dev-01` (updated from non-compliant default)

**Command:**
```powershell
.\tools\tts\azure-speech-bakeoff.ps1 -Voices @(
  "en-GB-RyanNeural",
  "en-GB-ThomasNeural",
  "en-GB-SoniaNeural",
  "en-US-GuyNeural",
  "en-US-AriaNeural",
  "en-US-JennyNeural",
  "en-AU-WilliamNeural"
)
```

---

## Next Steps

1. **Voice Selection (Manual):**
   - Use Voice Decision Pack worksheet (`docs/production/AI-VOICE-DECISION-PACK-ep001-v1.md`)
   - Listen to all 7 audio samples
   - Score against rubric dimensions (naturalness, pronunciation, fatigue, consistency)
   - Select final voice for Season 1 production

2. **Voice Freeze:**
   - Update `docs/production/VOICE-FREEZE-RECORD-v1.md` with selected voice
   - Lock voice for EP001-EP004 (Season 1 Phase 1)

3. **Setup Gate:**
   - Mark "Voice bake-off done; voice frozen" item as complete in `docs/ops/SEASON-1-SETUP-GATE.md`

---

## Cost Estimate

**Azure Speech Service (S0 SKU):**
- 7 TTS requests @ ~$1.00 per 1,000 transactions
- Estimated cost: < $0.01 USD

---

## Sign-Off

**Executed By:** Claude Code (Claude Sonnet 4.5)
**Verified By:** Evidence documented in this report
**Status:** ✓ COMPLETE - All voices generated successfully, no errors

**Confirmation Checklist:**
- [x] 7 voices synthesized
- [x] SHA256 manifest generated
- [x] No audio files in git
- [x] Documentation updated
- [x] Voice Decision Pack ready for human listening
