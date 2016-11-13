#!/usr/bin
#*--coding:utf8--
import socket,traceback,time


host = ''
port = 7000

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
s.bind((host,port))
s.listen(2)

while 1:
	try:
		clientsock,clientaddr = s.accept()
	except KeyboardInterrupt:
		raise
	except:
		traceback.print_exc()
		continue
	try:
		print "Got connection from",clientsock.getpeername()
		while 1:
			try:
				clientsock.sendall(time.asctime()+'\n')
			except:
				break
			time.sleep(5)
	except(KeyboardInterrupt,SystemExit):
		raise
	except:
		traceback.print_exc()
			
	try:
		clientsock.close()
	except KeyboardInterrupt:
		raise
	except:
		traceback.print_exc()




















