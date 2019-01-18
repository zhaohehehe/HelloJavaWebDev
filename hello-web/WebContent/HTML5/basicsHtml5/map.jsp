<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片映射区域</title>
</head>
<body>
<img src="<%=path%>/images/cat_and_mouse.png" width="200" height="200" alt="Planets" usemap="#animalmap">

<map name="animalmap">
	<area shape="poly" coords="0,0,200,0,0,200" alt="cat" href="#">
	<area shape="rect" coords="100,80,200,200" alt="mouse" href="#">
</map>
</body>
</html>