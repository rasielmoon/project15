
#:coding: utf-8
#tmax -shell script/tmax_tdf_atpg_loc.tcl 669
#tmax -shell script/tmax_fsim.tcl 709
#-40



import os
import re
import random
import argparse


def rep(file1,file2,file3,file4,file5,file6,file7,file8,file9,file10):
	flg = 1
	f2 = open(file2,'w')
	f3 = open(file3,'w')
	f4 = open(file4,'w')
	f5 = open(file5,'w')
	f6 = open(file6,'w')
	f7 = open(file7,'w')
	f8 = open(file8,'w')
	f9 = open(file9,'w')
	f10 = open(file10,'w')
	line2 = "0"
	line3 = "0"
	line4 = "0"
	line5 = "0"

	old = "1"
	for line in open(file1, 'r'):
		line2 = line
		line3 = line
		line4 = line
		line5 = line

		if flg == 0 :
########################piの設定#######################
			x = re.search(r'_pi"=(\d|N|P)+',line)  
			if x :
				hoge = x.group(0)[5:]
				char_hoge2 = list(hoge)

				for num in range(0,len(char_hoge2)):
					if char_hoge2[num] == "N":
						char_hoge2[num] = "1"

				write_data = '_pi"='
				write_data = write_data + "".join(char_hoge2)
				line2 = line[0:x.start()]+ write_data +line[x.end():len(line)]
				line3 = line[0:x.start()]+ write_data +line[x.end():len(line)]
				line4 = line[0:x.start()]+ write_data +line[x.end():len(line)]
				line5 = line[0:x.start()]+ write_data +line[x.end():len(line)]

###########################test_siの設定###############
			a = re.search(r'test_si\d*"=(\d|N)+',line)
			if a :
				n_count = 0
				num_count = 0
				test = line.split('"')[1]
				hoge = a.group(0)[9:]
				char_hoge2 = list(hoge)
				char_hoge3 = list(hoge)
				char_hoge4 = list(hoge)
				char_hoge5 = list(hoge)

				for num in range(0,len(char_hoge2)):
					num = len(char_hoge2) - num - 1

					if char_hoge2[num] == "N":
						rand = random.randint(0,1)

						char_hoge2[num] = str(old)
						char_hoge3[num] = "0"
						char_hoge4[num] = "1"
						char_hoge5[num] = str(rand)

					else:
						if char_hoge2[num] == "1" or char_hoge2[num] == "0":
							old = char_hoge2[num]


				write_data = test
				write_data2 = write_data + "".join(char_hoge2)
				write_data3 = write_data + "".join(char_hoge3)
				write_data4 = write_data + "".join(char_hoge4)
				write_data5 = write_data + "".join(char_hoge5)

				line2 = line[0:a.start()]+ write_data2 +line[a.end():len(line)]
				line3 = line[0:a.start()]+ write_data3 +line[a.end():len(line)]
				line4 = line[0:a.start()]+ write_data4 +line[a.end():len(line)]
				line5 = line[0:a.start()]+ write_data5 +line[a.end():len(line)]
			
				f6.write("".join(list(hoge))[1:] + "\n")
				f7.write("".join(char_hoge2)[1:] + "\n")
				f8.write("".join(char_hoge3)[1:] + "\n")
				f9.write("".join(char_hoge4)[1:] + "\n")
				f10.write("".join(char_hoge5)[1:] + "\n")


		else :
			itemList = line[:-1].split(' ')
			if itemList[0] == "Pattern" :
				flg = 0

		f2.write(line2)
		f3.write(line3)
		f4.write(line4)
		f5.write(line5)


if __name__ == '__main__':
	parser = argparse.ArgumentParser(description = 'clk or clock serch')
	parser.add_argument('-i','--i',dest = 'file_name',type=str,default='')
	parser.add_argument('-c','--c',dest = 'chain_count',type=str,default='')

	args = parser.parse_args()
	Input_filename = args.file_name
	chain = args.chain_count
	
	hoge = re.split(r'/|\.', Input_filename)
	z = hoge[-2]

	filename1 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_en.stil"
	filename2 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_myfill.stil"
	filename3 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_0-fill.stil"
	filename4 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_1-fill.stil"
	filename5 = "./tmax_output/" + z +"_scan" + chain + "_tdf_loc_r-fill.stil"
	filename6 = "./probability/" + z +"_scan" + chain + ".txt"
	filename7 = "./probability/" + z +"_scan" + chain + "_myfill.txt"
	filename8 = "./probability/" + z +"_scan" + chain + "_0-fill.txt"
	filename9 = "./probability/" + z +"_scan" + chain + "_1-fill.txt"
	filename10 = "./probability/" + z +"_scan" + chain +"_r-fill.txt"

	rep(filename1,filename2,filename3,filename4,filename5,filename6,filename7,filename8,filename9,filename10)
