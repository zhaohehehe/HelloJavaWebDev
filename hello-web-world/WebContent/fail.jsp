<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Failed!</h1>
	<%
		ArrayList<String> errorList=(ArrayList<String>)request.getAttribute("errorList");
		for(String str:errorList){
			out.println("<h3>"+str+"</h3>");
		}
	%>
</body>
</html>