#!/usr/bin/python
#coding:utf-8
import sys   ##加载sys这个模块。
import Image

for i in range(1,len(sys.argv)):
	try:
		im = Image.open(sys.argv[i])
		im = im.convert("RGB")
		im.save(sys.argv[i].split('.')[0]+".jpg")
		print " %s change success." % sys.argv[i]
	except Exception, e:
		print e
		print " %s change failed." % sys.argv[i]
	