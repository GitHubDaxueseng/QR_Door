#! /usr/bin/python
# -*- coding:utf-8 -*-
import RPi.GPIO as G
import time
#Blue means Echo   pin7
#Green means Trlg  pin5
def checkdist():
    #发出
    G.setwarnings(False)
    G.setmode(G.BOARD)
    G.setup(5,G.OUT,initial=G.LOW)
    G.setup(7,G.IN)
    G.output(5,G.HIGH)
    time.sleep(0.000015)
    G.output(5,G.LOW)
    while not G.input(7):
        pass
    t1=time.time()
    while G.input(7):
    	pass
    #高电平结束时停止计时
    t2=time.time()
    #返回距离
    return (t2-t1)*340/2
print checkdist()