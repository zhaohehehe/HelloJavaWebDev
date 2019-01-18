<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文本格式化</title>
</head>
<body>
<p><i>化学公式：</i>H<sub>2</sub>O</p>
<hr>
<pre>任意预定义格式，控制空行和空格：
H 
2
O
</pre>
<hr>
<p>1<sup><i>2</i></sup>+2<sup><i>2</i></sup>=5</p>
<hr>
<ruby>
  	漢 <rp>(</rp><rt>Kan</rt><rp>)</rp>
  	字 <rp>(</rp><rt>ji</rt><rp>)</rp>
</ruby>
<ruby>
  	大 <rt>da</rt>
  	家<rt>jia</rt>
</ruby>
<hr>
<p>学习 AJAX ,您必须熟悉 <wbr>Http<wbr>Request 对象。(换行)</p>
<p><b>注意：</b> IE 浏览器不支持 wbr 标签。</p>
<hr>
<h1>About <abbr title="World Wide Fund ">WWF</abbr></h1>
<p>WWF's goal is to: 
 <q>Build a future where people live in harmony with nature.</q>
 We hope they succeed.</p> 
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature. The world's leading conservation organization, WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally. WWF's unique way of working combines global reach with a foundation in science, involves action at every level from local to global, and ensures the delivery of innovative solutions that meet the needs of both people and nature.
</blockquote>
<address>Written by
	<a href="https://www.baidu.com/">Jon Doe</a>.<br> 
	<a href="https://www.baidu.com/"><img src="<%=path%>/images/panda.jpg" title="大熊猫图片链接" width="64px" height="64px"></a>
</address>
<p></p>
<hr>
<p><bdo dir="rtl">123456789</bdo></p>
<hr>
<img src="<%=path%>/images/the_scream.jpg" width="220" height="277" alt="The Scream">
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>
<hr>
</body>
</html>