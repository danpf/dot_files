

# General ease of use
alias ls='ls -hF --color=auto'
alias tmux='tmux -2'

# sshfs hyak
alias mhyak='sshfs danpf@hyak:/suppscr/dimaio/danpf/ ~/mount/hyak/'

# sshfs digs
alias sd='ssh -f danpf@fw.bakerlab.org -L 2222:digs:22 -N'
alias md='sshfs -p 2222 danpf@localhost:/home/danpf ~/mount/digs'

