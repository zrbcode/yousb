#!/usr/bin/env python

import socket
import sys

port = 7000
host = sys.argv[1]
filename = sys.argv[2]

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

s.connect((host,port))
fd = s.makefile('rw',0)

fd.write(filename + "\r\n")

for line in fd.readlines():
	sys.stdout.write(line)
