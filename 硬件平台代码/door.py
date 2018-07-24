#! /usr/bin/python
# -*- coding:utf-8 -*-
import sound
import test
while(1):
    if sound.checkdist() < 0.20:
        test.verify()
	time.sleep(2)