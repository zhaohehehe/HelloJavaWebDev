<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单事件</title>
</head>
<body>
<ol>
	<li>
		<ol type="a">
			<li>onblur/onfocus:<input type="text" name="onblur" placeholder="输入你的名字！" onblur="onblurF()" onfocus="onfocusF()"></li>
			<li>focusin/focusout:
				<form id="form1"><input id="input1" type="text"></form>
				focus/blur:
				<form id="form2"><input id="input2" type="text"></form>
				<b>(1).onfocusout 事件类似于 onblur 事件。 主要的区别是 onblur 事件不支持冒泡。<br>
				(2).(所以当为form2表单添加onfocus时，form2的子元素input2是无法获取焦点的，因此设置 addEventListener() 的 useCapture 参数为 true (用于获取焦点和失去焦点):)<br>
				(3).因此，如果你需要查看元素或其子元素是否获取焦点，需要使用 onfocusout 事件。</b>
			</li>
		</ol>
	</li>
	<li>
		<input id="input3" type="text" oninput="oninputF()">
		<div id="div1"></div>
	</li>
	<li>当用户改变input输入框内容时执行onchange();onchange 属性可以使用于： input, select, 和 textarea。<br>
		<input id="input4" type="text" onchange="onchangeF()">
	</li>
	<li>
		<form id="form3" onreset="onresetF()">
			<input type="text" id="input5">
			<input type="reset">
		</form>
		<form id="form4" onreset="alert('表单已重置！')">
			<input type="text" id="input5">
			<input type="button" value="重置信息" onclick="onresetForm4()">
		</form>
	</li>
	<li>onsearch 事件在用户按下"ENTER（回车）" 按键或点击 type="search" 的 input元素的 "x(搜索)" 按钮时触发<br>
		<input type="search" id="input6" onsearch="onsearchF()">
		<p id="p1"></p>
	</li>
	<li>
		<form action="" onsubmit="alert('表单已经提交')">
			<input type="text" >
			<input type="submit">
		</form>
	</li>
	<li>
		<ol type="a">
			<li>
				当文本被选中时，执行<br>
				onselect 属性可用于: &lt;input type="file"&gt;, &lt;input type="password"&gt;, 
				&lt;input type="text"&gt;, &lt;keygen&gt;, 和 &lt;textarea&gt;<br>
				<textarea  id="textarea1" onselect="onselectF()" oncopy="alert('你拷贝了文本')">Hello world!</textarea>
			</li>
			<li>
				<img src="<%=path%>/images/panda.jpg"  width="32px" height="32px" alt="Panda" oncopy="alert('你拷贝了图片')">
			</li>
			<li>
				当向 &lt;p&gt;元素上粘贴文本内容时执行 JavaScript (注意 contenteditable 设置为 "true"):<br>
				<p contenteditable="true" oncut="alert('你剪切了文本')" onpaste="alert('你粘贴了文本')">Hello World</p>
			</li>
		</ol>
	</li>
</ol>
</body>
<script>
function onselectF(){
	if(window.getSelection){
		alert("您选中了:"+window.getSelection());
	}
	else{
		alert(document.selection.createRange().text);
	}
}
function onsearchF(){
	var x1=document.getElementById("p1");
	x1.innerHTML="您搜索的内容是:"+document.getElementById("input6").value;
}
function onresetForm4(){
	document.getElementById("form4").reset();
}
function onresetF(){
	var x1=document.getElementById("input5");
	alert("重置前文本信息为"+x1.value);
}
function onchangeF(){
	var x1=document.getElementById("input4");
	x1.value=x1.value.toUpperCase();
}
function oninputF(){
	var x=document.getElementById("input3").value;
	document.getElementById("div1").innerHTML="你输入的是:"+x;
}
/* ---------------------------------------------------------------------------- */
var form1=document.getElementById("form1");
form1.addEventListener("focusin",focusinF);
form1.addEventListener("focusout",focusoutF);
function focusinF(){
	var x=document.getElementById("input1");
	x.style.background="red";
}
function focusoutF(){
	var x=document.getElementById("input1");
	x.value=x.value.toUpperCase();
}
/* ---------------------------------------------------------------------------- */
var form2=document.getElementById("form2");
form2.addEventListener("focus",onfocusF2,true);
form2.addEventListener("blur",onblurF2,true);
function onfocusF2(){
	var x=document.getElementById("input2");
	x.style.background="red";
}
function onblurF2(){
	var x=document.getElementById("input2");
	x.value=x.value.toUpperCase();
}
/* ---------------------------------------------------------------------------- */
function onfocusF(){
	var x=document.getElementsByName("onblur")[0];
	x.style.background="red";
}
function onblurF(){
	var x=document.getElementsByName("onblur")[0];
	x.value=x.value.toUpperCase();
}
</script>
</html>