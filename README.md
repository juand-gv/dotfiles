# 🛠️ Morbid's Dotfiles

**Personal dotfiles and custom Linux configs for a hacker/dev-friendly workflow. Includes modular bash, tmux, Neovim, and git settings — plus hand-crafted cheatsheets for ultra-fast reference.**

---

## 🚀 Features

- **Modular structure:** Each tool’s config is isolated for portability and clarity.
- **Symlink ready:** Simple install with symlinks, no hidden surprises.
- **Cheatsheets included:** Tmux, Neovim, environment tips — all in Markdown for quick lookup.
- **Neovim = VSCode-like:** Modern theme, file explorer, LSP, completion, fuzzy finder, status bar, etc.
- **Productivity hacks:** Aliases, custom prompts, optimized settings for coding, scripting, and CTFs.
- **Easy to bootstrap:** Clone, link, done. Instantly home on any fresh Linux machine.

---

## 📁 Structure

```Bash
dotfiles/
├── bash/
│ └── .bashrc
├── tmux/
│ └── .tmux.conf
├── nvim/
│   └── .config/
│       └── init.vim
├── git/
│ └── .gitconfig
└── cheatsheets/
├── environment_cheatsheet.md
├── neovim_cheat_sheet.md
└── tmux_cheat_sheet.md
```

## ⚡ Quick Setup

```bash
# Clone the repo
git clone https://github.com/juand-gv/dotfiles.git ~/dotfiles

# Symlink configs to your home directory
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```
