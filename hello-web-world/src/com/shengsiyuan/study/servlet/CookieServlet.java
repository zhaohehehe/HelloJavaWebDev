package com.shengsiyuan.study.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieServlet extends HttpServlet {

	//����2������ֻ��Ϊ����ʾcookie��ʵ�ʿ�������������
	private int count1;
	private int count2;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//����������Cookie���ͻ���
		Cookie cookie=new Cookie("cookieName"+count1++,"cookieValue"+count2++);
		cookie.setMaxAge(10);//10�룬����Ϊ��λ
		resp.addCookie(cookie);
	//�������ӿͻ�����ȡ��Cookie��ͨ�������ȡ�ͻ���Cookie
		Cookie[] cookies=req.getCookies();
		if(null==cookies){
			return;
		}
		for(Cookie c:cookies){
			System.out.println("cookieName"+c.getName());
			System.out.println("cookieValue"+c.getValue());
		}
		
	
	}

}
