# Antigravity Installation Guide

This guide shows how to install Nette skills for [Antigravity](https://agentskills.io/) - Google's AI coding assistant.

## What are Skills?

Skills are reusable packages of knowledge that extend what the AI agent can do. Each skill contains:
- Instructions for how to approach a specific type of task
- Best practices and conventions to follow
- Optional scripts and resources the agent can use

## Installation

### Global Installation (Recommended)

Skills installed globally work across all your projects:

```bash
cd ~/.gemini/antigravity/skills
git clone https://github.com/zraly/nette-ai-skills nette
```

### Project-Specific Installation

For project-specific skills:

```bash
cd your-project
mkdir -p .agent/skills
cd .agent/skills
git clone https://github.com/zraly/nette-ai-skills nette
```

## Verification

After installation, you can verify the skills are available:

```bash
ls -la ~/.gemini/antigravity/skills/nette/antigravity/skills/
```

You should see folders like:
- `commit-messages`
- `php-coding-standards`
- `nette-forms`
- `latte-templates`
- etc.

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

```bash
cd ~/.gemini/antigravity/skills/nette
git pull
```

## Folder Structure

```
~/.gemini/antigravity/skills/nette/
├── README.md
├── ANTIGRAVITY.md (this file)
└── antigravity/
    └── skills/
        ├── commit-messages/
        │   └── SKILL.md
        ├── nette-forms/
        │   ├── SKILL.md
        │   ├── controls.md
        │   ├── validation.md
        │   └── rendering.md
        └── ... (other skills)
```

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

### Skills not working?

1. Check the installation path:
   ```bash
   ls ~/.gemini/antigravity/skills/nette/antigravity/skills/
   ```

2. Ensure SKILL.md files have proper frontmatter:
   ```bash
   head -5 ~/.gemini/antigravity/skills/nette/antigravity/skills/nette-forms/SKILL.md
   ```

3. Restart your Antigravity session

### Need to reinstall?

```bash
rm -rf ~/.gemini/antigravity/skills/nette
cd ~/.gemini/antigravity/skills
git clone https://github.com/zraly/nette-ai-skills nette
```

## More Information

- [Antigravity Agent Skills Documentation](https://agentskills.io/)
- [Nette Framework](https://nette.org)
- [Source: nette/claude-code](https://github.com/nette/claude-code)
