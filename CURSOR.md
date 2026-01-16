# Cursor Installation Guide

This guide shows how to use Nette skills with [Cursor](https://cursor.com/) - the AI-powered code editor.

## What are Cursor Skills?

Cursor automatically discovers and loads skills from designated directories. Skills are presented to the Agent, which determines their relevance based on context. You can also manually trigger skills by typing "/" in the Agent chat.

## Installation

### Option 1: OpenSkills (Recommended)

The easiest way to install Nette skills:

```bash
# Install OpenSkills CLI
npm install -g openskills

# Install Nette skills
openskills install zraly/nette-agent-skills
```

OpenSkills automatically configures skills for Cursor and keeps them updated.

### Option 2: Manual Installation

**Project-Level Installation:**

Install skills for a specific Nette project:

```bash
cd your-nette-project

# Create Cursor skills directory
mkdir -p .cursor/skills

# Clone Nette skills
cd .cursor/skills
git clone https://github.com/zraly/nette-agent-skills nette
```

**Global Installation:**

Install skills globally for all your projects:

```bash
# Create global Cursor skills directory
mkdir -p ~/.cursor/skills

# Clone Nette skills
cd ~/.cursor/skills
git clone https://github.com/zraly/nette-agent-skills nette
```

## Verification

After installation, verify the skills are loaded:

1. Open Cursor
2. Go to **Settings** → **Rules** → **Agent Decides**
3. You should see Nette skills listed (e.g., "nette-forms", "php-coding-standards", etc.)

Or check the directory structure:

```bash
# Project-level
ls .cursor/skills/nette/skills/

# Global
ls ~/.cursor/skills/nette/skills/
```

You should see folders like:
- `commit-messages`
- `php-coding-standards`
- `nette-forms`
- `latte-templates`
- etc.

## How It Works

### Automatic Discovery

When Cursor launches, it automatically:
1. Discovers skills from `.cursor/skills/` (project) and `~/.cursor/skills/` (global)
2. Presents available skills to the Agent
3. Agent determines which skills are relevant based on your code context

### Manual Invocation

You can explicitly invoke a skill:
1. Open Agent chat in Cursor
2. Type `/` to see available skills
3. Select a Nette skill (e.g., `/nette-forms`)
4. The Agent will follow that skill's instructions

## Usage Examples

### Example 1: Creating a Form

```
You: Create a registration form with username, email, and password
Agent: [Automatically applies nette-forms skill]
```

The Agent recognizes you're working with forms and applies the nette-forms skill guidelines.

### Example 2: Writing Code

```
You: Add a User class with getName() method
Agent: [Automatically applies php-coding-standards skill]
```

The Agent follows PHP coding standards (tabs, strict_types, naming conventions).

### Example 3: Manual Skill Selection

```
You: /nette-database
You: How do I query all active users?
Agent: [Explicitly uses nette-database skill to answer]
```

## Skill Locations

Cursor loads skills from these locations:

| Scope | Location | Use Case |
|-------|----------|----------|
| **Project-level** | `.cursor/skills/` | Project-specific skills |
| **Project-level** | `.claude/skills/` | Alternative location |
| **Global** | `~/.cursor/skills/` | Skills for all projects |
| **Global** | `~/.claude/skills/` | Alternative location |

**Recommendation:** Use global installation (`~/.cursor/skills/`) for Nette skills so they're available in all your Nette projects.

## Structure After Installation

### Project-Level
```
your-project/
├── .cursor/
│   └── skills/
│       └── nette/
│           ├── skills/
│           │   ├── commit-messages/
│           │   │   └── SKILL.md
│           │   ├── nette-forms/
│           │   │   ├── SKILL.md
│           │   │   ├── controls.md
│           │   │   └── ...
│           │   └── ...
│           └── README.md
└── your-code/
```

### Global
```
~/.cursor/
└── skills/
    └── nette/
        ├── skills/
        │   ├── commit-messages/
        │   ├── nette-forms/
        │   └── ...
        └── README.md
```

## Available Nette Skills

All 13 Nette skills are automatically available:

### Nette Development
- **commit-messages** - Commit message conventions
- **php-coding-standards** - PHP coding standards
- **php-doc** - PHPDoc documentation

### Nette Framework
- **neon-format** - NEON syntax
- **nette-architecture** - Application architecture
- **nette-configuration** - DI configuration
- **nette-database** - Database layer
- **nette-forms** - Forms
- **nette-schema** - Data validation
- **nette-testing** - Testing
- **nette-utils** - Utility classes
- **latte-templates** - Latte templates
- **frontend-development** - Frontend development

## Updating Skills

To get the latest Nette conventions:

**If using OpenSkills:**

```bash
openskills update zraly/nette-agent-skills
```

**If using manual installation:**

```bash
# Project-level
cd .cursor/skills/nette
git pull

# Global
cd ~/.cursor/skills/nette
git pull
```

Then restart Cursor to reload the skills.

## .gitignore

If using project-level installation, add to `.gitignore`:

```gitignore
# Cursor skills (users should install globally)
.cursor/skills/
```

Alternatively, commit `.cursor/skills/nette` to share Nette skills with your team.

## Troubleshooting

### Skills not appearing in Cursor?

1. **Check directory structure:**
   ```bash
   ls ~/.cursor/skills/nette/skills/
   ```
   Should show skill folders (commit-messages, nette-forms, etc.)

2. **Verify SKILL.md files:**
   ```bash
   cat ~/.cursor/skills/nette/skills/nette-forms/SKILL.md | head
   ```
   Should show YAML frontmatter with `name` and `description`

3. **Restart Cursor** - Close and reopen Cursor to reload skills

4. **Check Settings:**
   - Go to Settings → Rules → Agent Decides
   - Nette skills should be listed

### Skills not being applied?

- The Agent automatically chooses skills based on context
- For explicit usage, type `/` in Agent chat and select the skill
- Some skills may need specific code context to be relevant

### Multiple skill locations?

Cursor loads from both `.cursor/skills/` and `.claude/skills/`. Choose one to avoid duplicates:
- Use `.cursor/skills/` for Cursor-specific setup
- Use `.claude/skills/` for compatibility with Claude Code

## Advanced Usage

### Combining with Custom Skills

You can add your own project-specific skills alongside Nette skills:

```bash
# Nette skills (global)
~/.cursor/skills/nette/

# Your custom skills (project)
your-project/.cursor/skills/
├── nette/           # Nette skills (optional if global)
└── my-custom-skill/ # Your custom skill
    └── SKILL.md
```

### Selective Skill Installation

Instead of cloning the entire repository, you can copy specific skills:

```bash
mkdir -p ~/.cursor/skills
cd ~/.cursor/skills
git clone https://github.com/zraly/nette-agent-skills nette-temp

# Copy only needed skills
mkdir -p nette/skills
cp -r nette-temp/skills/nette-forms nette/skills/
cp -r nette-temp/skills/php-coding-standards nette/skills/

rm -rf nette-temp
```

## More Information

- [Cursor Skills Documentation](https://cursor.com/docs/context/skills)
- [Cursor Documentation](https://cursor.com/docs)
- [Nette Framework](https://nette.org)
- [Source: nette/claude-code](https://github.com/nette/claude-code)
- [All Skills](https://github.com/zraly/nette-agent-skills)
