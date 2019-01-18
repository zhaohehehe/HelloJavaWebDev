<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>动态展示表格</title>
</head>
<body>
<%
	int rows=0;
	int cols=0;
	try{
		//int rows=0;//不能写在try内部，否则不能正确捕获异常
		rows=Integer.parseInt(request.getParameter("rows"));
		cols=Integer.parseInt(request.getParameter("cols"));
	}catch(Exception e){
		out.println("请输入数字");
		return;
	}
	int value=0;
%>
	<table border="1px" cellspacing="1px" align="center">
		<caption>动态生成的表格</caption>
		<thead>
			<%for(int i=0;i<cols;i++)
			{ %>
			<th>第<%=i+1%>列</th>
			<%} %>
		</thead>
		<tbody>
			<%for(int j=0;j<rows;j++)
			{ %>
			<tr>
				<%for(int k=0;k<cols;k++)
				{ %>
					<td><%=++value%></td>
				<%} %>
			</tr>
			<%} %>
		</tbody>
	
	</table>
</body>
</html>