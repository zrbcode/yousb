#!/usr/bin/env python

import sys,socket
dest = ('<broadcast>',7000)

s= socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET,socket.SO_BROADCAST,1)
s.bind(('',7001))
s.sendto('Hello',dest)
print "Looking for replies:press Ctrl-C to stop.."
while 1:
	buf,address = s.recvfrom(8192)
	print address
	if len(buf):
		print "Receive from %s:%s" % (address,buf)
	else:
		break
