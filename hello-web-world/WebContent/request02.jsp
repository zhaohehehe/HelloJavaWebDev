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
	request.setAttribute("LogName", name);
	out.println("<h1>Username:"+name+"</h1>");
%>

<jsp:forward page="request03.jsp"></jsp:forward>

<!-- <a href="request03.jsp">request03.jsp</a> -->
</body>
</html>