package com.zhaohe.study.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class TheInterceptor2 extends AbstractInterceptor{
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		System.out.println("the interceptor 2 before");
		System.out.println("the interceptor 2 action:"+arg0.getAction().getClass().getName());
		String result=arg0.invoke();
		System.out.println("the interceptor 2 after");
		return result;
	}

}
