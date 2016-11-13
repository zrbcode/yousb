#!/usr/bin/python
# coding=utf-8
import base64
import random
import time

users = {
	"zrb":["admin"]
}

def get_token(uid):
	token = base64.b64encode(':'.join([str(uid),str(random.random()),str(time.time()+7200)]));	
	users[uid].append(token)
	return token

up = get_token('zrb')


_token = base64.b64decode(up)
print _token.split(':')
print users.get(_token.split(':')[0])[-1]
