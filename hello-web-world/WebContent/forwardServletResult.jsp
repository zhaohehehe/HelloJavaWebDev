<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username=(String)request.getAttribute("UserName");
	String username2=request.getParameter("username");
%>
<h1>欢迎request.getAttribute用户：<%=username %>!</h1>

<h1>欢迎request.getParameter用户：<%=username2 %>!</h1>
<h1 style="color:red">由此可见，只有一次request请求，其中的数据会随着forward传递到每个页面<br>
	而且request.getAttribute()/request.setAttribute()更适合封装大量的实体对象记录，例如Arraylist.
</h1>
</body>
</html>