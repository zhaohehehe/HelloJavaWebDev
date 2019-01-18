<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome!</title>
</head>
<body>
<h3>在tomcat安装路径下的conf/server.xml文件中  &lt;Host>标签中添加如下代码：
<pre>
	&lt;Context docBase="http://localhost:8080/HelloWeb" path="/HelloWeb" reloadable="true"/>
</pre>
<h3>则如下两个链接都可以（其本质是一样的）</h3>
</h3>
<a href="/HelloWeb/Demo/jsonDemo/jsonDemo_1.html">Success!(href="/HelloWeb/Demo/jsonDemo/jsonDemo_1.html")</a><br>
<a href="HelloWeb/Demo/jsonDemo/jsonDemo_1.html">Fail!(href="HelloWeb/Demo/jsonDemo/jsonDemo_1.html")</a><br>
<a href="<%=path %>/Demo/jsonDemo/jsonDemo_1.html">Success!(href="<%=path %>/Demo/jsonDemo/jsonDemo_1.html")</a>



</body>
</html>