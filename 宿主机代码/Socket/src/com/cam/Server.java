package com.cam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.Scanner;

public class Server {
	public static void main(String[] args) {
		try {
			ServerSocket serverSocket = new ServerSocket(9999);
			while (true) {
				Socket socket = serverSocket.accept();
				// 获取输入流，并读取客户端信息
				InputStream is = socket.getInputStream(); // 字节输入流
				InputStreamReader isr = new InputStreamReader(is);
				BufferedReader br = new BufferedReader(isr);
				// 获取输出流，响应客户端的请求
				OutputStream os = socket.getOutputStream();
				PrintWriter pw = new PrintWriter(os);
				String info = null;
				while ((info = br.readLine()) != null) {
					System.out.println("终端机请求内容:"+info+"   请求鉴别:"+info.equals("测试")+"\n");
					if (info.equals("222015602053086"))// 校验函数
						pw.write("open");
					else
						pw.write("close");
					//pw.write("1");
					pw.flush();
				}
				socket.shutdownInput(); // 关闭输入流
				// 关闭资源
				pw.close();
				os.close();
				br.close();
				isr.close();
				is.close();
				// socket.close();//可以保证socket持续工作
				// serverSocket.close();//可以保证socket持续工作
				/*System.out.println("请输入口令:");
				Scanner sc = new Scanner(System.in);
				String key = sc.next();*/
			}
		} catch (IOException e) {
		}
	}
}