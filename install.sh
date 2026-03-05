#!/usr/bin/env bash
# install.sh — symlink dotfiles for the kali-vm setup
# Usage: bash install.sh

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

info()    { echo "[INFO]  $*"; }
success() { echo "[OK]    $*"; }
warn()    { echo "[WARN]  $*"; }

symlink() {
    local src="$1"
    local dst="$2"

    if [ -L "$dst" ]; then
        warn "Skipping $dst (already a symlink)"
        return
    fi

    if [ -f "$dst" ]; then
        warn "Backing up existing $dst -> ${dst}.bak"
        mv "$dst" "${dst}.bak"
    fi

    mkdir -p "$(dirname "$dst")"
    ln -sf "$src" "$dst"
    success "Linked $dst -> $src"
}

# --- tmux ---
symlink "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

# --- git ---
symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

# --- zsh aliases ---
symlink "$DOTFILES_DIR/zsh/.zsh_aliases" "$HOME/.zsh_aliases"

# Append source line to .zshrc if not already present
ZSHRC="$HOME/.zshrc"
SOURCE_LINE='[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases'

if grep -qF "$SOURCE_LINE" "$ZSHRC" 2>/dev/null; then
    warn ".zshrc already sources .zsh_aliases — skipping"
else
    echo "" >> "$ZSHRC"
    echo "# morbid aliases" >> "$ZSHRC"
    echo "$SOURCE_LINE" >> "$ZSHRC"
    success "Added source line to $ZSHRC"
fi

info "Done. Reload your shell: source ~/.zshrc"
