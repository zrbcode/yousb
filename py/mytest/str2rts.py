#*--coding:utf8--*
import sys
string = sys.argv[1];
i =0
tmp =''
for item in range(len(string)):
	tmp+= string[len(string)-1-i]
	i+=1
	
	
print tmp
	

