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

# --- zsh extra (startup behavior) ---
symlink "$DOTFILES_DIR/zsh/.zshrc_extra" "$HOME/.zshrc_extra"

# Append source lines to .zshrc if not already present
ZSHRC="$HOME/.zshrc"

append_if_missing() {
    local line="$1"
    if grep -qF "$line" "$ZSHRC" 2>/dev/null; then
        warn ".zshrc already has: $line — skipping"
    else
        echo "$line" >> "$ZSHRC"
        success "Added to $ZSHRC: $line"
    fi
}

echo "" >> "$ZSHRC"
echo "# morbid" >> "$ZSHRC"
append_if_missing '[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases'
append_if_missing '[ -f ~/.zshrc_extra ] && source ~/.zshrc_extra'

info "Done. Reload your shell: source ~/.zshrc"
