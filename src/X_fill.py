
#:coding: utf-8
#tmax -shell script/tmax_tdf_atpg_loc.tcl 669
#tmax -shell script/tmax_fsim.tcl 709
#-40



import os
import re
import random
import argparse


def rep(file1,file2):
	flg = 1
	f = open(file2,'w')
	old = "1"
	for line in open(file1, 'r'):
		if flg == 0 :

			x = re.search(r'_pi"=(\d|N|P)+',line)  
			if x :
				hoge = x.group(0)[5:]
				char_hoge = list(hoge)
				for num in range(0,len(char_hoge)):
					if char_hoge[num] == "N":
						char_hoge[num] = "1"

				write_data = '_pi"='
				write_data = write_data + "".join(char_hoge)
				line = line[0:x.start()]+ write_data +line[x.end():len(line)]


			a = re.search(r'test_si\d*"=(\d|N)+',line)  
#			a = re.search(r'"test_si',line)  
			if a :
				test = line.split('"')[1]
				hoge = a.group(0)[9:]
				char_hoge = list(hoge)
				for num in range(0,len(char_hoge)):
					num = len(char_hoge) - num - 1
					if char_hoge[num] == "N":
#						rand = random.randint(0,1)
						char_hoge[num] = str(old)
#						char_hoge[num] = "1"
					else:
						if char_hoge[num] == 1 or char_hoge[num] == 0:
							old = char_hoge[num]

				write_data = test
				write_data = write_data + "".join(char_hoge)
				line = line[0:a.start()]+ write_data +line[a.end():len(line)]



		else :
			itemList = line[:-1].split(' ')
			if itemList[0] == "Pattern" :
				flg = 0

		f.write(line)

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description = 'clk or clock serch')
	parser.add_argument('-i','--i',dest = 'file_name',type=str,default='')
	parser.add_argument('-c','--c',dest = 'chain_count',type=str,default='')

	args = parser.parse_args()
	Input_filename = args.file_name
	chain = args.chain_count
	

	filename1 = "./tmax_output/" + Input_filename[6:-4] +"_scan" + chain + "_tdf_loc.stil"
	filename2 = "./tmax_output/" + Input_filename[6:-4] +"_scan" + chain + "_tdf_loc_myfill.stil"

	rep(filename1,filename2)
