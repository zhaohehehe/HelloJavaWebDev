package com.zhaohe.study.hibernate.bean;

import java.sql.Date;
import java.sql.Timestamp;

public class People {

	private long id;
	private Timestamp marryTime;
	private Date birth;
	private byte[] file;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Timestamp getMarryTime() {
		return marryTime;
	}
	public void setMarryTime(Timestamp marryTime) {
		this.marryTime = marryTime;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public byte[] getFile() {
		return file;
	}
	public void setFile(byte[] file) {
		this.file = file;
	}
	
	

}
