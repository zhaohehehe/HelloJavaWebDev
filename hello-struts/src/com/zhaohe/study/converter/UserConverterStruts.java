package com.zhaohe.study.converter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.struts2.util.StrutsTypeConverter;

import com.zhaohe.study.bean.User;

public class UserConverterStruts extends StrutsTypeConverter {

	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		//从页面转向后台
		/**
		 * 批处理
		 */
		List<User> list=new ArrayList<User>();
		for(String value:arg1){
			User userTemp=new User();
			StringTokenizer st=new StringTokenizer(value,";");
			userTemp.setUsername(st.nextToken());
			userTemp.setPassword(st.nextToken());
			if(userTemp!=null){
				list.add(userTemp);
			}
		}
		return list;
		
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		
		/**
		 * 批处理
		 */
		List<User> list=(List<User>)arg1;
		StringBuffer buffer=new StringBuffer();
		for(Iterator it=list.iterator();it.hasNext();){
			User user=(User)it.next();
			String username=user.getUsername();
			String password=user.getPassword();
			buffer.append("username:").append(username).append(" ,password:").append(password).append(";\n");
		}
		return buffer.toString();
	}

}
