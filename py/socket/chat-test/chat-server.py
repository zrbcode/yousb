#!/usr/bin/env python
#*--coding:utf8--

import sys,socket,time,struct,traceback,re
host = ""
port =7000

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.bind((host,port))
s.listen(5)
print "成功....."
print "端口号：7000"
while 1:
	try:
		client,address = s.accept()
		print "%s connect in......" % str(address)
		if len(address):
			#####
			files = open('file/user.txt','r')
			lists = re.split('#',files.read())
			files.close()
			for item in lists:
				if item != address:
					fopen = open('file/user.txt','w+')
					fopen.write(str(address))
					fopen.close()
					client.sendall('No Connected....')
					client.close()
				else:
					client.sendall('ok')
					client.close()
			#####
		
	except(KeyboardInterrupt,SystemExit):
		raise
	except:
		traceback.print_exc()

