#! /usr/bin/python
# -*- coding:utf-8 -*-
import jpype
import communicate as cm
import os.path
import locker
def verify():
    #jarpath = os.path.join(os.path.abspath('.'),'releaseDetection.jar')
    jarpath = os.path.join(os.path.abspath('.'),'releaseDetection2.0.jar')
    #print jarpath
    #jpype.startJVM(jpype.getDefaultJVMPath()," -ea"," -Djava.class.path=%s"%jarpath)
    if jpype.isJVMStarted() == 0:
        jpype.startJVM("/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/arm/server/libjvm.so","-ea", "-Djava.class.path=%s" % (jarpath))
    Test = jpype.JClass('js.com.client.ResolveClient')
    t = Test()
    raw = t.cycleDecode()
    content = cm.toServer(raw)
    print raw
    if (raw is not '') and content is not '0':
        locker.open()
    #jpype.shutdownJVM()  May 1st changed