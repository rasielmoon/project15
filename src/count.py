
#:coding: utf-8
#tmax -shell script/tmax_tdf_atpg_loc.tcl 669
#tmax -shell script/tmax_fsim.tcl 709
#-40



import os
import re
import random
import argparse


def rep(f_area,f_timing,f_tmax,chain,filex,file0,file1,filer,filemy,output):
	fo = open(output,'w')
	count = 0
	num = 0
	length=0
	old = "0"
	numx =[]
	num0 =[]
	num1 =[]
	numr =[]
	nummy =[]

	fo.write("########################Synthesis Result############################\n")
	fo.write("--------------------------------------------------------------------------------   \n")
	for line in open(f_area,'r'):
		x = re.search(r'Number of sequential cells:',line)
		v = re.search(r'Total cell area:',line)
		if x:
			ff = line.split(':')[1]
		if v:
			gate = line.split(':')[1]

	fo.write("Gates                           " + gate)
	fo.write("FFs                           " + ff)

	for line in open(f_timing,'r'):
		x = re.search(r'data arrival time',line)
		if x:
			time = line.split('time')[1]
			
	fo.write("Arrival time" + time + "\n")






	fo.write("##########################ATPG Result##############################\n")
	fo.write("--------------------------------------------------------------------------------   \n")
	for line in open(f_tmax,'r'):
		x = re.search(r'total faults',line)
		v = re.search(r'internal patterns',line)
		w = re.search(r'fault coverage',line)
		z = re.search(r'Total session CPU time',line)
		if x:
			fault = line.split('faults')[1]
		if v:
			pattern = line.split('patterns')[1]
		if w:
			coverage = line.split('coverage')[1]
		if z:
			time = line.split('time')[1]
			
	fo.write("Faults    " + fault)
	fo.write("Patterns       " + pattern)
	fo.write("Fault_Coverage" + coverage)
	fo.write("CPU_Runtime         " + time+"\n")





###################xの割合の計算#########################
	for line in open(filex, 'r'):
		count = count + 1
		num = num + line.count("N")
		length = length + len(line)-1
		if count == chain :
			count = 0
#			fo_x.write(str(float(num)/length*100) + "\n")
			numx.append(str(float(num)/length*100))
			num = 0
			length = 0

#############0-fill遷移確率の割合の計算##################
	for line in open(file0, 'r'):
		count = count + 1
		tmp = list(line[:-1])
		for hoge in range(1,len(tmp)+1) :
			if old != tmp[len(tmp)-hoge] :
				num = num + len(tmp)-hoge+1
			old = tmp[len(tmp)-hoge] 
		length = length + len(line)-1

		if count == chain :
			count = 0
#			fo_0.write(str(num) + "\n")
			num0.append(str(num))
			num = 0
			length = 0
#############1-fill遷移確率の割合の計算##################
	old = "1"
	for line in open(file1, 'r'):
		count = count + 1
		tmp = list(line[:-1])
		for hoge in range(1,len(tmp)+1) :
			if old != tmp[len(tmp)-hoge] :
				num = num + len(tmp)-hoge+1
			old = tmp[len(tmp)-hoge] 
		length = length + len(line)-1

		if count == chain :
			count = 0
#			fo_1.write(str(num) + "\n")
			num1.append(str(num))
			num = 0
			length = 0
#############r-fill遷移確率の割合の計算##################
	for line in open(filer, 'r'):
		count = count + 1
		tmp = list(line[:-1])
		for hoge in range(1,len(tmp)+1) :
			if old != tmp[len(tmp)-hoge] :
				num = num + len(tmp)-hoge+1
			old = tmp[len(tmp)-hoge] 
		length = length + len(line)-1

		if count == chain :
			count = 0
#			fo_r.write(str(num) + "\n")
			numr.append(str(num))
			num = 0
			length = 0

#############my-fill遷移確率の割合の計算##################
	for line in open(filemy, 'r'):
		count = count + 1
		tmp = list(line[:-1])
		for hoge in range(1,len(tmp)+1) :
			if old != tmp[len(tmp)-hoge] :
				num = num + len(tmp)-hoge+1
			old = tmp[len(tmp)-hoge] 
		length = length + len(line)-1

		if count == chain :
			count = 0
#			fo_my.write(str(num) + "\n")
			nummy.append(str(num))
			num = 0
			length = 0

	fo.write("#########################X-Fill Result##############################\n")
	fo.write("--------------------------------------------------------------------------------   \n")
	fo.write("PID      X-ratio      0-fill      1-fill      r-fill      my-fill   \n")
	for hoge in range(0,len(numx)) :
		tmp = str(numx[hoge])
		fo.write(" %3s       %6s        %6s        %6s        %6s         %6s   \n" %(str(hoge),tmp[:5],str(num0[hoge]),str(num1[hoge]),str(numr[hoge]),str(nummy[hoge])))
 


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
	filename2 = "./probability/" + z +"_scan" + chain + "_0-fill.txt"
	filename3 = "./probability/" + z +"_scan" + chain + "_1-fill.txt"
	filename4 = "./probability/" + z +"_scan" + chain + "_r-fill.txt"
	filename5 = "./probability/" + z +"_scan" + chain + "_myfill.txt"
	output = "./probability/" + z +"_scan" + chain + "_report.txt"
	
	file_area = "./report/" + z +"_area.txt"
	file_timing = "./report/" + z +"_timing.txt"
	file_tmax = "./report/"+"tmax_summaries.txt"

	rep(file_area,file_timing,file_tmax,int(chain),filename1,filename2,filename3,filename4,filename5,output)
