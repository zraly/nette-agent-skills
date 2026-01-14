# Nette Skills for AI Coding Assistants

AI agent skills for [Nette Framework](https://nette.org) development. These skills provide deep knowledge of Nette best practices, coding conventions, and framework APIs for various AI coding assistants.

**Source:** Skills are automatically synced from [nette/claude-code](https://github.com/nette/claude-code)

## 🤖 Supported AI Assistants

- **[Antigravity](https://agentskills.io/)** - Google's AI coding assistant
- **[Claude Code](https://claude.com/product/claude-code)** - Anthropic's AI coding assistant

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

## 🚀 Installation

### Antigravity

Clone this repository into your Antigravity skills directory:

```bash
git clone https://github.com/zraly/nette-ai-skills ~/.gemini/antigravity/skills/nette
```

Or for a specific project only:

```bash
git clone https://github.com/zraly/nette-ai-skills .agent/skills/nette
```

**Update skills:**

```bash
cd ~/.gemini/antigravity/skills/nette
git pull
```

### Claude Code

Add the Nette marketplace to Claude Code:

```
/plugin marketplace add nette/claude-code
```

Then install the plugin:

```
/plugin install nette@nette
```

For Nette Framework contributors:

```
/plugin install nette-dev@nette
```

## 📚 Usage

### Antigravity

Skills are automatically available in all conversations. The agent will automatically select relevant skills based on the task context.

You can also mention a skill explicitly:
- "Use the nette-forms skill to create a contact form"
- "Follow php-coding-standards when writing this class"

### Claude Code

Skills are automatically loaded when working with Nette projects. You can invoke skills using the `/` prefix:

```
/nette-forms
/php-coding-standards
/commit-messages
```

## 🔄 Keeping Skills Updated

This repository automatically syncs with [nette/claude-code](https://github.com/nette/claude-code) to stay current with the latest Nette conventions and best practices.

### Automatic Sync (GitHub Actions)

Skills are automatically synced daily via GitHub Actions. You just need to pull the latest changes:

```bash
# Antigravity users
cd ~/.gemini/antigravity/skills/nette
git pull
```

### Manual Sync

To manually sync skills from the source repository:

```bash
./sync-skills.sh
```

## 📖 Documentation

Each skill contains:
- `SKILL.md` - Main instructions for the AI agent (required)
- Additional `.md` files - Detailed documentation and references (optional)

### Skill Structure

```
antigravity/skills/
├── nette-forms/
│   ├── SKILL.md           # Main skill instructions
│   ├── controls.md        # Form controls reference
│   ├── validation.md      # Validation rules
│   └── rendering.md       # Rendering patterns
└── php-coding-standards/
    └── SKILL.md
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
