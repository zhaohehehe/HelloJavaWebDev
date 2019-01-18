package com.zhaohe.study.struts2;

import java.util.Calendar;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.zhaohe.study.exception.PasswordException;
import com.zhaohe.study.exception.UsernameException;

public class RegisterAction extends ActionSupport {

	private String username;
	private String password;
	private String repassword;
	private int age;
	private Date birthday;
	private Date graduation;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getGraduation() {
		return graduation;
	}

	public void setGraduation(Date graduation) {
		this.graduation = graduation;
	}

	@Override
	public String execute() throws Exception {
		/*System.out.println("execute invoked!");*/
		if(!"hello".equals(username)){
			throw new UsernameException("用户名异常");
		}
		if(!"world".equals(password)){
			throw new PasswordException("密码异常");
		}
		return SUCCESS;
	}
	@Override
	public void validate() {
		/*System.out.println("validate invoked!");*/
		//用户名介于4-6之间
		/*if(null==username||username.length()<4||username.length()>6){
			this.addActionError("validate():username invalid!");
			this.addFieldError(username, "validate():username invalid in Field!");
		}
		if(null==password||password.length()<4||password.length()>6){
			this.addActionError("validate():password invalid!");
		}
		else if(null==repassword||repassword.length()<4||repassword.length()>6){
			this.addActionError("validate():repassword invalid!");
		}
		else if(!password.equals(repassword)){
			this.addActionError("validate():两次密码不一致！");
		}
		if(age<10||age>50){
			this.addActionError("validate():age invalid!");
		}
		if(null==birthday){
			this.addActionError("validate():birthday invalid!");
		}
		if(null==graduation){
			this.addActionError("validate():graduation invalid!");
		}
		//比较日期的先后顺序
		if(null!=birthday&&null!=graduation){
			Calendar c1=Calendar.getInstance();
			c1.setTime(birthday);
			
			Calendar c2=Calendar.getInstance();
			c2.setTime(graduation);
			if(!c1.before(c2)){
				this.addActionError("validate():生日应该在毕业日期之前！");
			}
			
		}*/
	}
	
}
