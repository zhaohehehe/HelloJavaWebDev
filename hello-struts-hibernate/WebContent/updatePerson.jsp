<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<form action="updatePerson.action">
		username:<s:textfield name="username" value="%{#request.person.username}" readonly="true"></s:textfield><br>
		password:<s:textfield name="password" value="%{#request.person.password}" readonly="false"></s:textfield><br>
		age:<s:textfield name="age" value="%{#request.person.age}" readonly="false"></s:textfield><br>
		registerDate:<s:textfield name="registerDate" value="%{#request.person.registerDate}" readonly="true"></s:textfield><br>
		<s:hidden name="id" value="%{#request.person.id}"></s:hidden><br>
		<input type="submit" value="submit">
	</form>
	
</body>
</html>