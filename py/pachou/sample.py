#!/usr/bin/python
# coding=utf-8
#author:zrb 963664463@qq.com
import re
import requests

files = open("index.html","r");

word = files.read();

files.close();


reg1 = re.search("<title>(.*?)</title>",word,re.S).group(1);
print reg1;
body1 = re.search('<ul class="cf"(.*?)</ul>',word,re.S).group(1);

body2 = re.findall('href="(.*?)"',body1,re.S);

for each_url in body2:
	print each_url;

img_url = re.findall('<img src="(.*?)"',body1,re.S);

i =1;
for each in img_url:
	print "now download NO.{0} imagie...".format(i);
	img = requests.get(each);
	fopen = open("img/"+str(i)+".jpg","wb");
	fopen.write(img.content);
	fopen.close;
	i+=1;
	
		
	
