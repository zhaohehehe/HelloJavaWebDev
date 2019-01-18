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
	<jsp:useBean id="person" class="com.shengsiyuan.study.bean.Person"></jsp:useBean><br>
	<jsp:getProperty property="name" name="person"/><br>
	<jsp:getProperty property="age" name="person"/><br>
	<jsp:getProperty property="address" name="person"/><br>
	<jsp:setProperty property="name" name="person" value="jerry"/>
	<jsp:getProperty property="name" name="person"/><br>
	
	<jsp:useBean id="person02" class="com.shengsiyuan.study.bean.Person"></jsp:useBean><br>
	<h1>在地址栏输入URL：<br>
		http://localhost:8080/HelloWebWorld/javaBean01.jsp?age=*&name=*
	</h1>
	<jsp:setProperty property="name" name="person02" param="name"/>
	<jsp:setProperty property="age" name="person02" param="age"/>
	<jsp:setProperty property="address" name="person02" value="beijing"/>
	<jsp:getProperty property="name" name="person02"/><br>
	<jsp:getProperty property="age" name="person02"/><br>
	<jsp:getProperty property="address" name="person02"/><br>
	
	<%
		Person person03=new Person();
		person03.setName("amy");
		person03.setAge(9);
		person03.setAddress("shanghai");
	%>
	<p><%=person03.getName()%><br><%=person03.getAge() %><br><%=person03.getAddress() %><br></p>
	
</body>
</html>