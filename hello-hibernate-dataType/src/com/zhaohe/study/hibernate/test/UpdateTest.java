package com.zhaohe.study.hibernate.test;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhaohe.study.hibernate.bean.People;
import com.zhaohe.study.hibernate.util.HibernateUtil;

public class UpdateTest {

	public static void main(String[] args) throws IOException {
		Session session=HibernateUtil.openSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			People people=session.load(People.class, new Long(2));
			people.setBirth(new java.sql.Date(new java.util.Date().getTime()));
			people.setMarryTime(new java.sql.Timestamp(new java.util.Date().getTime()));
			session.update(people);
			tx.commit();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
		}finally{
			session.close();
			
		}
		
		
	}

}
