<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表格</title>
</head>
<body>
<strong>复杂表格时，关键：若表格是M*N的，那么加上跨列（行）数字之和必须等于N（M）</strong>
<strong>单元格中可以嵌套表格或者列表</strong>
<hr>
<table id="tbl-0"border="1px">
	<caption>表格的基本标签</caption>
	<colgroup>
		<col style="background-color:green">
		<col span="3" style="background-color:red">
	</colgroup>
	<thead>
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>201298765</td>
			<td>Alice</td>
			<td>20</td>
			<td>女</td>
		</tr>
		<tr>
			<td>201298766</td>
			<td>Bob</td>
			<td>20</td>
			<td>男</td>
		</tr>
	</tbody>
	<tfoot></tfoot>
</table>
<hr>
<table id="tbl-1"border="1px">
	<caption>学生名单</caption>
	<tr>
		<th>学号</th>
		<th colspan="2">电话</th>
	</tr>
	<tr>
		<td>201293113</td>
		<td>19987654325</td>
		<td>19987654375</td>
	</tr>
</table>
<hr>
<table id="tbl-2"border="1px">
	<caption>教师名单</caption>
	<tr>
		<th>教工号</th>
		<td>20139764</td>
	</tr>
	<tr>
		<th rowspan="2">电话</th>
		<td>18809090909</td>
	</tr>
	<tr>
		<td>18809090909</td>
	</tr>
</table>
<hr>
<table id="tbl-3"border="1px">
	<caption>表格嵌套</caption>
	<tr>
		<td>
			<ul>
				<li>Apple</li>
				<li>Orange</li>
				<li>Peach</li>
				<li>Blueberry</li>
			</ul>
		</td>
		<td>
			<table border="1" cellspacing="0">
				<tr><td>A</td><td>A</td><tr>
				<tr><td>A</td><td>A</td><tr>
			</table>
		</td>
	</tr>
	<tr>
		<th>X</th>
		<td>X</td>
	</tr>
</table>
</body>
</html>