# TTS Bake-Off Run — 2025-12-26

**Status:** Pending execution
**Purpose:** Phase 0 Setup Gate — Azure Speech voice evaluation
**Excerpt:** EP001 test excerpt (v1)

---

## Media Warehouse Location

**Audio files stored at (local, NOT in git):**
```
C:\devop\media\saas202548\tts-bakeoff\2025-12-26\
```

**Contents:**
- `manifest.json` — Complete metadata for this run
- `ep001-excerpt__<voice>__style-default.wav` — Audio samples (7 voices)

---

## Voices Tested

Default configuration includes:

**British Male (primary candidates):**
1. `en-GB-RyanNeural`
2. `en-GB-ThomasNeural`
3. `en-GB-AlfieNeural`
4. `en-GB-EthanNeural`
5. `en-GB-NoahNeural`

**Alternates (comparison):**
6. `en-US-GuyNeural` (American)
7. `en-AU-WilliamNeural` (Australian)

---

## How to Run

```powershell
# From repo root
.\tools\tts\azure-speech-bakeoff.ps1
```

Prerequisites:
- Azure CLI authenticated (`az login`)
- Access to `kv-saas202548-prodops` Key Vault
- Secrets: `azure-speech-key`, `azure-speech-region`

See: `tools/tts/README.md` for full documentation

---

## Next Steps

After audio generation:

1. **Listen** to all samples in media warehouse
2. **Evaluate** for tone, clarity, pacing, pronunciation
3. **Record decision** in `docs/production/VOICE-FREEZE-RECORD-v1.md`
4. **Update** AI Voice Decision Results if needed

---

## Important

**NO AUDIO FILES ARE COMMITTED TO GIT.**

All `.wav` files are generated locally in the media warehouse. Only this text-based manifest pointer is tracked in the repository.

See: `docs/ops/MEDIA-WAREHOUSE-PATHS.md` for media storage conventions.
