#!/usr/bin/env python
#*--coding:utf8--
import time,sys
import requests,re,os

user = raw_input("Input Your Name:")
if user == 'root':
	print "You are super man"
elif user == 'admin':
	print "You are %s" % user
else:
	print "no find this user"
	sys.exit()
time.sleep(1)
print "正在连接......."
time.sleep(1)

password = raw_input("Input Your Code:")

if password == 'admin' and user == 'root':
	print "You are right!Please Hold on......"
else:
	print "The code is error!!!"
	sys.exit()
	
print "Login in ....."
time.sleep(1)
print "我操，Fuck!!!!"
time.sleep(1)
print "哈哈....."
time.sleep(1)
print "被整了吧，啥也没有"	
time.sleep(2)
print "SB!!!!!!"
time.sleep(1)
print "算了，还是给你点资源吧......"
time.sleep(1)
print "Hold on ......"
time.sleep(1)
try:
	url = requests.get(sys.argv[1]);
	text =  url.text;
except Exception,e:
	print "失败啦！！！！"
	print e;
	sys.exit()
reg = re.findall('<img src="(.*?)"',text,re.S);

i =1;
for each in reg:
	img = requests.get(each);
	print "now download NO.{0} file,please wait ...".format(i);
	fopen = open("file/"+str(i)+".jpg","wb");
	fopen.write(img.content);
	fopen.close();
	i+=1;
time.sleep(1)
print "好了，去/var/www/py/mytest/file文件里去查看福利吧"
time.sleep(4)
print "The file download is end,please look look."
time.sleep(1)
print "走啦！！！！bye bye"
sys.exit()
