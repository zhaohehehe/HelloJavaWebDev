package com.zhaohe.study.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.zhaohe.study.dao.PersonDAO;
import com.zhaohe.study.model.Person;
import com.zhaohe.study.util.HibernateUtil;

public class PersonDAOImpl implements PersonDAO {

	@Override
	public void savePerson(Person person) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			session.save(person);
			tx.commit();
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}

	@Override
	public List<Person> listAllPersons() {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		List<Person> list=null;
		try{
			Query<Person> query=(Query<Person>)session.createQuery("from Person");
			list=(List<Person>)query.getResultList();
			tx.commit();
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return list;
	}

	@Override
	public void removePerson(int id) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		//首先查询得到Object再删除?
		try{
			//先查询?
			Person person=(Person)session.get(Person.class, id);
			//再删除?
			session.delete(person);
			tx.commit();
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}

	@Override
	public Person getSinglePersonById(int id) {
		Person person=null;
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			person=(Person)session.get(Person.class, id);
			tx.commit();
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return person;
	}

	@Override
	public void updatePerson(Person person) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			session.update(person);;
			tx.commit();
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		
	}

}














