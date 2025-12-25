# Local Dev Bootstrap

> How to set up your local environment to work with this content operations repo.

## Prerequisites

### Required
- Git (any recent version)
- Text editor (VS Code recommended)

### Optional
- Markdown preview extension for your editor
- Git GUI (GitHub Desktop, GitKraken, etc.)

## Setup Steps

### 1. Clone the Repository

```powershell
cd C:\devop
git clone <remote-url> saas202548
cd saas202548
```

Note: Remote URL is not yet configured. If cloning from an existing copy, use:
```powershell
Copy-Item -Recurse <source> C:\devop\saas202548
```

### 2. Verify Structure

```powershell
# Check all required directories exist
dir

# Expected output:
# AI-UPGRADES-LOG.md  docs       prompts    STATUS.md  tracking
# assets              pipelines  README.md  templates
```

### 3. Configure Git Identity (if needed)

```powershell
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### 4. Review Key Documents

Read these files to understand the project:
1. `README.md` - What this repo is
2. `STATUS.md` - Current progress
3. `docs/content/CHANNEL-BRIEF.md` - Channel positioning
4. `docs/ops/WEEKLY-RHYTHM.md` - Weekly workflow

## External Services Setup

### Google Drive
1. Request access to the `Quiet Business Machines/` folder from channel owner
2. Set up Google Drive sync (optional) for local access to assets
3. See `docs/ops/ASSET-STORAGE.md` for folder structure

### YouTube Studio
1. Request channel access from channel owner
2. Bookmark: https://studio.youtube.com

## Workflow Overview

### Creating New Content

1. Add idea to `tracking/ideas/ideas.md`
2. If approved, add to `tracking/episodes/episodes.md`
3. Use template from `templates/scripts/script-template-v1.md`
4. Follow `pipelines/checklists/publish-checklist-v1.md` before publishing

### Making Changes to Repo

1. Create a feature branch: `git checkout -b <branch-name>`
2. Make changes
3. Commit with clear message
4. Update relevant docs (STATUS.md, CHANGELOG.md if needed)
5. Merge to main (or create PR if using remote)

## Troubleshooting

### "Not a git repository"
You're not in the repo directory. Run:
```powershell
cd C:\devop\saas202548
```

### "No remote configured"
This is expected. Remote has not been set up yet. To add one:
```powershell
git remote add origin <remote-url>
```

## Verification

Run these commands to verify your setup:

```powershell
# Should show clean working tree
git status

# Should show main branch
git branch --show-current

# Should show all directories
dir
```

If all commands pass, you're ready to work.
