package com.zhoahe.study.ognl;

import java.util.ArrayList;
import java.util.List;

import ognl.Ognl;
import ognl.OgnlContext;
import ognl.OgnlException;

public class OgnlTest2 {

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
		Object object1=Ognl.parseExpression("new java.util.LinkedList()");
		System.out.println(object1);
		Object object2=Ognl.getValue(object1, context, context.getRoot());
		System.out.println(object2);
		System.out.println("-------------------");
		Object object3=Ognl.getValue("{'aa','bb','cc'}", context, context.getRoot());
		System.out.println(object3);
		System.out.println("-------------------");
		Object object4=Ognl.getValue("{'aa','bb','cc'}[1]", context, context.getRoot());
		System.out.println(object4);
		System.out.println("--------------------");
		dog.setFriends(new String[]{"aa","bb","cc"});
		Object object5=Ognl.getValue("#dog.friends", context, context.getRoot());
		System.out.println(object5);
		Object object6=Ognl.getValue("#dog.friends[2]", context, context.getRoot());
		System.out.println(object6);
		System.out.println("@@@@@@@@@处理集合@@@@@@@@@@@@@@@@@@@@@");
		List<String> list=new ArrayList<String>();
		list.add("panda");
		list.add("cat");
		list.add("mouse");
		
		context.put("list", list);
		
		System.out.println(Ognl.getValue("#list[0]", context, context.getRoot()));
		System.out.println("@@@@@@@@@处理映射map@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(
				Ognl.getValue("#{'key1':'value1', 'key2':'value2','key3':'value3'}['key3']", context,context.getRoot())
				);
		System.out.println("@@@@@@@@@@过滤@@@@@@@@@@@@@@@@@@");
		List<Person> persons=new ArrayList<Person>();
		Person p1=new Person(); p1.setName("xiongda");
		Person p2=new Person(); p2.setName("guangtouqiang");
		Person p3=new Person(); p3.setName("xionger");
		persons.add(p1);
		persons.add(p2);
		persons.add(p3);
		context.put("persons", persons);
		//过滤(filtering):collection.{? expression}
		//#this代表每一个Person对象
		System.out.println(Ognl.getValue("#persons.{? #this.name.length()>8}.size()", context,context.getRoot()));
		System.out.println("-----伪属性------");
		System.out.println(Ognl.getValue("#persons.{? #this.name.length()>8}.size", context,context.getRoot()));
		System.out.println(Ognl.getValue("#persons.{? #this.name.length()>8}.isEmpty", context,context.getRoot()));
		//过滤(filtering)获取到集合当中的第一个元素:collection.{^ expression},返回的依然是一个集合，只不过是集合中的第一个元素
		System.out.println(Ognl.getValue("#persons.{^ #this.name.length()<8}", context,context.getRoot()));
		System.out.println(Ognl.getValue("#persons.{^ #this.name.length()<8}[0].name", context,context.getRoot()));
		//过滤(filtering)获取到集合当中的最后一个元素:collection.{$ expression},返回的依然是一个集合，只不过是集合中的第一个元素
		System.out.println(Ognl.getValue("#persons.{$ #this.name.length()<8}", context,context.getRoot()));
		System.out.println(Ognl.getValue("#persons.{$ #this.name.length()<8}[0].name", context,context.getRoot()));
		//投影(projection):collection.{expression}
		System.out.println(Ognl.getValue("#persons.{name}", context,context.getRoot()));
		//投影替换
		System.out.println(Ognl.getValue("#persons.{#this.name.length()<8?'helloworld':#this.name}", context,context.getRoot()));
	}

}















