#!/bin/bash
set -e

# Sync script for Nette AI Skills
# Synchronizes skills from nette/claude-code to this repo

REPO_URL="https://github.com/nette/claude-code"
TMP_DIR=$(mktemp -d)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔄 Syncing Nette skills from $REPO_URL..."

# Clone the source repository
git clone --depth 1 "$REPO_URL" "$TMP_DIR"

# Sync skills
echo "📦 Syncing skills..."
SKILLS_DIR="$SCRIPT_DIR/skills"
mkdir -p "$SKILLS_DIR"

# List of skills to sync
NETTE_DEV_SKILLS=(
	"commit-messages"
	"php-coding-standards"
	"php-doc"
)

NETTE_SKILLS=(
	"frontend-development"
	"latte-templates"
	"neon-format"
	"nette-architecture"
	"nette-configuration"
	"nette-database"
	"nette-forms"
	"nette-schema"
	"nette-testing"
	"nette-utils"
)

# Sync nette-dev skills
for skill in "${NETTE_DEV_SKILLS[@]}"; do
	echo "  • $skill"
	rm -rf "$SKILLS_DIR/$skill"
	mkdir -p "$SKILLS_DIR/$skill"
	cp -r "$TMP_DIR/plugins/nette-dev/skills/$skill/"* "$SKILLS_DIR/$skill/" 2>/dev/null || true
done

# Sync nette skills
for skill in "${NETTE_SKILLS[@]}"; do
	echo "  • $skill"
	rm -rf "$SKILLS_DIR/$skill"
	mkdir -p "$SKILLS_DIR/$skill"
	cp -r "$TMP_DIR/plugins/nette/skills/$skill/"* "$SKILLS_DIR/$skill/" 2>/dev/null || true
done

# Sync Claude Code plugins (keep original structure)
echo "📦 Syncing Claude Code plugins..."
CLAUDE_DIR="$SCRIPT_DIR/claude-code/plugins"
mkdir -p "$CLAUDE_DIR"
cp -r "$TMP_DIR/plugins/"* "$CLAUDE_DIR/"

# Cleanup
rm -rf "$TMP_DIR"

echo "✅ Sync completed!"
echo ""
echo "Synced:"
echo "  - Skills: $(ls -1 "$SKILLS_DIR" | wc -l | tr -d ' ') skills"
echo "  - Claude Code plugins: $(ls -1 "$CLAUDE_DIR" | wc -l | tr -d ' ') plugins"
