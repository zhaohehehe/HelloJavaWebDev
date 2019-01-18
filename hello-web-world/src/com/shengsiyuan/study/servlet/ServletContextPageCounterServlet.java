package com.shengsiyuan.study.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletContextPageCounterServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 ServletContext  servletContext=req.getSession().getServletContext();
		 if(null==servletContext.getAttribute("counter")){
			 servletContext.setAttribute("counter", 1);
		 }
		 else{
			 int count=(int) servletContext.getAttribute("counter");
			 servletContext.setAttribute("counter", count+1);
		 }
		 req.getRequestDispatcher("counter.jsp").forward(req, resp);
	}

}
