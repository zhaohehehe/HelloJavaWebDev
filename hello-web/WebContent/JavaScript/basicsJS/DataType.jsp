<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js5种简单数据类型</title>
</head>
<body>
<h1>
js基本数据类型
</h1>
<ol>
	<li>Undefined:未定义或未赋值</li>
	<li>Null:用于将来存储对象，返回类型为Object</li>
	<li>Boolean</li>
	<li>String</li>
	<li>Number</li>
</ol>
<h1>
js引用数据类型:<strong>Object</strong>
</h1>
<hr>
<h1>定义一个对象</h1>
<div id="fullname1"></div>
<div id="fullname2"></div>
<div id="fullname3"></div>
<div id="fullname4"></div>
<div id="fullname5"></div>
<script>
var person={
		firstname:"san",lastname:"zhang",sex:"male",
		fullname : function(){
			return this.lastname+" "+this.firstname;
		}
};
//alert(document.getElementById("fullname1").innerHTML=person.fullname);
document.write("以上两种方式均可！");
document.getElementById("fullname1").innerHTML=person.fullname();
document.getElementById("fullname2").innerHTML=person["fullname"]();
document.getElementById("fullname3").innerHTML=person.fullname;
document.getElementById("fullname4").innerHTML=person["fullname"];
document.getElementById("fullname5").innerHTML=Date();
</script>
<script>
function myFunction(elmnt,clr){
	elmnt.style.color=clr;
}
</script>
</head>
<body>

<p onmousedown="myFunction(this,'red')" onmouseup="myFunction(this,'green')">
单击文本改变颜色。触发一个带参数函数,当鼠标按钮被按下,,当释放鼠标按钮，再一次触发其他参数函数
	</p>
</body>
</html>