#!/usr/bin/env python
#*--coding:utf8--*

import socket,sys,struct,time

hostname = 'localhost'
port = 7000

host = socket.gethostbyname(hostname)

s = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)

s.sendto('',(host,port))

print "Looking for replies;press Ctrl+c to stop"

buf = s.recvfrom(2048)[0]

if len(buf) !=4:
	print "Wrong-size reply %d:%s" %(len(buf),buf)
	sys.exit(1)

secs = struct.unpack("!I",buf)[0]
secs -= 2208988800
print time.ctime(int(secs))
