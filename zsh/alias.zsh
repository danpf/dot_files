

# General ease of use
alias ls='ls -hF --color=auto'
alias tmux='tmux -2'

# sshfs hyak
alias mhyak='sshfs danpf@hyak:/suppscr/dimaio/danpf/ ~/mount/hyak/'
alias mjup='ssh -N -f -L localhost:8080:localhost:8889 wise'
alias mcs='ssh -N -f -L localhost:8900:localhost:38000 gpu1'
# Requires \/
#Host wise
#	User danpf
#	ProxyCommand ssh fw.bakerlab.org -W %h:%p

# sshfs digs
alias sshdigs='ssh danpf@fw.bakerlab.org'
alias sd='ssh -f danpf@fw.bakerlab.org -L 2222:digs:22 -N'
alias md='sshfs -p 2222 danpf@localhost:/home/danpf ~/mount/digs'


function csparc()
{
	if [ -z "$1" ]; then
		echo "Requires digs node argument";
		return;
	fi
	ssh -N -f -L :localhost:8082:[::1]:3800 $1
}

    


# submit jobs to hyak
bf () {sbatch -p backfill submit.slurm}
dm () {sbatch -p dimaio submit.slurm}


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
