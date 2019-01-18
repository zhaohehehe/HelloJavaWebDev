package com.zhoahe.study.ognl;

import ognl.Ognl;
import ognl.OgnlContext;
import ognl.OgnlException;

public class OgnlTest {

	public static void main(String[] args) throws OgnlException {
		Person person=new Person();
		person.setName("zhangsan");
		
		Dog dog=new Dog();
		dog.setName("hali");
		
		Dog dog2=new Dog();
		dog2.setName("hali2");
		person.setDog(dog2);
		
		OgnlContext context=new OgnlContext();
		context.put("person", person);
		context.put("dog", dog);
		//使得person对象设置为根对象
		context.setRoot(person);
		Object object=Ognl.parseExpression("name");
		System.out.println(object);
		Object object2=Ognl.getValue(object, context,context.getRoot());
		System.out.println(object2);
		System.out.println("------------------------------------");
		Object obj1=Ognl.parseExpression("dog.name");
		System.out.println(obj1);
		Object obj2=Ognl.getValue(obj1, context,context.getRoot());
		System.out.println(obj2);
		System.out.println("-----------------------------------");
		Object obj3=Ognl.parseExpression("#person.dog.name");
		System.out.println(obj3);
		Object obj4=Ognl.getValue(obj3, context,context.getRoot());
		System.out.println(obj4);
		System.out.println("-----------------------------------");
		Object object3=Ognl.parseExpression("#person.name");
		System.out.println(object3);
		Object object4=Ognl.getValue(object3, context, context.getRoot());
		System.out.println(object4);
		System.out.println("-----------------------------------");
		Object object5=Ognl.parseExpression("#person.name");
		System.out.println(object5);
		Object object6=Ognl.getValue(object5, context, context.getRoot());
		System.out.println(object6);
	}

}
