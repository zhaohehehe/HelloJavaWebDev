package com.zhaohe.study.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class TheInterceptor1 implements Interceptor{
	private String test;
	
	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		System.out.println("the interceptor 1 setTest invoked~");
		this.test = test;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		System.out.println("the interceptor 1 invoked!");
		System.out.println("the test of interceptor 1 is"+this.test);
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		System.out.println("the interceptor 1 before");
		System.out.println("the interceptor 1 action:"+arg0.getAction().getClass().getName());
		//调用下一个拦截器或者Action方法
		String result=arg0.invoke();
		System.out.println("the interceptor 1 after");
		return result;
	}

}
