<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="FileUpload" method="post" enctype="multipart/form-data">
		username:<input type="text" name="username"><br>
		file1:<input type="file" name="file1"><br>
		file2:<input type="file" name="file2"><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>