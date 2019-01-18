<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	InputStream is=request.getInputStream();
	BufferedReader br=new BufferedReader(new InputStreamReader(is));
	String buffer=null;
	while(null!=(buffer=br.readLine())){
		out.print(buffer + "<br>");
	}
	is.close();
	br.close();
	
	
	%>
</body>
</html>