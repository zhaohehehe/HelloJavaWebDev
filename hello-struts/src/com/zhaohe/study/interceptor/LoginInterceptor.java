package com.zhaohe.study.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zhaohe.study.struts2.LoginAction;

public class LoginInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6842208172247786234L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map<String, Object> map=arg0.getInvocationContext().getSession();
		if(LoginAction.class==arg0.getAction().getClass()){
			return arg0.invoke();
		}
		
		//���û���û���Ϣ����ִ��LoginAction���е�½
		if(null==map.get("userInfo")){
			return Action.LOGIN;
		}
		//�Ѿ���½������������
		return arg0.invoke();
		
	}

}
