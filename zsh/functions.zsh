

function getpdb
{
	echo "Downloading " ${1} "... "
	wget --quiet http://www.rcsb.org/pdb/files/${1}.pdb
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
