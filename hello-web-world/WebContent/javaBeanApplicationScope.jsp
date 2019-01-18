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
	<jsp:useBean id="person04" class="com.shengsiyuan.study.bean.Person" scope="application"></jsp:useBean><br>
	<jsp:setProperty property="name" name="person04" value="person04"/>
	<jsp:getProperty property="name" name="person04"/><br>
	<jsp:getProperty property="age" name="person04"/><br>
	<jsp:getProperty property="address" name="person04"/><br>
	
	<jsp:setProperty property="age" name="person04" value="1000"/><br>
	<jsp:getProperty property="age" name="person04"/><br>
	
	<jsp:include page="javaBeanResultScope.jsp"></jsp:include>
</body>
</html>