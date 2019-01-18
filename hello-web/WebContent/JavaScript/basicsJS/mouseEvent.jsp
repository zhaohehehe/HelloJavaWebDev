<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>鼠标事件</title>
</head>
<body>
<ol>
	<li>
		<b id="onclick" onclick="onclickF()">onclick</b>
	</li>
	<li>
		<p id="oncontextmenu" oncontextmenu="oncontextmenuF()" contextmenu="mymenu">所有主流浏览器都不支持</p>
		<menu id="mymenu">menu</menu>
	</li>
	<li>
		<p id="onmousedown/up" onmousedown="onmousedownupF(this,'red')" onmouseup="onmousedownupF(this,'green')" >onmousedown/up</p>
	</li>
	<li>
		<img id="onmouseenter/leave" onmouseenter="bigImage(this)" onmouseleave="smallImage(this)" src="<%=path%>/images/panda.jpg" alt="Panda" width="32px" height="32px"></img>
	</li>
	<li>
		<img id="onmousemove/out" onmousemove="bigImage(this)" onmouseout="smallImage(this)" src="<%=path%>/images/panda.jpg" alt="Panda" width="32px" height="32px"></img>
	</li>
</ol>

<script>
function onclickF(){
	var b=document.getElementById("onclick");
	b.innerHTML=Date();
	b.style.color="red";
}
function oncontextmenuF(){}
function onmousedownupF(elmnt,color){
	elmnt.style.color=color;
}
function bigImage(elmnt){
	elmnt.style.width="64px";
	elmnt.style.height="64px";
}
function smallImage(elmnt){
	elmnt.style.width="32px";
	elmnt.style.height="32px";
}

</script>
</html>