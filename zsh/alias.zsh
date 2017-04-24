

# General ease of use
alias ls='gls -hF --color=auto'
alias la='gls -hlaF --color=auto'
alias tmux='tmux -2'

# mac specific aliases
alias chimera=/Applications/Chimera.app/Contents/MacOS/chimera
alias py27=~/anaconda/envs/py27/bin/python 
alias py35=~/anaconda/envs/py35/bin/python
alias pymol=/Applications/MacPyMOL.app/Contents/MacOS/MacPyMOL
alias vi=vim
alias wget=/Users/danpf/Downloads/brew/bin/wget

# calculator
alias bc="bc -l <<<" 

# disables shitty zsh time for good bashrc time
disable -r time
alias time='time -p '

# saved locations
did=~/git/Rosetta/main/source/src/protocols/electron_density
hh=/Volumes/Hyak
pdata=/Volumes/Hyak/Protein_data/domain_assembly_benchmark_set
pilot=~/git/Rosetta/main/source/src/apps/pilot/binchen
ptools=~/git/Rosetta/tools/protein_tools
