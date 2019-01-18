package com.zhaohe.study.converter;

import java.util.Map;
import java.util.StringTokenizer;

import org.apache.struts2.util.StrutsTypeConverter;

import com.zhaohe.study.bean.User;

public class UserConverterStrutsGlobal extends StrutsTypeConverter {

	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		User user=new User();
		String value=arg1[0];
		StringTokenizer st=new StringTokenizer(value,";");
		String username=st.nextToken();
		String password=st.nextToken();
		user.setUsername(username);
		user.setPassword(password);
		return user;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		User user=(User)arg1;
		String username=user.getUsername();
		String password=user.getPassword();
		String userInfo="username:"+username+",password:"+password;
		return userInfo;
	}

}
