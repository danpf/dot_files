#  Basic bash startup
. /usr/local/lib/std.v2.bashrc

case $- in
*i*)

# prompt styling
export PS1="\A \[$(tput sgr0)\]\[\033[38;5;208m\]\H\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# general command aliases
alias ls='pwd && ls -a --color=auto'
alias ...='cd ../../'
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias 1='cd ~1'                             # Go to pushd 1
alias 2='cd ~2'                             # Go to pushd 2
alias 3='cd ~3'                             # Go to pushd 3
alias 4='cd ~4'

# setting home directory
alias luser='cd /usr/lusers/danpf'

scl enable devtoolset-4 bash

esac
# Added by cryoSPARC:
export PATH="/home/danpf/cryosparc/bin":$PATH
