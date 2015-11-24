if [ $# != 3 ]; then
	echo "Error. Need [file name] , [chain_num] , [clk_period]"
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

#テスト生成(遷移故障,LOC)
tmax -shell ./tcl/tmax_tdf_atpg_loc.tcl

#出てきたファイルを改行していくだけ
python3 src/enter.py  -i "${filepass}" -c "${chain}"

#x_fillファイル生成 my_fill
python3 src/X_fill.py  -i "${filepass}" -c "${chain}"

#遷移確率のカウント等
python3 src/count.py  -i "${filepass}" -c "${chain}"


