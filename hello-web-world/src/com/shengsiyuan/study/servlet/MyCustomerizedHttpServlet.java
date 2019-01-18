package com.shengsiyuan.study.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyCustomerizedHttpServlet extends HttpServlet{

	@Override
	public void init(ServletConfig config) throws ServletException {

		System.out.println("my init invoked!");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		System.out.println("my doGet invoked!");
	}
	@Override
	public void destroy() {

		System.out.println("my destroy invoked!");
	}

}
