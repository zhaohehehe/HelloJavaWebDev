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
	<jsp:useBean id="person03" class="com.shengsiyuan.study.bean.Person" scope="session"></jsp:useBean><br>
	<jsp:setProperty property="name" name="person03" value="person03"/>
	<jsp:getProperty property="name" name="person03"/><br>
	<jsp:getProperty property="age" name="person03"/><br>
	<jsp:getProperty property="address" name="person03"/><br>
	
	<jsp:setProperty property="age" name="person03" value="1000"/><br>
	<jsp:getProperty property="age" name="person03"/><br>
	
	<jsp:include page="javaBeanResultScope.jsp"></jsp:include>
</body>
</html>