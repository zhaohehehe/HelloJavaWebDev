package com.zhoahe.study.ognl;

import ognl.Ognl;
import ognl.OgnlContext;
import ognl.OgnlException;

public class OgnlTest1 {

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
		System.out.println("-----------调用方法--------------------------");
		Object object1=Ognl.parseExpression("name.toUpperCase().length()");
		System.out.println(object1);
		Object object2=Ognl.getValue(object1, context, context.getRoot());
		System.out.println(object2);
		System.out.println("-----------调用静态方法或者属性 --------------------------");
		Object object3=Ognl.parseExpression("@java.lang.Integer@toBinaryString(10)");
		System.out.println(object3);
		Object object4=Ognl.getValue(object3, context, context.getRoot());
		System.out.println(object4);
		System.out.println("---------特殊类的静态方法：java.lang.Math不需要指定------");
		Object object5=Ognl.parseExpression("@@min(1,34)");
		System.out.println(object5);
		Object object6=Ognl.getValue(object5, context, context.getRoot());
		System.out.println(object6);
		Object object7=Ognl.parseExpression("@@PI");
		System.out.println(object7);
		Object object8=Ognl.getValue(object7, context, context.getRoot());
		System.out.println(object8);
	}

}











