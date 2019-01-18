<%@page import="java.util.Map"%>
<%@page import="com.opensymphony.xwork2.ActionContext,com.zhaohe.study.action.ognl.OgnlAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	username:<s:property value="username"/><br>
	password:<s:property value="password"/><br>
	
	-----------------------------------------------<br>
	username:<s:property value="#parameters.username"/><br>
	password:<s:property value="#parameters.password"/><br>
	
	-------------------------------------------------<br>
	request:<s:property value="#request.hello"/><br>
	session:<s:property value="#session.hello"/><br>
	application:<s:property value="#application.hello"/><br>
	attr:<s:property value="#attr.hello"/><br>
	
	------------------结果同上---------------------------------<br>
	<%
	
	Map<String,Object> requestMap=(Map<String,Object>)ActionContext.getContext().get("request");
	Map<String,Object> sessionMap=(Map<String,Object>)ActionContext.getContext().getSession();
	Map<String,Object> applicationMap=(Map<String,Object>)ActionContext.getContext().getApplication();
	Map<String,Object> attrMap=(Map<String,Object>)ActionContext.getContext().get("attr");
	
	%>
	request:<%=requestMap.get("hello") %><br>
	session:<%=sessionMap.get("hello") %><br>
	application:<%=applicationMap.get("hello") %><br>
	attr:<%=attrMap.get("hello") %><br>
	----------------------------------------------------<br>
	
	person1:address<s:property value="list[0].address"/><br>
	person2:age<s:property value="list[1].age"/><br>
	person1:dog:name<s:property value="list[0].dog.name"/><br>
	size:<s:property value="list.size"/><br>
	isEmpty:<s:property value="list.isEmpty()"/><br>
	
	------------------------------------------------------<br>
	
	ActionContext.getContext().getValueStack().peek():<%=ActionContext.getContext().getValueStack().peek() %><br>
	person1:address:<%=((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(0).getAddress()%><br>
	person2:dog:color:<%=((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(1).getDog().getColor()%><br>
	
	person1:friend:<s:property value="list[1].friends[2]"/><br>
	person2:friend:<%=((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(1).getFriends()[2]%><br>
	
	------------------------------------------------------<br>
	person2:map2:<s:property value="list[1].map['key21']"/><br>
	
	------------------------------------------------------<br>
	filtering:<s:property value="list.{?#this.name.length()>5}[0].name"/><br>
	
	------------------------------------------------------<br>
	<s:iterator value="list.{#this.name.length()>2}" var="person">
		<s:property value="#person.name"/><br>
		<s:property value="#person.cat.color"/><br>
		<s:property value="#person.friends[0]"/><br>
	</s:iterator>
	------------------------------------------------------<br>
	projection:<br>
	<s:iterator value="list.{age}">
		<s:property/><br>
	</s:iterator>
	
	
	
	
	
	
	
	
	
</body>
</html>