

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Vim mode
set -o vi

# Fixing paths
pathmunge ~/.local/bin
pathmunge ~/bin
pathmunge ~/miniconda3/bin


