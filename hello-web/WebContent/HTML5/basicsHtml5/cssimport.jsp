<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>css样式表导入方式</title>

<style type="text/css">
@import url("<%=path%>/css/cssimport.css");
</style>
</head>

<body>
<strong>css样式表导入方式</strong>
<ul>
	<li>	
		<strong>第一种：</strong>
		<textarea rows="5" cols="40" ><link rel="stylesheet" type="text/css" href="<%=path %>/css/cssimport.css"/></textarea>
	</li>
	<li>	
		<strong>第二种：</strong>
		<textarea rows="5" cols="40"><style type="text/css"> @import url(<%=path%>/css/cssimport.css);</style></textarea>
	</li>
	<li>	
		<strong>第三种：</strong>
		<textarea rows="5" cols="40"><div style="margin:200px 2px;">123</div></textarea>
	</li>
</ul>
</body>

</html>