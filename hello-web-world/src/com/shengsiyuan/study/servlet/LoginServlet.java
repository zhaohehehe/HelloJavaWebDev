package com.shengsiyuan.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("doGet() invoked");
		//process(req, resp);
		ArrayList<String> errorList=new ArrayList<String>();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String repassword=req.getParameter("repassword");
		if(username==null||password==null||repassword==null){
			errorList.add("没有获取到用户名或者密码,页面错误！");
		}	
		if(username.equals("")||password.equals("")||repassword.equals("")){
			errorList.add("您输入的用户名或者密码为空！");
		}
		if(!password.equals(repassword)){
			errorList.add("您输入的密码不相同！");
		}
		if(errorList.isEmpty()){
			req.setAttribute("username", username);
			req.setAttribute("password", password);
			req.getRequestDispatcher("success.jsp").forward(req, resp);
		}
		else{
			req.setAttribute("errorList", errorList);
			req.getRequestDispatcher("fail.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost() invoked");
		//process(req, resp);
		this.doGet(req, resp);
	}
	@SuppressWarnings("unused")
	private void process(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		Enumeration names=req.getParameterNames();
		
		String[] values=req.getParameterValues("address");
		
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		while(names.hasMoreElements()){
			out.println("<h1>getParameterNames:"+names.nextElement()+"</h1>");
		}
		for(String str:values){
			out.println("<h1>getParameterValues:"+str+"</h1>");
		}
		out.println("<html><head><tile>Login Result</title></head></html>");
		out.println("<body><h1>username:"+username+"<br>"+"password:"+password+"</h1></body>");
		out.flush();
		out.close();
	}

}
