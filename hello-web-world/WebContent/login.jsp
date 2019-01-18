<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
</head>
<body>
	<h1>今天的日期是：<%@include file="head.jsp" %></h1>
	<hr>
	<b>服务器需要接受值，添加name属性</b>
	<!--  action="/HelloWebWorld/LoginServlet" :绝对路径-->
	<form onsubmit="clientValidate=alert('客户端验证省略!')" action="LoginServlet" method="post">
		用户名：<input type="text" name="username">
		密码：<input type="password" name="password">&nbsp;&nbsp;
		重复密码：<input type="password" name="repassword">&nbsp;&nbsp;
		<select id="s1" name="address">
			<optgroup label="province">
				<option value="beijing" selected>北京</option>
				<option value="jilin">吉林</option>
			</optgroup>
		</select>&nbsp;&nbsp;
		<select id="s2" name="address">
			<optgroup label="city">
				<option value="yushu">榆树</option>
				<option value="changchun">长春</option>
				<option value="beijing">北京</option>
			</optgroup>
		</select><br>
		<input type="submit" value="submit">&nbsp;&nbsp;
		<input type="reset" value="reset"><br>
		
	</form>
	<hr>
	<h1><%@include file="bottom.jsp" %></h1>
</body>
</html>