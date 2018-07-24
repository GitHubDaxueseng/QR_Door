# QR_Door Alpha version

------
本系统是一种基于云计算的二维码门禁系统模型。硬件平台通过扫描二维码，获取开锁密码，将密码发送到云端进行验证，实现开锁的门禁系统，该系统一期任务是实现本地硬件平台二维码解码、注册用户开锁，非注册开锁等功能。二期任务是进一步开发预约管理功能，用户打开认证系统，通过互联网向云端申请开锁密码，用户信息通过云端验证后，产生二维码数据，主机通过扫描二维码获取开锁信息，并将开锁信息上报给云端服务器，如果开锁码验证成功，主机随即向云端服务器发送开锁记录；如果不成功，提示失败，多次失败后，主机向云端服务器发送报警提示。

##部署说明：
> * 1.在服务器上执行宿主机代码启动宿主机；
> * 2.cmd下使用ipconfig查询宿主机IP地址，记下来，将终端机的test.py中联系宿主机的IP修改为当前宿主机IP地址；
> * 3.使用SSH工具连接宿主机，然后在终端执行python door.py即可唤醒宿主机正常工作。
> * 4.[视频效果](https://www.bilibili.com/video/av24135476/)

------
This system is a hardware platform of the two-dimensional code access control system model based on cloud computing. By scanning the qr code, it can obtain the unlocked password, send the password to the cloud for verification, and realize the unlocked access control system Second task is to further develop the reservation management functions, the user to open the certification system, via the Internet, the cloud application unlock password, authenticated user information through the clouds, produce qr code data, host by scanning qr code for the lock information, and will unlock information reported to the cloud server, if the lock code verification is successful, the host and then send the lock to the cloud server records; If it fails, the prompt fails. After several failures, the host sends an alarm to the cloud server.
##Deployment instructions:
> * 1.Execute the host machine code on the server to start the host machine;
> * 2.cmd use ipconfig to query the IP address of the host, write it down, change the IP of the host machine's test.py to the current host IP address;
> * 3.Use the SSH tool to connect to the host, and then execute python door.py on the terminal to wake up the host.
> * 4.[Video Effects] (https://www.bilibili.com/video/av24135476/)
