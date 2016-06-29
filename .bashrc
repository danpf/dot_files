#  Basic bash startup
. /usr/local/lib/std.v2.bashrc

case $- in
*i*)

   # Put interactive-only Bourne shell compatible login startup here.

   # Uncomment one or more of the following for paranoid behavior

   #set -o noclobber
   #alias cp='cp -i'
   #alias mv='mv -i'
   #alias rm='rm -i'

   # Uncomment the following if you want traditional behavior

   #unalias vi
   #unalias ls

# general command aliases
alias ls='pwd && ls -a --color=auto'
alias ...='cd ../../'
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# setting home directory
export HOME=/gscratch/dimaio/danpf
alias luser='cd /usr/lusers/danpf'

# navigation shortcuts.
# get to these places by adding prefix $
losers=/usr/lusers/danpf
bcros=/gscratch/dimaio/danpf/Rosetta_binchen
domd=/gscratch/dimaio/danpf/Projects/Domain_density
pdata=/gscratch/dimaio/danpf/Protein_data
gitf=/gscratch/dimaio/danpf/git
home=/gscratch/dimaio/danpf

esac
