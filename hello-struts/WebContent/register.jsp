<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 style="color:blue">用户注册</h2>
	<s:actionerror cssStyle="color:red"/>
	-------------------------------------
	<s:fielderror cssStyle="color:blue"/>
	<!-- <form action="registerAction">
		username:<input type="text" name="username" size="20"><br>
		password:<input type="password" name="password" size="20"><br>
		repassword:<input type="password" name="repassword" size="20"><br>
		age:<input type="text" name="age" size="20"><br>
		birthday:<input type="date" name="birthday" size="20"><br>
		graduation:<input type="date" name="graduation" size="20"><br>
		<input type="submit" value="submit" size="20">
	</form>  -->
	<s:form action="registerAction" theme="simple">
		username:<s:textfield name="username" label="username"></s:textfield><br>
		password:<s:password name="password" label="password"></s:password><br>
		repassword:<s:password name="repassword" label="repassword"></s:password><br>
		age:<s:textfield name="age" label="age"></s:textfield><br>
		birthday:<s:textfield name="birthday" label="birthday"></s:textfield><br>
		graduation:<s:textfield name="graduation" label="graduation"></s:textfield><br>
		<s:submit value="submit"></s:submit>
	</s:form>
</body>
</html>