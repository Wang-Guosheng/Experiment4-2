
DELIMITER="\t"

import csv

while True:
	fin = input("Please provide a text file:\n\t\t\t\t")
	cap = str(input("Please give the caption of the table:\n\t\t\t\t"))
	lab = str(input("Please give the label of the table:\n\t\t\t\t"))
	fout = str(input("Please give a filename:\n\t\t\t\t"))
	print("\\begin{table}[htbp!]\n\t\\centering\n\t\\caption{" + cap + "}\\label{tab:" + lab + "}")
	s = "\\begin{table}[htbp!]\n\t\\centering\n\t\\caption{" + cap + "}\\label{tab:" + lab + "}"
	with open(fin,'r',encoding='utf8') as c:
		first=True
		second = True
		reader = csv.reader(c, delimiter=DELIMITER)
		for row in reader:
			if(row!=[]):
				if(first):
					first=False
					p="\\begin{tabular}{c"
					for i in range(len(row)-1):
						if(i==0):
							p+="||c"
						else:
							p+="|c"
					p+="}\n\t\t\\hline\\hline"
					print("\t"+p)
					s = s+ "\t" + p
				else:
					print("\t\t\\hline")
					s = s + "\t\t\\hline"
					if second:
						second = False
						print("\t\t\\hline")
						s = s + "\hline"
				s = s + "\n"
			r=""
			for i in range(len(row)):
				appender = str(row[i])
				if i == len(row)-1:
					r+=appender+"\\\\"
				else:
					r+=appender+" & "
			print("\t\t"+r)
			s = s + "\t\t" + r
	print("\t\t\\hline\\hline\n\t\\end{tabular}\n\\end{table}")
	s = s + "\t\t\\hline\\hline\n\t\\end{tabular}\n\\end{table}"
	with open(fout+".tex",'w',encoding = 'utf8') as f:
		f.write(s)
	input("\nOutput written in \'" + fout + ".tex\'. \nTo use the result in a tex file, write \'\\input{" + fout + ".tex}\'.")
