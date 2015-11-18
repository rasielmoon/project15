
#:coding: utf-8
#tmax -shell script/tmax_tdf_atpg_loc.tcl 669
#tmax -shell script/tmax_fsim.tcl 709
#-40



import os
import re
import random
import argparse


def rep(c_num,file1,file2,file3,file4,file5,file6):
	flg = 1
	old = "1"
	line_count = 0
	n_num = 0
	len_num = 0

	f = open(file6,'w')

	for line in open(file1, 'r'):
		n_num = n_num + line.count('N')
		len_num = len_num + len(line)
		line_count = line_count + 1

		if(line_count == c_num):
			line_count = 0
			print(n_num)
			print(len_num-1)
			n_num = 0
			len_num = 0

######現在、スキャンチェーンの本数分ずつカウントしてる。全体の入力数とNの数は完了

######次回、Nの割合の計算と、各ファイルの遷移確率の計算を行って終了############



if __name__ == '__main__':
	parser = argparse.ArgumentParser(description = 'clk or clock serch')
	parser.add_argument('-i','--i',dest = 'file_name',type=str,default='')
	parser.add_argument('-c','--c',dest = 'chain_count',type=str,default='')

	args = parser.parse_args()
	Input_filename = args.file_name
	chain = args.chain_count
	
	hoge = re.split(r'/|\.', Input_filename)
	z = hoge[-2]

	filename1 = "./probability/" + z +"_scan" + chain + ".txt"
	filename2 = "./probability/" + z +"_scan" + chain + "_myfill.txt"
	filename3 = "./probability/" + z +"_scan" + chain + "_0-fill.txt"
	filename4 = "./probability/" + z +"_scan" + chain + "_1-fill.txt"
	filename5 = "./probability/" + z +"_scan" + chain +"_r-fill.txt"
	filename6 = "./probability/" + z +"_scan" + chain +"_result.txt"

	rep(int(chain),filename1,filename2,filename3,filename4,filename5,filename6)
