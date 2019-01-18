package com.zhaohe.study.action.ognl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.zhaohe.study.bean.ognl.Dog;
import com.zhaohe.study.bean.ognl.Person;

public class OgnlAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware {
	private String username;
	private String password;
	
	private Map<String,Object> requestMap;
	private Map<String,Object> sessionMap;
	private Map<String,Object> applicationMap;
	private List<Person> list;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.requestMap=arg0;
	}

	@Override
	public void setApplication(Map<String, Object> arg0) {
		this.sessionMap=arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.applicationMap=arg0;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public List<Person> getList() {
		return list;
	}

	public void setList(List<Person> list) {
		this.list = list;
	}

	@Override
	public String execute() throws Exception {
		Thread.sleep(10000);
		requestMap.put("hello", "request");
		sessionMap.put("hello", "session");
		applicationMap.put("hello", "application");
		
		Dog dog1=new Dog("dog1",8,"black");
		Dog dog2=new Dog("dog2",8,"white");
		
		String[] friends1={"f11","f12","f13"};
		String[] friends2={"f21","f22","f23"};
		
		
		Map<String,String> map1=new HashMap<String,String>();
		Map<String,String> map2=new HashMap<String,String>();
		map1.put("key11", "value11");
		map1.put("key12", "value12");
		map2.put("key21", "value21");
		map2.put("key22", "value22");
		
		Person person1=new Person("zhangsan",20,"beijing",friends1, dog1, map1);
		Person person2=new Person("lisi",22,"beijing",friends2, dog2, map2);
		list=new ArrayList<Person>();
		list.add(person1);
		list.add(person2);
		return SUCCESS;
	}
	
}
