

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"

# Vim mode
set -o vi

# Fixing paths
pathmunge ~/.local/bin
pathmunge ~/bin
pathmunge ~/miniconda3/bin


