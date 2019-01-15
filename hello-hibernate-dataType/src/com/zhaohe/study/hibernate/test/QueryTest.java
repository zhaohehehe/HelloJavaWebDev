package com.zhaohe.study.hibernate.test;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.zhaohe.study.hibernate.bean.People;
import com.zhaohe.study.hibernate.util.HibernateUtil;

public class QueryTest {

	@SuppressWarnings("unchecked")
	public static void main(String[] args) throws IOException {
		Session session=HibernateUtil.openSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			Query<People> query=(Query<People>)session.createQuery("from People as p order by p.id desc").setFirstResult(0).setMaxResults(2);
			List<People> list=(List<People>)query.getResultList();
			for(Iterator<People> it=list.iterator();it.hasNext();){
				People people=(People)it.next();
				System.out.println(people.getId());
				System.out.println(people.getBirth());
				System.out.println(people.getMarryTime());
				byte[] buffer=people.getFile();
				OutputStream os=new FileOutputStream("D:/test/"+people.getId()+".txt");
				os.write(buffer);
				os.close();
			}
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
