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
	String name=(String)request.getAttribute("LogName");
	if(null==name)
	{%>
		<h1>您尚未登录！</h1>
	<% }
	else
	{%>
		<h1><%=name %>已经登录！</h1>
	<%} %>
</body>
</html>