# Nette Agent Skills

Agent skills for [Nette Framework](https://nette.org) development. These skills provide deep knowledge of Nette best practices, coding conventions, and framework APIs for AI coding assistants.

**Source:** Skills are automatically synced from [nette/claude-code](https://github.com/nette/claude-code)

## 🤖 Supported AI Assistants

The skills in this repository use a universal format compatible with various AI coding assistants:

- **[Antigravity](https://agentskills.io/)** - Google's AI coding assistant
- **[Cursor](https://cursor.com/)** - AI-powered code editor
- **[Claude Code](https://github.com/nette/claude-code)** - Use the official Nette plugin repository
- **Other agents** - Any AI assistant that supports skills/rules format

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

### Recommended: OpenSkills (Works with all AI assistants)

The easiest way to install Nette skills for any AI coding assistant:

```bash
# Install OpenSkills CLI
npm install -g openskills

# Install Nette skills
openskills install zraly/nette-agent-skills
```

OpenSkills automatically configures skills for Antigravity, Cursor, Windsurf, Aider, and other AI assistants.

**Learn more:** [OpenSkills Documentation](https://github.com/numman-ali/openskills)

### Manual Installation

For detailed setup instructions for specific AI assistants:

- **[Antigravity](ANTIGRAVITY.md)** - Google's AI coding assistant
- **[Cursor](CURSOR.md)** - AI-powered code editor
- **[Claude Code](https://github.com/nette/claude-code)** - Use the official Nette plugin

Manual installation involves cloning this repository and symlinking the `skills/` folder to your AI assistant's skills directory.

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
nette-agent-skills/
├── skills/                    # Universal skills (work with any AI assistant)
│   ├── commit-messages/
│   │   └── SKILL.md
│   ├── nette-forms/
│   │   ├── SKILL.md
│   │   ├── controls.md
│   │   ├── validation.md
│   │   └── rendering.md
│   └── ...
├── ANTIGRAVITY.md           # Antigravity installation guide
├── CURSOR.md                # Cursor installation guide
└── README.md                # This file
```

## 🔄 Keeping Skills Updated

### Using OpenSkills

```bash
openskills update zraly/nette-agent-skills
```

### Manual Installation

If you installed manually using git clone:

```bash
cd ~/nette-agent-skills  # or wherever you cloned the repository
git pull
```

### Source Synchronization

This repository automatically syncs daily with [nette/claude-code](https://github.com/nette/claude-code) via GitHub Actions, ensuring you always have the latest Nette best practices.

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
- [Cursor Documentation](https://cursor.com/docs)
- [Claude Code Plugin](https://github.com/nette/claude-code)
