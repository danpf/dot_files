

function getpdb
{
	echo "Downloading " ${1} "... "
	wget --quiet http://www.rcsb.org/pdb/files/${1}.pdb
	if [[ $? != 0 ]]; then
		echo "===>  $pdbid doesn't exist !  <==="
	fi
}

function getcpdb
{
	echo "Downloading " ${1} "... "
	python3.6 -c "import sys; sys.path.append('/home/danpf/git/uw_research_scripts/modeling/'); import util;f = open('${1}.pdb','w'); f.write(util.get_chain_rawpdb('${1}', None, idx_at_0=True, keep_het=False));f.close()"
	if [[ $? != 0 ]]; then
		echo "===>  $pdbid doesn't exist !  <==="
	fi
}

function getdimaio()
{
   if [ -z "$1" -o -z "$2" ]; then
     echo "Usage: getdimaio [nodes] [hours]"
     return
   fi
   echo "qsub -I -W group_list=hyak-dimaio -l walltime="$2":00:00 -l nodes="$1":ppn=16,mem=100gb,feature=16core"
   qsub -I -W group_list=hyak-dimaio -l walltime=$2:00:00 -l nodes=$1:ppn=16,mem=100gb,feature=16core

}

function srd
{
	`which python3.6` $HOME/git/dot_files/python/sync_rosetta_dir.py ${@:1}
}

function csparc()
{
	if [ -z "$1" ]; then
		echo "Requires digs node argument";
		return;
	fi
	ssh -N -f -L :localhost:8082:[::1]:3800 $1
}

function kvpn()
{
	sudo service network-manager stop
	sudo service network-manager start
}

function kmdigs()
{
	sudo umount -l ~/mount/digs
	lsof -ti:2222 | xargs kill
	sd
	md
}

function ac3()
{
	cd ~/miniconda3/bin/
	source activate py3
	cd -
}

function dc3()
{
	cd ~/miniconda3/bin/
	source deactivate py3
	cd -
}

function ac2()
{
	cd ~/miniconda3/bin/
	source activate py2
	cd -
}

function dc2()
{
	cd ~/miniconda3/bin/
	source deactivate py2
	cd -
}
function rdm()
{
	fff=$PWD
	ssh digs "zsh -c 'cd \"$PWD\" && sbatch -p dimaio submit.slurm'"
}

