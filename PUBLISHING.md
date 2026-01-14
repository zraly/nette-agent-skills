# Publishing Guide

This document describes how to publish this repository to GitHub.

## Prerequisites

1. GitHub account
2. Git installed locally
3. GitHub CLI (`gh`) installed (optional, but recommended)

## Steps to Publish

### Option 1: Using GitHub CLI (Recommended)

```bash
cd /tmp/nette-ai-skills

# Create a new GitHub repository
gh repo create zraly/nette-ai-skills \
  --public \
  --description "Universal AI agent skills for Nette Framework - supports Antigravity, Claude Code, and other AI coding assistants" \
  --source=. \
  --remote=origin \
  --push
```

### Option 2: Manual Setup

1. **Create a new repository on GitHub:**
   - Go to https://github.com/new
   - Repository name: `ai-skills`
   - Organization: `nette` (or your username)
   - Description: "AI agent skills for Nette Framework - supports Antigravity, Claude Code, and other AI coding assistants"
   - Public repository
   - Do NOT initialize with README (we already have one)

2. **Push to GitHub:**

```bash
cd /tmp/nette-ai-skills

# Add GitHub remote
git remote add origin https://github.com/zraly/nette-ai-skills.git

# Push to GitHub
git push -u origin main
```

## After Publishing

### 1. Configure Repository Settings

- **About Section:**
  - Add topics: `nette`, `ai`, `claude-code`, `antigravity`, `skills`, `agent`, `nette-framework`
  - Add website: https://nette.org

- **Enable GitHub Actions:**
  - The sync workflow should run automatically
  - Check: Settings → Actions → General → Allow all actions

### 2. Test Automatic Sync

Trigger the sync workflow manually to ensure it works:

```bash
gh workflow run sync-skills.yml
```

Or via web UI: Actions → Sync Skills → Run workflow

### 3. Create Releases (Optional)

Create versioned releases for stability:

```bash
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

### 4. Add to Nette Documentation

Update Nette documentation to mention this repository:
- Add link in https://doc.nette.org
- Add to nette.org homepage under "Tools & Resources"

## Installation URLs

After publishing, users can install with:

### Antigravity

```bash
# Global installation
git clone https://github.com/zraly/nette-ai-skills ~/.gemini/antigravity/skills/nette

# Project-specific
git clone https://github.com/zraly/nette-ai-skills .agent/skills/nette
```

### Claude Code

The Claude Code plugins remain available via the original marketplace:

```
/plugin marketplace add nette/claude-code
/plugin install nette@nette
```

## Maintenance

### Automatic Updates

The repository automatically syncs daily via GitHub Actions. No manual intervention needed.

### Manual Sync

If needed, you can manually trigger a sync:

```bash
./sync-skills.sh
git add .
git commit -m "synced skills from nette/claude-code"
git push
```

## Monitoring

Check the sync status:
- GitHub Actions tab: https://github.com/zraly/nette-ai-skills/actions
- Email notifications for failed workflows

## Support

- Issues: https://github.com/zraly/nette-ai-skills/issues
- Source: https://github.com/nette/claude-code
- Nette Forum: https://forum.nette.org
