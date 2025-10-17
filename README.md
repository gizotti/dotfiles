# Gizotti's Dotfiles

My personal development environment and home directory configuration, managed with [chezmoi](https://www.chezmoi.io/).

## About

This repo keeps my dev environment consistent across all my machines. Using chezmoi, I can version control my dotfiles and configuration while keeping machine-specific and private data secure.

## Setup on a New Machine

```bash
# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# Initialize and apply my configuration
chezmoi init --apply https://github.com/gizotti/dotfiles.git
```

## Daily Workflow

```bash
# Preview what would change
chezmoi diff

# Apply changes from the repo
chezmoi apply

# Add a new file to manage
chezmoi add ~/.zshrc

# Edit managed files
chezmoi edit ~/.gitconfig

# Push updates
chezmoi cd
git add .
git commit -m "Update configuration"
git push
```

## What's Managed

This configuration includes my:
- Shell setup and custom aliases
- Editor/IDE configurations
- Git configuration
- Development tool settings
- macOS preferences

## How It Works

Files are stored in chezmoi's source directory (`~/.local/share/chezmoi`) and applied to my home directory. Templates and scripts handle dynamic configuration and machine-specific differences.

For more about chezmoi: https://www.chezmoi.io/docs/