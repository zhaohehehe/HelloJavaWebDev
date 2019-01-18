<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>键盘事件</title>
</head>
<body>
<ol>
	<li>
		<input type="text" onkeydown="onkeydownF()">按下<br>
	</li>
	<li>
		<input type="text" onkeypress="onkeydownF()">按下并松开<br>
	</li>
	<li>
		<input id="uppercase" type="text" onkeyup="onkeyupF()">松开<br>
	</li>
</ol>

</body>
<script>
function onkeydownF(){
	alert("你在输入框中按下一个键！");
}
function onkeyupF(){
	var t=document.getElementById("uppercase");
	t.value=t.value.toUpperCase();
	
}
</script>
</html>