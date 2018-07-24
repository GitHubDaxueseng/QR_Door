#-*- coding:utf-8 -*-
import socket
import time

def toServer(indata):
    socket.setdefaulttimeout(4)
    s=socket.socket()
    s.connect(("10.128.1.184",9999))#s.connect((host,port))  #需要连接的服务器，端口。本次测试为同一台主机
    goon=True
    while(goon):
        #print ('Please input data:')
        #indata = input('> ')
        data = indata+"\r"
        #print(data)
        s.send(data.encode('utf-8'))
        Data =  s.recv(1024)
        #recv方法用于接收数据，后面1024是每次接收数据的最大长度，可以自己设定
        #print(Data.decode('utf-8'))   #打印服务器端传输过来的内容
        return Data.decode('utf-8')
    s.close()#关闭连接
