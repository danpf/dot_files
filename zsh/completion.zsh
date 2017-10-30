
# I'm not exactly sure what goes on here
setopt menu_complete
setopt auto_menu
autoload -Uz compinit
compinit -i

setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
#setopt ALWAYS_TO_END       # Move cursor to the end of a completed word.
setopt PATH_DIRS           # Perform path search even on command names with slashes.
setopt AUTO_MENU           # Show completion menu on a successive tab press.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH    # If completed parameter is a directory, add a trailing slash.
unsetopt MENU_COMPLETE     # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL      # Disable start/stop characters in shell editor.

zstyle ':completion:*' menu yes select list-colors "${(@s.:.)LS_COLORS}"
#zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#unsetopt CASE_GLOB



#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
#zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
#zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#zstyle ':completion:*' squeeze-slashes true

