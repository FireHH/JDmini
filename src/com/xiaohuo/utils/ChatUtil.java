package com.xiaohuo.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

/**
 * 
 * @author Fire
 *
 */
public class ChatUtil
{
	/**
	 * 对话智能客服获取回复
	 * @param message 用户输入的信息
	 * @return 智能客服回复
	 */
	public static String getResult(String message)
	{
		StringBuffer buffer=new StringBuffer();
		try
		{
			//社会自编码格式utf-8
			String question=URLEncoder.encode(message,"utf-8");
			//对接图灵机器人接口
			String requestUrl="http://www.tuling123.com/openapi/api?"+"key=dbb9f9f597914e97be2f3768ab1d8ff8&info="+question;
		    //建立网络连接端
			URL urlLObj=new URL(requestUrl);
			//获取连接
			URLConnection connection=urlLObj.openConnection();
			//直接连接
			connection.connect();
			//获取请求资源
			InputStreamReader reader=new InputStreamReader(connection.getInputStream(),"utf-8");
			//建立缓冲刘
			BufferedReader br=new BufferedReader(reader);
			
			
			
			String temp=null;
			while((temp=br.readLine())!=null)	
			{
				buffer.append(temp);
			}
			//关闭流
			reader.close();
			br.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return buffer.toString();
	}
	public static void main(String[] args)
	{
		//调用图灵机器人大数据类库
		//建立文件缓冲流
		//返回页面
	}

}
