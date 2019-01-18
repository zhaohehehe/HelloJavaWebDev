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
	<jsp:useBean id="person01" class="com.shengsiyuan.study.bean.Person" scope="page"></jsp:useBean><br>
	<jsp:setProperty property="name" name="person01" value="person01"/>
	<jsp:getProperty property="name" name="person01"/><br>
	<jsp:getProperty property="age" name="person01"/><br>
	<jsp:getProperty property="address" name="person01"/><br>
	
	<h1>在scope:page范围内：<br>
		以下两种情况都会导致超出page范围（无论是include还是forward），结束javaBean的生命周期。</h1>
	<h1>
	&lt;jsp:include page="javaBeanResultScope.jsp"> &lt;/jsp:include><br>
	&lt;jsp:forward page="javaBeanResultScope.jsp"> &lt;/jsp:forward><br>
	</h1>
	
	
</body>
</html>