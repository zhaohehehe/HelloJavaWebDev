package com.zhaohe.study.listener;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.PreResultListener;

public class TheListener1 implements PreResultListener {

	@Override
	public void beforeResult(ActionInvocation arg0, String arg1) {
		System.out.println("result code:"+arg1);

	}

}
