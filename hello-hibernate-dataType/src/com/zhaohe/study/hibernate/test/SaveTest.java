package com.zhaohe.study.hibernate.test;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhaohe.study.hibernate.bean.People;
import com.zhaohe.study.hibernate.util.HibernateUtil;

public class SaveTest {

	public static void main(String[] args) throws IOException {
		People people=new People();
		people.setBirth(new java.sql.Date(new java.util.Date().getTime()));
		people.setMarryTime(new java.sql.Timestamp(new java.util.Date().getTime()));
		//binary
		InputStream is=new FileInputStream("D:/test/test.txt");
		int len=is.available();
		byte[] buffer=new byte[len];
		is.read(buffer);
		people.setFile(buffer);
		is.close();
		Session session=HibernateUtil.openSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			session.save(people);
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
