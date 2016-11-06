#!/usr/bin/python
# coding=utf-8
#author :zrb 963664463@qq.com

import re
import requests


url = requests.get("http://www.imooc.com/");

text =  url.text;
reg = re.findall('<div class="recomendContent clearfix moco-course-list">(.*?)<div class="outwrap-course">',text,re.S)[0];

result = re.findall('<img src="(.*?)"',reg,re.S);

i =1;
for each in result:
	img = requests.get(each);
	print "now download NO.{0} image,please wait ...".format(i);
	fopen = open("img/"+str(i)+".jpg","wb");
	fopen.write(img.content);
	fopen.close();
	i+=1;
