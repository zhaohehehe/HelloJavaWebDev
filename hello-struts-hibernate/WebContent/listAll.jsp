<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function del(){
		if(confirm("确定删除吗？")){
			return true;
		}
		return false;
	}
</script>


</head>
<body>
	<table width="80%" align="center" border="1">
		<thead>Hibernate Test1</thead>
		<tbody>
			<tr>
				<th>order</th>
				<th>username</th>
				<th>password</th>
				<th>age</th>
				<th>registerDate</th>
				<th>update</th>
				<th>delete</th>
			</tr>
			<!--OGNL:#request.* 形式是固定的  或者写成：#request['list'] id表示当前正在迭代的用户-->
			<s:iterator value="#request.list" var="person" status="st">
				<tr>
					<td>
						<s:property value="#st.index+1"/>
					</td>
					<td>
						<s:a href="getSinglePersonById.action?id=%{#person.id}"><s:property value="#person.username"/></s:a>
					</td>
					<td>
						<s:property value="#person.password"/>
					</td>
					<td>
						<s:property value="#person.age"/>
					</td>
					<td>
						<s:property value="#person.registerDate"/>
					</td>
					<td>
						<s:a href="updatePrePerson.action?id=%{#person.id}">update</s:a>
					</td>
					<td>
						<s:a href="deletePerson.action?id=%{#person.id}" onclick="return del();">delete</s:a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>