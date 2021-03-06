package com.zhaohe.study.service;

import java.util.List;

import com.zhaohe.study.model.Person;

public interface PersonService {
	public void savePerson(Person person);
	public List<Person> listAllPersons();
	
	public void removePerson(int id);
	
	public Person getSinglePersonById(int id);
	public void updatePerson(Person person);
}
