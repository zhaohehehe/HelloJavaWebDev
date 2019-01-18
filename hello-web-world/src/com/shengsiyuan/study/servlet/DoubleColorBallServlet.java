package com.shengsiyuan.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoubleColorBallServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Set<Integer> set=new HashSet<Integer>();
		Random random=new Random();
		//6
		while(set.size()!=6){
			int randomValue=random.nextInt(33)+1;//1-33
			set.add(randomValue);
		}
		int randomValue=random.nextInt(16)+1;//1-16
		String result="red ball: ";
		for(Integer i:set){
			result+=i +" ";
		}
		result+="<br>blue ball: "+randomValue;
		
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		out.println("<html><head><tile>Result</title></head></html>");
		out.println("<body><h1>"+result+"</h1></body>");
		out.flush();
		out.close();
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
