package com.zhaohe.study.struts2;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhaohe.study.bean.User;

public class UserAction2 extends ActionSupport {

	private List<User> user;


	public List<User> getUser() {
		return user;
	}


	public void setUser(List<User> user) {
		this.user = user;
	}

	/*
	@Override
	public String execute() throws Exception {
		for(User user:user){
			System.out.println("username:"+user.getUsername()+",password:"+user.getPassword());
		}
		return SUCCESS;
	}*/
	public String myExecute() throws Exception{
		System.out.println("myExecute invoked!!");
		return SUCCESS;
	}
	//�Զ���У�麯�������Զ���ִ�з������������й����ģ�����д������
	public void validateMyEcecute(){
		
		System.out.println("validateMyEcecute invoked!");
		this.addActionError("action error!");
	}
	
	
	
}
