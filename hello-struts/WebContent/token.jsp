<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>token.jsp</title>
</head>
<body>
	<s:form action="token" theme="simple">
		username:<s:textfield name="username"></s:textfield><br>
		password:<s:password name="password"></s:password><br>
		使用Session令牌机制<br>
		<s:token></s:token>
		<s:submit value="submit"></s:submit>
		
	</s:form>
</body>
</html>