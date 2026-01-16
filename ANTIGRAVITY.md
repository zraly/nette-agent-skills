# Antigravity Installation Guide

This guide shows how to install Nette skills for [Antigravity](https://agentskills.io/) - Google's AI coding assistant.

## What are Skills?

Skills are reusable packages of knowledge that extend what the AI agent can do. Each skill contains:
- Instructions for how to approach a specific type of task
- Best practices and conventions to follow
- Optional scripts and resources the agent can use

## Installation

### Option 1: OpenSkills (Recommended)

The easiest way to install Nette skills:

```bash
# Install OpenSkills CLI
npm install -g openskills

# Install Nette skills
openskills install zraly/nette-agent-skills
```

OpenSkills automatically configures skills for Antigravity and keeps them updated.

### Option 2: Manual Installation

Skills must be placed directly in `~/.gemini/antigravity/skills/` for Antigravity to detect them automatically.

**Using symlinks (recommended - easy to update):**

```bash
# Clone the repository
git clone https://github.com/zraly/nette-agent-skills ~/nette-agent-skills

# Create symlinks for each skill
cd ~/.gemini/antigravity/skills
ln -s ~/nette-agent-skills/skills/* .
```

**Direct copy:**

```bash
# Clone and copy skills directly
git clone https://github.com/zraly/nette-agent-skills /tmp/nette-agent-skills
cp -r /tmp/nette-agent-skills/skills/* ~/.gemini/antigravity/skills/
rm -rf /tmp/nette-agent-skills
```

### Project-Specific Installation

For project-specific skills, symlink into `.agent/skills/`:

```bash
# Clone the repository (if not already cloned)
git clone https://github.com/zraly/nette-agent-skills ~/nette-agent-skills

# Create project skills directory and symlink
cd your-project
mkdir -p .agent/skills
cd .agent/skills
ln -s ~/nette-agent-skills/skills/* .
```

## Verification

After installation, verify the skills are in the correct location:

```bash
ls -la ~/.gemini/antigravity/skills/
```

You should see skill folders **directly** in this directory:
- `commit-messages/`
- `php-coding-standards/`
- `nette-forms/`
- `latte-templates/`
- etc.

**Important:** Skills must be directly in `~/.gemini/antigravity/skills/`, not nested in subdirectories like `nette/skills/`.

## Usage

Skills work automatically! When you start a conversation with Antigravity:

1. The agent sees a list of available skills with their descriptions
2. If a skill looks relevant to your task, the agent reads the full instructions
3. The agent follows the skill's instructions while working

### Example Conversations

**Creating a form:**
```
You: Create a contact form with name, email, and message fields
Agent: [Automatically uses nette-forms skill]
```

**Writing code:**
```
You: Add a new User class
Agent: [Automatically uses php-coding-standards skill for proper formatting]
```

**Making a commit:**
```
You: Commit these changes
Agent: [Automatically uses commit-messages skill for proper commit message format]
```

### Explicit Skill Usage

You can also mention a skill explicitly:

```
You: Use the nette-database skill to create a query for all active users
```

## Updating Skills

To get the latest skills and best practices:

**If using OpenSkills:**

```bash
openskills update zraly/nette-agent-skills
```

**If using symlinks:**

```bash
cd ~/nette-agent-skills
git pull
# Symlinks automatically point to updated files
```

**If using direct copy:**

```bash
# Re-download and copy
git clone https://github.com/zraly/nette-agent-skills /tmp/nette-agent-skills
cp -r /tmp/nette-agent-skills/skills/* ~/.gemini/antigravity/skills/
rm -rf /tmp/nette-agent-skills
```

## Folder Structure

After installation, your directory should look like this:

```
~/.gemini/antigravity/skills/
├── commit-messages/
│   └── SKILL.md
├── nette-forms/
│   ├── SKILL.md
│   ├── controls.md
│   ├── validation.md
│   └── rendering.md
├── php-coding-standards/
│   └── SKILL.md
├── latte-templates/
│   ├── SKILL.md
│   ├── filters.md
│   └── tags.md
└── ... (other skills)
```

**Key point:** Each skill must be a **direct subdirectory** of `~/.gemini/antigravity/skills/`.

## Skill Structure

Each skill folder contains:
- **SKILL.md** (required) - Main instructions with YAML frontmatter:
  ```yaml
  ---
  name: skill-name
  description: What this skill does and when to use it
  ---
  ```
- Additional `.md` files (optional) - Detailed documentation and references

## Troubleshooting

### Skills not being detected?

1. **Check the directory structure:**
   ```bash
   ls ~/.gemini/antigravity/skills/
   ```
   You should see skill folders **directly** here (commit-messages, nette-forms, etc.), not nested in subdirectories.

2. **Verify SKILL.md files exist:**
   ```bash
   head -5 ~/.gemini/antigravity/skills/nette-forms/SKILL.md
   ```
   Should show YAML frontmatter with `name` and `description`.

3. **Restart your Antigravity session**

### Need to reinstall?

**If using symlinks:**
```bash
# Remove symlinks
cd ~/.gemini/antigravity/skills
rm commit-messages nette-* php-* latte-templates frontend-development 2>/dev/null || true

# Recreate
ln -s ~/nette-agent-skills/skills/* .
```

**If using direct copy:**
```bash
# Remove old skills
cd ~/.gemini/antigravity/skills
rm -rf commit-messages nette-* php-* latte-templates frontend-development

# Recopy
cp -r ~/nette-agent-skills/skills/* .
```

## More Information

- [Antigravity Agent Skills Documentation](https://agentskills.io/)
- [Nette Framework](https://nette.org)
- [Source: nette/claude-code](https://github.com/nette/claude-code)
