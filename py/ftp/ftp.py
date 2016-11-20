#!/usr/bin/python
#*--coding:utf8--


from ftplib import FTP

f = FTP('ftp.ibiblio.org')

print "Welcome:",f.getwelcome()
f.login()

print "CWD:",f.pwd()
f.quit()





