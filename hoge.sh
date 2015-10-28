if [ $# = 0 ]; then
	echo "need file name"
	exit 0
else
	filepass=$1
	chain=$2
	C_period=$3
fi


#common.tcl の作成
python3 src/name.py -i "${filepass}" -c "${chain}" -p "${C_period}"

#スキャン設計（論理合成)
dc_shell -f ./tcl/dc_scan.tcl
