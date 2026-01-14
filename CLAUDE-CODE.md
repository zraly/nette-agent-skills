# Claude Code Installation Guide

This guide shows how to install Nette plugins for [Claude Code](https://claude.com/product/claude-code) - Anthropic's AI coding assistant.

## Installation

### Method 1: Using Plugin Marketplace (Recommended)

The easiest way is to use Claude Code's plugin marketplace:

```
/plugin marketplace add nette/claude-code
/plugin install nette@nette
```

For Nette Framework contributors:

```
/plugin install nette-dev@nette
```

### Method 2: Manual Installation

If you want to use the plugins from this repository directly, you can symlink them:

```bash
# Clone this repository
git clone https://github.com/nette/ai-skills ~/nette-ai-skills

# Create Claude Code plugins directory if it doesn't exist
mkdir -p ~/.claude/plugins

# Symlink the plugins
ln -s ~/nette-ai-skills/claude-code/plugins/nette ~/.claude/plugins/nette
ln -s ~/nette-ai-skills/claude-code/plugins/nette-dev ~/.claude/plugins/nette-dev
```

## Available Plugins

### `nette` – For Application Developers

Best practices and conventions for building applications with Nette Framework.

**Skills:**
- nette-architecture
- nette-configuration
- nette-database
- nette-forms
- nette-schema
- nette-testing
- nette-utils
- latte-templates
- neon-format
- frontend-development

**Hooks:**
- Automatic Latte template validation
- Automatic NEON file validation

### `nette-dev` – For Framework Contributors

Additional conventions for Nette Framework development.

**Skills:**
- php-coding-standards
- php-doc
- commit-messages

**Hooks:**
- Automatic PHP code style fixes
- Commit message validation

## Usage

### Invoking Skills

You can invoke skills explicitly using the `/` prefix:

```
/nette-forms
/php-coding-standards
/commit-messages
```

Or let Claude automatically select the appropriate skill based on context.

### Example Workflow

1. **Creating a form:**
   ```
   You: Create a registration form with username, email, and password
   Claude: /nette-forms [Creates form following Nette conventions]
   ```

2. **Writing code:**
   ```
   You: Add a User presenter
   Claude: /php-coding-standards [Writes code with proper formatting]
   ```

3. **Making commits:**
   ```
   You: Commit these changes
   Claude: /commit-messages [Creates properly formatted commit message]
   ```

## Updating Plugins

If using the marketplace:

```
/plugin update nette@nette
```

If using manual installation:

```bash
cd ~/nette-ai-skills
git pull
```

## Hooks

Hooks automatically run when certain events occur:

### Nette Plugin Hooks

- **lint-latte.php** - Validates Latte templates after editing
- **lint-neon.php** - Validates NEON files after editing

### Nette-Dev Plugin Hooks

- **fix-php-style.php** - Fixes PHP code style after editing

## Configuration

Hooks can be customized in the plugin's `hooks/hooks.json` file.

## More Information

- [Claude Code Documentation](https://claude.com/product/claude-code)
- [Nette Framework](https://nette.org)
- [Source: nette/claude-code](https://github.com/nette/claude-code)
