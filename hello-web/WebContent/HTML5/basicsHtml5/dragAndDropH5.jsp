<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>拖放</title>
<style type="text/css">
#div1, #div2
{float:left; width:100px; height:35px; margin:10px;padding:10px;border:1px solid #aaaaaa;}
</style>
</head>
<body>
<script>
function allowDrop(ev)
{
	ev.preventDefault();
}

function drag(ev)
{
	ev.dataTransfer.setData("Text","drag1");
	/*或者 ev.dataTransfer.setData("Text",ev.target.id);  */
	/* 在这个例子中，数据类型是 "Text"，值是可拖动元素的 id ("drag1")。 */
	
}

function drop(ev)
{
	ev.preventDefault();
	var data_id=ev.dataTransfer.getData("Text");
	ev.target.appendChild(document.getElementById(data_id));
}
</script>
</head>
<body>
<table border="1px">
	<tr>
		<th colspan="2">大熊猫图片
			<img src="<%=path %>/images/panda.jpg" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
		</th>
	</tr>
	<tr>
		<td>A<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div></td>
		<td>B<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div></td>
	</tr>
</table>
<hr>
<%-- <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
	<img src="<%=path %>/images/cat.jpg" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
</div>
<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
 --%>
</body>
</html>