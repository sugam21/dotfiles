set -g status-left "#[fg=blue,bold,bg=#151515]  #S  "
set -g status-right "#[fg=#b4befe,bold,bg=#151515]"
set -g status-justify left
set -g status-left-length 200    # increase length (from 10)
set -g status-right-length 200    # increase length (from 10)
set -g status-position top
set -g status-style 'bg=#151515' # transparent
set -g window-status-current-format '#[fg=magenta,bg=#151515]*#I #W#{?window_zoomed_flag,(),} '
set -g window-status-format '#[fg=#6c7086,bg=#151515] #I #W'
set -g window-status-last-style 'fg=#6c7086,bg=black'
set -g message-command-style bg=#151515,fg=yellow
set -g message-style bg=#151515,fg=yellow
set -g mode-style bg=#151515,fg=yellow
set -g pane-active-border-style 'fg=magenta,bg=#151515'
set -g pane-border-style 'fg=brightblack,bg=#151515'
