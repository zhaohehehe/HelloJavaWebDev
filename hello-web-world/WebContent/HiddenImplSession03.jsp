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
		String username=request.getParameter("username");
		String interest=request.getParameter("interest");
	%>
	<h2>注册信息：</h2>
	<h3>用户名：<%=username %></h3>
	<h3>兴趣爱好：<%=interest %></h3>
</body>
</html>