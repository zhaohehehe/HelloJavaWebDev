package com.zhaohe.study.bean.ognl;

import java.util.List;
import java.util.Map;

public class Person {
	private String name;
	private int age;
	private String address;
	private String[] friends;
	private Dog dog;
	private Map<String,String> map;
	
	public Person(){}
	public Person(String name, int age, String address, String[] friends, Dog dog, Map<String, String> map) {
		this.name = name;
		this.age = age;
		this.address = address;
		this.friends = friends;
		this.dog = dog;
		this.map = map;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String[] getFriends() {
		return friends;
	}
	public void setFriends(String[] friends) {
		this.friends = friends;
	}
	public Dog getDog() {
		return dog;
	}
	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public Map<String, String> getMap() {
		return map;
	}
	public void setMap(Map<String, String> map) {
		this.map = map;
	}
	
	
}
