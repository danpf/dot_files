

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"

# Vim mode
export KEYTIMEOUT=1
bindkey -v
bindkey -v '^?' backward-delete-char
bindkey '^R' history-incremental-search-backward
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^x' edit-command-line

# digs fixes?
export OPENBLAS_NUM_THREADS=1


# Fixing paths
pathmunge /snap/bin
pathmunge ~/.local/bin
pathmunge ~/bin
pathmunge ~/pkg/bin
pathmunge ~/pkg/sbin
pathmunge ~/miniconda3/envs/py36/bin
pathmunge ~/miniconda3/envs/py27/bin

#Rosetta
export ROSETTA3=~/git/Rosetta/master
pathmunge ~/cryosparc/bin

# Spark
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=python3

