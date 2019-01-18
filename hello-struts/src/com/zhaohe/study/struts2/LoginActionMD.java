package com.zhaohe.study.struts2;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zhaohe.study.bean.Person;

public class LoginActionMD extends ActionSupport implements ModelDriven<Person>,Preparable {

	private Person person=new Person();
	@Override
	public Person  getModel() {
		return person;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	@Override
	public void prepare() throws Exception {

		//一些初始化代码
		System.out.println("prepare invoked!");
	}
}
