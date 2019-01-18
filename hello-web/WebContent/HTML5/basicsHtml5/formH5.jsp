<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML5 表单 新元素</title>
</head>
<body>
<form action="http://www.runoob.com/try/demo_source/demo-form.php" method="get">
	<input list="browsers" name="browser">
		<datalist id="browsers">
  			<option value="Internet Explorer">
 			<option value="Firefox">
  			<option value="Chrome">
  			<option value="Opera">
  			<option value="Safari">
		</datalist>
	<input type="submit">
</form>
<p><strong>注意:</strong> Internet Explorer 9（更早IE版本），Safari不支持 datalist 标签。</p>
<hr>
<form action="http://www.runoob.com/try/demo_source/demo_keygen.php" method="get">
  用户名: <input type="text" name="usr_name">
  加密:  <keygen name="security">
  	  <input type="submit">
</form>
<p><strong>注意:</strong> Internet Explorer 不支持 keygen 标签。</p>
<hr>
<form oninput="x.value=parseInt(a.value)+parseInt(b.value)">
	0<input type="range" id="a" value="50">100
	+<input type="number" id="b" value="50">
	=<output name="x" for="a b"></output>
	<!-- for="element_id", 描述计算中使用的元素与计算结果之间的关系;; form="form_id", 定义输入字段所属的一个或多个表单。   -->
</form>
<p><strong>注意:</strong>  Internet Explorer 不支持 output 标签。</p>
</body>
</html>