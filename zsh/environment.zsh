

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"

export PATH=/Users/danpf/Downloads/brew/bin:$PATH
export PATH=/Users/danpf/anaconda/envs/py35/bin:/Users/danpf/anaconda/envs/py27/bin:$PATH


function emdb() 
{
	if [ -z $1 ] ;then
		echo "Please enter the EMD number!"
		exit
	fi
	
	wget "ftp://ftp.ebi.ac.uk/pub/databases/emdb/structures/EMD-${1}/map/emd_${1}.map.gz"
	gzip -dv emd_${1}.map.gz

}
