#!/usr/bin/env python
#*--coding:utf8--

import socket
solist = [x for x in dir(socket) if x.startswith('SO_')]
print solist
solist.sort()
for x in solist:
	print x

