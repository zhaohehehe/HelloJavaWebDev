<%@page import="com.zhaohe.study.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String path=request.getContextPath();
	String basePath=request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>output</title>
</head>
<body>
	<% List<User> user=(List)request.getAttribute("user");
		for(User userTemp:user){
			String username=userTemp.getUsername();
			String password=userTemp.getPassword();
		%>
			username:<%=username %><br>
			password:<%=password %><br>
	<% 	}
	%>
	<s:property value="user"></s:property><br>
</body>
</html>