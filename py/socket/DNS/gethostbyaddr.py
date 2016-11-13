#!/usr/bin/env python
#*--coding:utf8--*

import sys,socket

try:
	result = socket.gethostbyaddr(sys.argv[1])

	print "Primary hostname:"
	print " "+result[0]
	print "\nAddress:"
	for item in result[2]:
		print "	"+item
except socket.herror,e:
	print "Couldn't look up name:",e
