# Morbid's Linux Cheatsheet

## Table of Contents

- [Custom Aliases](#custom-aliases)
- [Tmux](#tmux)
- [Neovim](#neovim)
- [Glow](#glow)

---

## Custom Aliases

> Check ~/.bashrc

### Directory Listing (ls) Aliases

- `ll`  
  Shortcut for `ls -l`. Lists files in long format.

- `la`  
  Shortcut for `ls -latS`. Lists all files, sorted by modification time and size.

- `lh`  
  Shortcut for `ls -lahS`. Lists all files (including hidden), with human-readable sizes, sorted by size.

- `l`  
  Shortcut for `ls -CF`. Lists files in columns, distinguishing directories and executables.


### Tmux

- `t`:  
  Shortcut for `tmux`. Launches tmux terminal multiplexer.

- `ta`:  
  Shortcut for `tmux attach -t`. Attach to an existing tmux session by name.

- `tls`:  
  Shortcut for `tmux ls`. List all tmux sessions.

- `tn`:  
  Shortcut for `tmux new -s`. Create a new tmux session with a given name.

- `tk`:  
  Shortcut for `tmux kill-session -t`. Kill a specific tmux session by name.

- `tks`:  
  Shortcut for `tmux kill-server`. Kill all tmux sessions and stop the tmux server.


### Other

- `gw`:  
  Shortcut for `glow -p`. Renders Markdown files in the terminal with interactive navigation.

- `nv`:  
  Shortcut for `nvim`. Launches the Neovim editor.


---

## Tmux

> with `Ctrl+a` as Prefix

### Sessions

- **List sessions:**  
  `tmux ls`
- **Create new session:**  
  `tmux new -s NAME`
- **Attach to a session:**  
  `tmux attach -t NAME`
- **Detach (leave tmux):**  
  `Ctrl+a d`
- **Kill session:**  
  `tmux kill-session -t NAME`
- **Kill all sessions:**  
  `tmux kill-server`


### Windows (Tabs)

- **New window:**  
  `Ctrl+a c`
- **Next/Previous window:**  
  `Ctrl+a n` (next), `Ctrl+a p` (previous)
- **List windows:**  
  `Ctrl+a w`
- **Rename window:**  
  `Ctrl+a ,`
- **Close window:**  
  `Ctrl+a &`


### Panes (Split Screen)

- **Split horizontally (below):**  
  `Ctrl+a "` (double quote)
- **Split vertically (right):**  
  `Ctrl+a %`
- **Move between panes:**  
  `Ctrl+a ← ↑ ↓ →` (arrow keys)
- **Swap panes:**  
  `Ctrl+a o`
- **Kill current pane:**  
  `Ctrl+a x`
- **Toggle pane layout:**  
  `Ctrl+a space`


### Copy and Paste (Copy Mode)

- **Enter copy mode:**  
  `Ctrl+a [`
- **Move cursor:**  
  Arrow keys
- **Begin selection:**  
  Space bar
- **Copy selection:**  
  Enter
- **Paste:**  
  `Ctrl+a ]`

> To exit from copy mode use `q`


### Other Useful Commands

- **Synchronize panes:**  
  `Ctrl+a :setw synchronize-panes on`
- **Search in buffer:**  
  `Ctrl+a /`
- **Reload tmux config:**  
  `Ctrl+a :source-file ~/.tmux.conf`
- **Show key bindings:**  
  `Ctrl+a ?`

> In all shortcuts, `Ctrl+a` is the prefix. Hold Ctrl, press “a”, then the next key.

---

## Neovim

### Basic Movement

- `j` / `k`: Move down / up one line
- `4k`: Go up 4 lines (replace 4 with any number)
- `4j`: Go down 4 lines
- `gg`: Go to the top of the file
- `G`: Go to the bottom of the file
- `:23` + Enter: Go to line 23

### File Tree (NvimTree)

- `<Ctrl> + n`: Toggle file tree sidebar
- Arrow keys / `j` / `k`: Move up/down
- `l` or `<Enter>`: Open file or folder
- `h`: Close folder
- `a`: Create new file/folder
- `d`: Delete file/folder
- `r`: Rename
- `s`: Open file in a vertical split
- `i`: Open file in a horizontal split
- `R`: Refresh tree

### Finding & Opening Files (Telescope)

- `<Ctrl> + p`: Open file search (fuzzy finder)
- `<Ctrl> + f`: Live grep (search text in all files)
- Use arrows or `j`/`k` to pick, `<Enter>` to open

### Multiple Files & Splits

- `:vsplit file.py`: Open file.py in a vertical split
- `:split file.py`: Open file.py in a horizontal split
- `<Ctrl> + w, v`: New vertical split (then type filename)
- `<Ctrl> + w, s`: New horizontal split (then type filename)
- `<Ctrl> + w, h/j/k/l`: Move between splits

### Structure View (Vista)

- `F8`: Toggle code structure (functions, classes, etc)
- `<Enter>` on an item: Jump to function/class in your code

### Autocomplete & LSP

- `<Ctrl> + Space`: Trigger autocomplete menu
- `<Tab>` / `<Shift+Tab>`: Move through suggestions
- `<Enter>`: Confirm selection
- `K` (in normal mode): Show docs/signature for symbol under cursor

### Other Handy Commands

- `:w`                Save file
- `:q`                Quit window
- `:wq`               Save and quit
- `u`                 Undo
- `<Ctrl> + r`        Redo
- `yy`                Yank (copy) a line
- `dd`                Delete (cut) a line
- `p`                 Paste below
- `P`                 Paste above
- `x`                 Delete character under cursor
- `dw`                Delete word
- `cw`                Change (replace) word
- `/pattern` + `<Enter>`    Search for pattern
- `n`                 Next search result
- `N`                 Previous search result
- `:%s/foo/bar/g`     Replace all 'foo' with 'bar' in file
- `gg`                Go to first line
- `G`                 Go to last line
- `:e filename`       Open file
- `:ls` or `:buffers` List open buffers
- `:bN`               Switch to buffer N (`:b1`, `:b2`, ...)
- `:vsp file`         Vertical split file
- `:sp file`          Horizontal split file
- `<Ctrl> + w` + `h/j/k/l`  Move between splits (left/down/up/right)
- `.`                 Repeat last command

---

## Glow

Markdown Viewer Cheatsheet

### Navigation

- `j` / `k`       Move down / up one line
- `Ctrl+d` / `Ctrl+u`   Move half a page down / up
- `g` / `G`       Go to start / end of document
- `/`             Search in document (type pattern, then Enter)
- `n` / `N`       Next / previous search result
- `q`             Quit glow

### Links

- `Tab`           Jump to next link
- `Shift+Tab`     Jump to previous link
- `Enter`         Open selected link in browser

### Other

- `r`             Reload document (useful if file changes)
- `?`             Show help menu with all keybindings


> **Tip:**  
> You can view directories:  
> `glow .` — Navigate and open Markdown files in current folder.

> Use with your alias too:  
> `gw README.md`

