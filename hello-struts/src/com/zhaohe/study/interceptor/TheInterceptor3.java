package com.zhaohe.study.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.zhaohe.study.listener.TheListener1;

public class TheInterceptor3 extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		arg0.addPreResultListener(new TheListener1());
		
		System.out.println("the interceptor 3 before");
		System.out.println("the interceptor 3 action:"+arg0.getAction().getClass().getName());
		String result=arg0.invoke();
		System.out.println("the interceptor 3 after");
		return result;
	}

}
