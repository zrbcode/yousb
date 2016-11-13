#!/usr/bin/env python
#*--coding:utf8--

import socket
import sys
import time

host = sys.argv[1]
textport = sys.argv[2]
filename = sys.argv[3]

try:
	s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
except socket.error,e:
	print "strange error creating socket:%s" % e
	sys.exit(1)
	
try:
	port = int(textport)
except ValueError:
	try:
		port = socket.getservbyname(textport,'tcp')
	except socket.error,e:
		print "Could`t find your port %s" % e
		sys.exit(1)
	try:
		s.connect((host,port))
	except socket.gaierror,e:
		print "Address-related error connecting to server %s" % e
		sys.exit(1)
	except socket.error,e:
		print "Connection error:%s" % e
		sys.exit(1)
	print "sleep............"
	time.sleep(10)
	print "Continuing....."
	
	try:
		s.sendall("GET %s HTTP/1.0\r\n\r\n" % filename)
	except socket.error,e:
		print "Error sending data:%s" % e
		sys.exit(1)
	
	try:
		s.shutdown(1)
	except socket.error,e:
		print "Error sending data(detected by shutdown): %s" % e
		sys.exit(1)
	while 1:
		try:
			buf = s.recv(2048)
		except socket.error ,e:
			print "Error receving data:%s" % e
			sys.exit(1)
		if not len(buf):
			break
		sys.stdout.write(buf)
		
	
	
	
	
	
	
	
	
	
	
	
