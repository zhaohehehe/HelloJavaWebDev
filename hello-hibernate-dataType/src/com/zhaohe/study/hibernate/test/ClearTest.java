package com.zhaohe.study.hibernate.test;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.zhaohe.study.hibernate.bean.People;
import com.zhaohe.study.hibernate.util.HibernateUtil;

public class ClearTest {

	@SuppressWarnings("unchecked")
	public static void main(String[] args) throws IOException {
		Session session=HibernateUtil.openSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			Query<People> query=(Query<People>)session.createQuery("from People");
			//方式一：效率低，查询语句多
			Iterator<People> iter=(Iterator<People>)query.iterate();
			while(iter.hasNext()){
				session.delete(iter.next());
			}
			//方式二：效率高，查询语句少
			/*List<People> list=(List<People>)query.getResultList();
			for(Iterator<People> it=list.iterator();it.hasNext();){
				People people=(People)it.next();
				session.delete(people);
			}*/
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
