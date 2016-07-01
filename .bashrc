#  Basic bash startup
. /usr/local/lib/std.v2.bashrc

case $- in
*i*)

# master branch


# general command aliases
alias ls='ls -a --color=auto'
alias ...='cd ../../'
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

esac
