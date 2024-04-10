My `~/.tmux.conf` file:
```text
## Default prefix key binding: Ctrl + B
# Set color in tmux
set -g default-terminal "screen-256color"

# Easy config reload (Use prefix key and press r)
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded!!!"

# Mouse mode
set -g mouse on
```
