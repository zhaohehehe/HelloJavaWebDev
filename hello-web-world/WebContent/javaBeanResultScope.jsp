<%@page import="com.shengsiyuan.study.bean.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//scope:request
		Person person02=(Person)request.getAttribute("person02");
		//scope:session
		Person person03=(Person)session.getAttribute("person03");
		//scope:application
		Person person04=(Person)application.getAttribute("person04");
	%>
	<%	if(person02!=null)
		{ %>
			<h1>请多次刷新查看结果的变化!</h1>
			<h1>scope:request</h1><br>
			<h3>request.getAttribute("person02").getName()=<%=person02.getName() %></h3>			
		<%} %>
	<%	if(person03!=null)
		{ %>
			<h1>请多次刷新或者关闭浏览器查看结果的变化</h1>
			<h1>scope:session</h1><br>
			<h3>session.getAttribute("person03").getName()=<%=person03.getName() %></h3>			
		<%} %>
	<%	if(person04!=null)
		{ %>
			<h1>请多次刷新或者关闭浏览器或者重启tomcat查看结果的变化</h1>
			<h1>scope:application</h1><br>
			<h3>application.getAttribute("person04").getName()=<%=person04.getName() %></h3>			
		<%} %>
		
</body>
</html>