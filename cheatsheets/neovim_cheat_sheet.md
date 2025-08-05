# Neovim Quick Cheatsheet (Morbid Edition 😎)

## BASIC MOVEMENT

- `j` / `k`: Move down / up one line
- `4k`: Go up 4 lines (replace 4 with any number)
- `4j`: Go down 4 lines
- `gg`: Go to the top of the file
- `G`: Go to the bottom of the file
- `:23` + Enter: Go to line 23

## FILE TREE (NvimTree)

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

## FINDING & OPENING FILES (Telescope)

- `<Ctrl> + p`: Open file search (fuzzy finder)
- `<Ctrl> + f`: Live grep (search text in all files)
- Use arrows or `j`/`k` to pick, `<Enter>` to open

## MULTIPLE FILES & SPLITS

- `:vsplit file.py`: Open file.py in a vertical split
- `:split file.py`: Open file.py in a horizontal split
- `<Ctrl> + w, v`: New vertical split (then type filename)
- `<Ctrl> + w, s`: New horizontal split (then type filename)
- `<Ctrl> + w, h/j/k/l`: Move between splits

## STRUCTURE VIEW (Vista)

- `F8`: Toggle code structure (functions, classes, etc)
- `<Enter>` on an item: Jump to function/class in your code

## AUTOCOMPLETE & LSP

- `<Ctrl> + Space`: Trigger autocomplete menu
- `<Tab>` / `<Shift+Tab>`: Move through suggestions
- `<Enter>`: Confirm selection
- `K` (in normal mode): Show docs/signature for symbol under cursor

## OTHER HANDY COMMANDS

- `:w`: Save file
- `:q`: Quit window
- `:wq`: Save and quit
- `u`: Undo
- `<Ctrl> + r`: Redo
- `yy` /

