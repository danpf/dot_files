

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"

# Vim mode
export KEYTIMEOUT=1
bindkey -v
bindkey -v '^?' backward-delete-char
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^x' edit-command-line


# Fixing paths
pathmunge ~/.local/bin
pathmunge ~/bin
pathmunge ~/miniconda3/envs/py36/bin
pathmunge ~/miniconda3/envs/py27/bin


