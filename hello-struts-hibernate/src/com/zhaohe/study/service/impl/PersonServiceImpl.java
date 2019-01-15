package com.zhaohe.study.service.impl;

import java.util.List;

import com.zhaohe.study.dao.PersonDAO;
import com.zhaohe.study.dao.impl.PersonDAOImpl;
import com.zhaohe.study.model.Person;
import com.zhaohe.study.service.PersonService;

public class PersonServiceImpl implements PersonService{

	@Override
	public void savePerson(Person person) {
		PersonDAO personDAO=new PersonDAOImpl();
		personDAO.savePerson(person);
		
	}

	@Override
	public List<Person> listAllPersons() {
		PersonDAO personDAO=new PersonDAOImpl();
		return personDAO.listAllPersons();
	}

	@Override
	public void removePerson(int id) {
		PersonDAO personDAO=new PersonDAOImpl();
		personDAO.removePerson(id);
	}

	@Override
	public Person getSinglePersonById(int id) {
		PersonDAO personDAO=new PersonDAOImpl();
		Person person=personDAO.getSinglePersonById(id);
		return person;
	}

	@Override
	public void updatePerson(Person person) {
		PersonDAO personDAO=new PersonDAOImpl();
		personDAO.updatePerson(person);
		
	}

}
