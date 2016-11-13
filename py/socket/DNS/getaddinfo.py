#!/usr/bin/env python
#*--coding:utf8--*

import sys,socket


result = socket.getaddrinfo(sys.argv[1],None)

print result[0][4][0]
