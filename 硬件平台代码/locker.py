#! /usr/bin/python
# -*- coding:utf-8 -*-
import RPi.GPIO as G
import time
def open():
    #G.setwarnings(False)
    G.setmode(G.BOARD)
    G.setup(3, G.OUT)
    G.output(3, G.HIGH)
    time.sleep(5)
    G.output(3, G.LOW)
#G.cleanup()
