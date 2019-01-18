package com.shengsiyuan.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletAccess extends HttpServlet{

	@Override
	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		
		PrintWriter out=resp.getWriter();
		out.println("<html><head><tile>hello world sample</title></head></html>");
		out.println("<body><h1>Hello:"+new Date().toLocaleString()+"</h1></body>");
		System.out.println(new Date().toLocaleString());
		out.flush();
		out.close();
	
	}

}
