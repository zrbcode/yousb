#!/usr/bin/env python
#*--coding:utf8--
import socket
s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
host = "127.0.0.1"
port = 7000
try:
	s.connect((host,port))
	s.sendall("chat")
	buf = s.recv(2048)
	print buf
except socket.gaierror,e:
	print "ERROR:zrb >>>%s" %e
	
	

