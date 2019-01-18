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
		out.println("Java Servlet API Version "
					+application.getMajorVersion()+"."
					+application.getMinorVersion()+"<br>");
		out.println("URL of 'application02.jsp' is:"
					+application.getResource("/application02.jsp")+"<br>");
		out.println("getServerInfo()="+application.getServerInfo()+"<br>");
		out.println("getRealPath()="+application.getRealPath("")+"<br>");
		//返回资源在服务器上的绝对路径
		out.println("getRealPath()="+application.getRealPath("/application02.jsp")+"<br>");
		out.println("getMimeType()="+application.getMimeType("/application02.jsp"));
		
		%>
</body>
</html>