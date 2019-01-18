<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form表单</title>
</head>
<body>
<form>
<input type="button" name="button" value="button">button<br>
<input type="checkbox" name="vehicle" value="Bike"/>I have a bike<br>
<input type="checkbox" name="vehicle" value="Car"/>I have a car <br>
<input type="file"/>file<br>
<input type="hidden"/>hidden<br>
<input type="image" src="<%=path%>/images/cat_and_mouse.png">image<br>
<input type="password">password<br>
<input type="radio" name="sex" value="male">Male<br>
<input type="radio" name="sex" value="female">Female<br>
<input type="reset">reset<br>
<input type="submit">submit<br>
<input type="text">text<br>
<select>
  <optgroup label="Swedish Cars">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
  </optgroup>
  <optgroup label="German Cars">
    <option value="mercedes">Mercedes</option>
    <option value="audi">Audi</option>
  </optgroup>
</select>
<hr>
</form>
<form action="" method="get">
	<input list="browsers" name="browser">
	  <datalist id="browsers">
 		<option value="Internet Explorer">
  		<option value="Firefox">
  		<option value="Chrome">
  		<option value="Opera">
  		<option value="Safari">
	  </datalist>
	<input type="submit">
</form>
<hr>
<form action="">
<fieldset>
<legend>Personal information:</legend>
Name: <input type="text" size="30"><br>
E-mail: <input type="text" size="30"><br>
Date of birth: <input type="text" size="10">
</fieldset>
</form>
</body>
</html>