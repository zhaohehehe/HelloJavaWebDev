package com.zhaohe.study.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhaohe.study.model.Person;
import com.zhaohe.study.service.PersonService;
import com.zhaohe.study.service.impl.PersonServiceImpl;

public class PersonAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7095838206417741016L;
	private int id;
	private String username;
	private String password;
	private int age;
	public String savePerson() throws Exception {
		Person person=new Person();
		person.setUsername(username);
		person.setPassword(password);
		person.setAge(age);
		
		java.sql.Date registerDate=new java.sql.Date(new java.util.Date().getTime());
		person.setRegisterDate(registerDate);
		
		PersonService personService=new PersonServiceImpl();
		personService.savePerson(person);
		
		List<Person> list=personService.listAllPersons();
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("list", list);
		
		return SUCCESS;
		
	}
	public String deletePerson() throws Exception {
		PersonService personService=new PersonServiceImpl();
		personService.removePerson(id);
		List<Person> list=personService.listAllPersons();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return SUCCESS;
	}
	public String getSinglePersonById() throws Exception{
		PersonService personService=new PersonServiceImpl();
		Person person=personService.getSinglePersonById(id);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("person", person);
		
		return SUCCESS;
	}
	public String updatePerson() throws Exception{
		PersonService personService=new PersonServiceImpl();
		Person person=personService.getSinglePersonById(id);
		person.setAge(age);
		person.setPassword(password);
		personService.updatePerson(person);
		List<Person> list=personService.listAllPersons();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("list",list);
		
		return SUCCESS;
		
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
