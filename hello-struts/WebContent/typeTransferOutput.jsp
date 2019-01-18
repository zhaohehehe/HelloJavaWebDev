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
	<s:property value="user"></s:property>
	username:<%=request.getAttribute("user")%><br>

</body>
</html>