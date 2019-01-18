package com.zhaohe.study.converter;

import java.util.Map;
import java.util.StringTokenizer;

import com.zhaohe.study.bean.User;

import ognl.DefaultTypeConverter;

public class UserConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Map context,Object value,Class toType)
	{
		//是由页面到后台还是有由后台到页面，根据toType判断
		if(User.class==toType)//从页面向后台对象转换
		{
			String[] str=(String[])value;
			String firstValue=str[0];
			//使用分分号隔开，所以
			StringTokenizer st=new StringTokenizer(firstValue,";");
			
			String username=st.nextToken();
			String password=st.nextToken();
			
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			return user;
		}
		else if(String.class==toType)//从后台对象向页面转换
		{
			User user=(User)value;
			String username=user.getUsername();
			String password=user.getPassword();
			String userInfo="username:"+username+",password:"+password;
			return userInfo;
		}
		return null;
	}
	
}
