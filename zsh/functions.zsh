

function getpdb
{
	echo "Downloading " ${1} "... "
	wget --quiet http://www.rcsb.org/pdb/files/${1}.pdb
	if [[ $? != 0 ]]; then
		echo "===>  $pdbid doesn't exist !  <==="
	fi
}
