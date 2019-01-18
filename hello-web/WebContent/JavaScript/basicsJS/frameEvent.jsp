<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>框架/对象（Frame/Object）事件</title>
<style>
a:hover{
color:red;
}
</style>
</head>
<body onbeforeunload="return onbeforeunloadF()" onhashchange="alert('锚部分已修改')" >
<h1>第一个body</h1>
<ol>
	<li>图片加载中止时，执行 
		<img id="onmouseenter/leave" onload="onloadImage()" onabort="onabortF()" src="<%=path%>/images/panda.jpg" alt="Panda" width="32px" height="32px"></img>
	</li>
	<li>在即将离开当前页面(刷新或关闭)时执行:<b>return onbeforeunload();<ins>(return必不可少)</ins></b>
		<a href="http://www.baidu.com">链接到百度</a>
	</li>
	<li>图片加载中止时，执行 
		<img id="onmouseenter/leave" onerror="onabortF()" src="/images/panda.jpg" alt="Panda" width="32px" height="32px"></img>
	</li>
	<li>当锚部分发生变化时执行:
		<button type="button" onclick="changePart()">改变锚点</button>
		<div id="part"></div>
	</li>
	<li>
		当页面载入完毕后执行，onload 通常用于 &lt;body&gt; 元素，在页面完全载入后(包括图片、css文件等等。)执行脚本代码<br>
		onunload 事件在用户退出页面时发生。onunload 发生于当用户离开页面时发生的事件(通过点击一个连接，提交表单，关闭浏览器窗口等等。)<br>
		
		<b>以下标签支持onload:</b>
		body, frame, frameset, iframe, img, input type="image", link, script, style<br>
		<b>以下标签支持onunload:</b>
		body,frameset
	</li>
</ol>
</body>
<hr>
<!-- <body onload="onloadF()" onunload="onunloadF()">
<h1>第二个body</h1>
<ol>
	<li></li>
</ol>
</body> -->
<hr>
<!-- <body onpageshow="onpageshowF(event)" onpagehide="onunloadF()" onresize="onresizeF()">
<h1>第三个body</h1>
<ol>
	<li>
		<ol type="a">
			<li>onload 事件在页面第一次加载时触发， onpageshow 事件在每次加载页面时触发，即 onload 事件在页面从浏览器缓存中读取时不触发。</li>
			<li>为了查看页面是直接从服务器上载入还是从缓存中读取，你可以使用 PageTransitionEvent 对象的 persisted 属性来判断。 如果页面从浏览器的<b>缓存</b>中读取该属性返回 ture，否则返回 false</li>
			<li>onpagehide 事件有时可以替代 onunload 事件，但 onunload 事件触发后无法缓存页面。</li>	
		</ol>
	</li>
	<li>
		当浏览器被重置大小时执行onresize();<br>
		<b>以下标签支持onresize事件</b>
		&lt;a&gt;, &lt;address&gt;, &lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, 
		&lt;body&gt;, &lt;button&gt;, &lt;cite&gt;, &lt;code&gt;, &lt;dd&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;dl&gt;, &lt;dt&gt;, &lt;em&gt;, &lt;fieldset&gt;, 
		&lt;form&gt;, &lt;frame&gt;, &lt;h1&gt; to &lt;h6&gt;, &lt;hr&gt;, &lt;i&gt;, &lt;img&gt;, 
		&lt;input&gt;, &lt;kbd&gt;, &lt;label&gt;, &lt;legend&gt;, &lt;li&gt;, &lt;object&gt;, &lt;ol&gt;, &lt;p&gt;, &lt;pre&gt;, 
		&lt;samp&gt;, &lt;select&gt;, &lt;small&gt;, &lt;span&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;table&gt;, &lt;textarea&gt;, &lt;tt&gt;, &lt;ul&gt;, &lt;var&gt;
		<div id="onresize"></div>
	</li>
	<li>
		<div onscroll="onscrollF()"style="width:200px;height:200px;overflow:scroll">In my younger and more vulnerable years my father gave me some advice that I've been turning over in my mind ever since. 
		 'Whenever you feel like criticizing anyone,' he told me, just remember that all the people in this world haven't had the advantages that you've had.'</div>
		<div >滚动<span id="onscroll">0</span>次</div>
	</li>
</ol>
</body> -->


<script>
x=0;
function onscrollF(){
	document.getElementById("onscroll").innerHTML=x++;
}
function onresizeF(){
	var x=window.outerWidth;
	var y=window.outerHeight;
	var txt="窗口大小：宽度="+x+",高度="+y;
	document.getElementById("onresize").innerHTML=txt;
}
//使用 location.hash 属性来修改锚部分
function changePart() {
    location.hash = "part5";
    var x = "锚部分现在为: " + location.hash;
    document.getElementById("demo").innerHTML = x;
}
//使用 location.hash 属性来修改锚部分
function changePart(){
	location.hash="part1";
	var x="锚部分现在为: " +location.hash;
	document.getElementById("part").innerHTML=x;
}
function onabortF(){
	alert("图片加载不成功！");
}
function onbeforeunloadF(){
	return "我在这写点东西！";
}
function onloadImage(){
	document.write("图片加载完成!");
}
function onloadF(){
	alert("页面加载完成！");
}
function onunloadF(){
	alert("谢谢访问！");
}
function onpageshowF(E){
	alert("页面是否从页面浏览器缓存中加载？"+E.persisted);
}
</script>
</html>