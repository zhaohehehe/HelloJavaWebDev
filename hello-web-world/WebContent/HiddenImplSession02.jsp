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
		String name=request.getParameter("username");
	%>
	<h2>用户：<%=name %></h2>
	<form action="HiddenImplSession03.jsp" method="post">
		<input type="hidden" name="username" value="<%=name%>">&nbsp;&nbsp;
		您的兴趣爱好：<input type="text" name="interest">&nbsp;&nbsp;
		<input type="submit" value="submit">
	</form>
</body>
</html>