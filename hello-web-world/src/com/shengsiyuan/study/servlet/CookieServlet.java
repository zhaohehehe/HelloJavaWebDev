package com.shengsiyuan.study.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieServlet extends HttpServlet {

	//以下2个变量只是为了演示cookie，实际开发中这样很少
	private int count1;
	private int count2;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//服务器发送Cookie给客户端
		Cookie cookie=new Cookie("cookieName"+count1++,"cookieValue"+count2++);
		cookie.setMaxAge(10);//10秒，以秒为单位
		resp.addCookie(cookie);
	//服务器从客户端请取出Cookie，通过请求获取客户端Cookie
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
