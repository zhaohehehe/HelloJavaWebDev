<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML5 语义元素</title>
<style>
 header, section, footer, aside, nav, article, figure
 { 
 display: block; 
 } 
</style>
<p>解决办法:你可以使用HTML5 Shiv Javascript脚本来解决IE的兼容问题。HTML5 Shiv下载地址：http://code.google.com/p/html5shiv/
下载后，将以下代码放入的网页中：</p>
<!--[if lt IE 9]>
<script src="http://code.google.com/p/html5shiv/html5shiv.js"></script>
 <![endif]--> 
</head>
<body>
<table border="1px" cellspacing="0" width="300px" height="400px" bordercolor="red">
	<caption>7行2列</caption>
	<tr>
		<td colspan="2" width="100px"><b>&lt;header&gt;（可多个）</b></td>	
	</tr>
	<tr>
		<td colspan="2"><b>&lt;nav&gt;（元素用于定义页面的导航链接部分区域，但是，不是所有的链接都需要包含在 <nav> 元素中! ）</b></td>
	</tr>
	<tr>
		<td ><b>&lt;section&gt;（章节、页眉、页脚或文档中的其他部分）</b></td>
		<td rowspan="2" width="100px"><b>&lt;aside&gt;标签定义页面主区域内容之外的内容（比如侧边栏），但是aside 标签的内容应与主区域的内容相关.
		</b></td>
	</tr>
	<tr>
		<td ><b>&lt;article&gt;（论坛帖子、博客帖子、新闻故事、评论等）</b></td>
	</tr>
	<tr>
		<td colspan="2"><b>&lt;footer&gt;（可多个；一个页脚通常包含文档的作者，著作权信息，链接的使用条款，联系信息等）</b></td>	
	</tr>
</table>
<p><b>&lt;figure&gt;标签规定独立的流内容（图像、图表、照片、代码等等）。
	&lt;figure&gt;元素的内容应该与主内容相关，但如果被删除，则不应对文档流产生影响。
	&lt;figcaption&gt;标签定义&lt;figure&gt; 元素的标题.
	&lt;figcaption&gt;元素应该被置于 >&lt;figure&gt;元素的第一个或最后一个子元素的位置。
</b></p>
<figure>
  <img src="<%=path %>/images/the_scream.jpg" alt="The Scream" width="304" height="228">
  <figcaption align="center">Fig.1 - A view of the pulpit rock in Norway.</figcaption>
</figure>


</body>
</html>