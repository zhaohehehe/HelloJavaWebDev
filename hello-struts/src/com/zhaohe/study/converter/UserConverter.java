package com.zhaohe.study.converter;

import java.util.Map;
import java.util.StringTokenizer;

import com.zhaohe.study.bean.User;

import ognl.DefaultTypeConverter;

public class UserConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Map context,Object value,Class toType)
	{
		//����ҳ�浽��̨�������ɺ�̨��ҳ�棬����toType�ж�
		if(User.class==toType)//��ҳ�����̨����ת��
		{
			String[] str=(String[])value;
			String firstValue=str[0];
			//ʹ�÷ַֺŸ���������
			StringTokenizer st=new StringTokenizer(firstValue,";");
			
			String username=st.nextToken();
			String password=st.nextToken();
			
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			return user;
		}
		else if(String.class==toType)//�Ӻ�̨������ҳ��ת��
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
