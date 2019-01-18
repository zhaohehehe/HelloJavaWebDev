<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>为H5添加新元素</title>
<title>渲染 HTML5</title>
  <!--[if lt IE 9]>
   <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
   <![endif]-->
<style>
	newElement{
	background-color:red;
	padding:20px;
	font-size:30px;
	}
</style>
<script>
	document.createElement("newElement");
</script>
</head>
<body>
<h1>创建新元素</h1>
<p>
<newElement>大家好，我是新元素！</newElement>
</p>
</body>
</html>