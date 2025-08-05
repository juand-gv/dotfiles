# Custom "morbid" Aliases
> Can be found in ~/.bashrc

## Directory Listing (ls) Aliases

- `ll`  
  Shortcut for `ls -l`. Lists files in long format.

- `la`  
  Shortcut for `ls -latS`. Lists all files, sorted by modification time and size.

- `lh`  
  Shortcut for `ls -lahS`. Lists all files (including hidden), with human-readable sizes, sorted by size.

- `l`  
  Shortcut for `ls -CF`. Lists files in columns, distinguishing directories and executables.


## Markdown and tmux

- `gw`:  
  Shortcut for `glow -p`. Renders Markdown files in the terminal with interactive navigation.

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

- `nv`:  
  Shortcut for `nvim`. Launches the Neovim editor.

