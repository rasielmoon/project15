#:coding: utf-8

import os
import re
import argparse

def find_out(file1,file2,chain,period):
	flg = 0
	for line in open(file1,'r'):
		if flg == 0:
			x = re.search(r'process',line)
			if x:
				if "clock" in line :
					clk = "clock"
				else :
					clk = "CLK"

				if "reset" in line :
					rst = "reset"
				else :
					rst = "RESET"

				flg = 1

	
#	z = file1[4:-4]	
	hoge = re.split(r'/|\.', file1)
	z = hoge[-2]
#	print (hoge[-2])
	
	f_write = open(file2,'w')
	f_write.write('set RTL "' + file1 + '"\n')	
	f_write.write('set TOP "' + z  + '"\n')		

	f_write.write('set CLOCK_PORT "' + clk + '"\n')
	f_write.write('set CLOCK_PERIOD "' + period + '"\n')
	f_write.write('set RESET_PORT "' + rst + '"\n')
	f_write.write('set CHAIN_COUNT "' + chain + '"\n')
	f_write.close()

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description = 'clk or clock serch')
	parser.add_argument('-i','--i',dest = 'file_name',type=str,default='')
	parser.add_argument('-c','--c',dest = 'chain_count',type=str,default='2')
	parser.add_argument('-p','--p',dest = 'c_period',type=str,default='10')
	args = parser.parse_args()
	
	Input_filename = args.file_name
	chain = args.chain_count
	period = args.c_period

	Output_filename = "tcl/name.txt"

	find_out(Input_filename,Output_filename,chain,period)
