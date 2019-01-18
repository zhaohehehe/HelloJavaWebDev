package com.zhaohe.study.struts2;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhaohe.study.bean.User;
import com.zhaohe.study.service.LoginService;
import com.zhaohe.study.service.impl.LoginServiceImpl;

public class LoginAction extends ActionSupport{

	private String username;
	private String password;
	private Date date;
	private LoginService loginService=new LoginServiceImpl();
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
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String execute(){
		/*HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		
		session.setAttribute("hello", "helloworld");
		
		ActionContext actionContext=ActionContext.getContext();
		Map<String, Object> map=actionContext.getSession();
		Object object=map.get("hello");
		System.out.println(object);
		*/
		if(this.loginService.isLogin(username, password)){
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			
			ActionContext.getContext().getSession().put("userInfo", user);
			return SUCCESS;
		}
		return INPUT;
	}

}
