# Nette Skills for AI Coding Assistants

AI agent skills for [Nette Framework](https://nette.org) development. These skills provide deep knowledge of Nette best practices, coding conventions, and framework APIs for various AI coding assistants.

**Source:** Skills are automatically synced from [nette/claude-code](https://github.com/nette/claude-code)

## 🤖 Supported AI Assistants

The skills in this repository use a universal format compatible with various AI coding assistants:

- **[Antigravity](https://agentskills.io/)** - Google's AI coding assistant
- **[Claude Code](https://claude.com/product/claude-code)** - Anthropic's AI coding assistant
- **Other agents** - Any AI assistant that supports the Agent Skills standard (SKILL.md with YAML frontmatter)

## 📦 Available Skills

### Nette Development
- **commit-messages** - Commit message conventions (lowercase, past tense, no periods)
- **php-coding-standards** - PHP coding standards (tabs, strict_types, naming conventions)
- **php-doc** - PHPDoc documentation rules

### Nette Framework
- **neon-format** - NEON syntax and usage
- **nette-architecture** - Application architecture (presenters, modules, structure)
- **nette-configuration** - DI configuration, .neon files, autowiring
- **nette-database** - Nette Database, Selection API, ActiveRow
- **nette-forms** - Forms, controls, validation, rendering
- **nette-schema** - Data validation using Nette Schema
- **nette-testing** - Writing tests with Nette Tester
- **nette-utils** - Utility classes (Arrays, Strings, FileSystem, Image, etc.)
- **latte-templates** - Latte templates, syntax, tags, filters
- **frontend-development** - Frontend development with Vite, SCSS, JavaScript

## 🚀 Quick Start

### For Antigravity

```bash
# Global installation (recommended)
git clone https://github.com/zraly/nette-ai-skills ~/.gemini/antigravity/skills/nette

# Or project-specific
git clone https://github.com/zraly/nette-ai-skills .agent/skills/nette
```

See [ANTIGRAVITY.md](ANTIGRAVITY.md) for detailed instructions.

### For Claude Code

```
/plugin marketplace add nette/claude-code
/plugin install nette@nette
```

See [CLAUDE-CODE.md](CLAUDE-CODE.md) for detailed instructions.

### For Other AI Assistants

The skills follow the universal Agent Skills format:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/zraly/nette-ai-skills
   ```

2. **Copy or symlink the `skills/` folder** to your AI assistant's skills directory

3. **Each skill contains:**
   - `SKILL.md` with YAML frontmatter (name, description)
   - Optional additional `.md` files with detailed documentation

## 📖 Skill Format

Each skill uses a standard format compatible with multiple AI assistants:

```yaml
---
name: skill-name
description: What this skill does and when to use it
---

# Skill Content

Instructions and documentation...
```

### Repository Structure

```
nette-ai-skills/
├── skills/                    # Universal skills (work with any AI assistant)
│   ├── commit-messages/
│   │   └── SKILL.md
│   ├── nette-forms/
│   │   ├── SKILL.md
│   │   ├── controls.md
│   │   ├── validation.md
│   │   └── rendering.md
│   └── ...
├── claude-code/              # Claude Code specific plugins
│   └── plugins/
│       ├── nette/
│       └── nette-dev/
├── ANTIGRAVITY.md           # Antigravity installation guide
├── CLAUDE-CODE.md           # Claude Code installation guide
└── README.md                # This file
```

## 🔄 Keeping Skills Updated

### Automatic Updates

This repository automatically syncs daily with [nette/claude-code](https://github.com/nette/claude-code) via GitHub Actions.

**Update your local copy:**

```bash
cd ~/.gemini/antigravity/skills/nette  # or wherever you installed
git pull
```

### Manual Sync

Repository maintainers can manually sync:

```bash
./sync-skills.sh
```

## 🤝 Contributing

Skills are maintained in the [nette/claude-code](https://github.com/nette/claude-code) repository. To contribute:

1. Fork [nette/claude-code](https://github.com/nette/claude-code)
2. Make your changes to the skills
3. Submit a pull request to the source repository
4. Changes will be automatically synced to this repository

## 📄 License

MIT License - see the [nette/claude-code](https://github.com/nette/claude-code) repository for details.

## 🔗 Links

- [Nette Framework](https://nette.org)
- [Source Repository: nette/claude-code](https://github.com/nette/claude-code)
- [Antigravity Documentation](https://agentskills.io/)
- [Claude Code Documentation](https://claude.com/product/claude-code)
