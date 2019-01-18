<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网页计数器</title>
</head>
<body>
	<%
		if(application.getAttribute("counter")==null){
			application.setAttribute("counter","1");
		}
		else{
			String count=(String)application.getAttribute("counter");
			int newCount=0;
			newCount=Integer.parseInt(count)+1;
			application.setAttribute("counter", Integer.toString(newCount));
		}
	%>
	<%
		if(session.getAttribute("counter")==null){
			session.setAttribute("counter","1");
		}
		else{
			String count=(String)session.getAttribute("counter");
			int newCount=0;
			newCount=Integer.parseInt(count)+1;
			session.setAttribute("counter", Integer.toString(newCount));
		}
	%>
	<%
		if(request.getAttribute("counter")==null){
			request.setAttribute("counter","1");
		}
		else{
			String count=(String)request.getAttribute("counter");
			int newCount=0;
			newCount=Integer.parseInt(count)+1;
			request.setAttribute("counter", Integer.toString(newCount));
		}
	%>
	<h1>您是本站(application)的第<%= application.getAttribute("counter") %>位访问者！</h1>
	<h1>您是本站(session)的第<%= session.getAttribute("counter") %>位访问者！</h1>
	<h1>您是本站(request)的第<%= request.getAttribute("counter") %>位访问者！</h1>
</body>
</html>