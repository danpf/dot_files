

# General ease of use
alias ls='ls -hF --color=auto'
alias tmux='tmux -2'

# sshfs hyak
alias mhyak='sshfs danpf@hyak:/suppscr/dimaio/danpf/ ~/mount/hyak/'
alias mjup='ssh -N -f -L localhost:8080:localhost:8888 wise'
# Requires \/
#Host wise
#	User danpf
#	ProxyCommand ssh fw.bakerlab.org -W %h:%p

# sshfs digs
alias sshdigs='ssh danpf@fw.bakerlab.org'
alias sd='ssh -f danpf@fw.bakerlab.org -L 2222:digs:22 -N'
alias md='sshfs -p 2222 danpf@localhost:/home/danpf ~/mount/digs'

# submit jobs to hyak
bf () {for job in $(seq 1 $1); do qsub -q bfwait submit.pbs; done;}
dm () {for job in $(seq 1 $1); do qsub -W group_list=hyak-dimaio submit.pbs; done;}


# Function needs to be before alias
pathmunge () {
        if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
           if [ "$2" = "after" ] ; then
              PATH="$PATH:$1"
           else
              PATH="$1:$PATH"
           fi
        fi
}
