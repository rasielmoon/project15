
#:coding: utf-8
#tmax -shell script/tmax_tdf_atpg_loc.tcl 669
#tmax -shell script/tmax_fsim.tcl 709
#-40



import os
import re
import random
import argparse


def rep(file1,file2):
	f = open(file2,'w')

	old = "1"
	for line in open(file1, 'r'):
		x = re.search(r'; "',line)
		if x :
			line = line.replace('; "',';\n      "')

		f.write(line)

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description = 'clk or clock serch')
	parser.add_argument('-i','--i',dest = 'file_name',type=str,default='')
	parser.add_argument('-c','--c',dest = 'chain_count',type=str,default='')

	args = parser.parse_args()
	Input_filename = args.file_name
	chain = args.chain_count
	
	hoge = re.split(r'/|\.', Input_filename)
	z = hoge[-2]
	filename1 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc.stil"
	filename2 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_en.stil"
	rep(filename1,filename2)
