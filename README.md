# Dotfiles

This is my chezmoi source directory. It lives at:

```zsh
~/.local/share/chezmoi
```

That path is easy to forget, so the normal way to get here is:

```zsh
chezmoi cd
```

## How It Works

The files in this repo are the source versions of dotfiles in `$HOME`.

Examples:

```text
dot_zshrc                  -> ~/.zshrc
dot_config/nvim/init.lua   -> ~/.config/nvim/init.lua
dot_gitconfig              -> ~/.gitconfig
```

Use `chezmoi` to compare, update, and apply these files.

## Common Commands

See what chezmoi manages and what has changed:

```zsh
chezmoi status
chezmoi diff
```

Add or refresh a dotfile from the live home directory:

```zsh
chezmoi add ~/.zshrc
```

Edit a managed dotfile through chezmoi:

```zsh
chezmoi edit ~/.zshrc
chezmoi diff
chezmoi apply
```

Commit changes:

```zsh
chezmoi cd
git status
git add .
git commit -m "Update dotfiles"
```

## New Machine Setup

After this repo has a remote:

```zsh
chezmoi init git@github.com:YOUR_USERNAME/dotfiles.git
chezmoi diff
chezmoi apply
```

## Notes

- Keep secrets, tokens, and API keys out of this repo.
- Prefer a private remote unless everything here is safe to publish.
- If a real dotfile is edited directly, run `chezmoi add <file>` afterward.
- If the source file is edited, run `chezmoi apply` afterward.
