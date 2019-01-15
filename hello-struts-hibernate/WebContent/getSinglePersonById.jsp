<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function del(){
		if(confirm("确定删除吗？")){
			return true;
		}
		return false;
	}
</script>


</head>
<body>
	username:<s:property value="#request.person.username"/><br>
	password:<s:property value="#request.person.password"/><br>
	age:<s:property value="#request.person.age"/><br>
	registerDate:<s:property value="#request.person.registerDate"/><br>
</body>
</html>