<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input HTML5</title>
</head>
<body>
<form action="http://www.runoob.com/try/demo_source/demo-form.php">
  选择你喜欢的颜色(谷歌浏览器): 
  <input type="color" name="favcolor"><br>
  <input type="submit">
  <hr>
   生日(谷歌浏览器): 
  <input type="date" name="bday">
  <input type="submit">
  <hr>
   生日 (日期和时间)(谷歌): 
  <input type="datetime" name="bdaytime">
  <input type="submit">
  <hr>
  生日 (日期和时间)(谷歌): 
  <input type="datetime-local" name="bdaytime">
  <input type="submit">
  <hr>
  选择时间(谷歌): 
  <input type="time" name="usr_time">
  <input type="submit">
  <hr>
   选择周(谷歌): 
  <input type="week" name="year_week">
  <input type="submit">
  <hr>
   E-mail:
  <input type="email" name="usremail">
  <input type="submit">
  <p><b>注意:</b> Internet Explorer 9  及更早IE版本不支持type="email" 。</p>
  <hr>
  生日 ( 月和年 )(谷歌):
  <input type="month" name="bdaymonth">
  <input type="submit">
  <hr>
   数量 ( 1 到 5 之间)(谷歌): 
  <input type="number" name="quantity" min="1" max="5">
  <input type="submit">
  <p><b>注意:</b>Internet Explorer 9 及更早IE版本不支持 type="number" 。</p>
  <hr>
  Points(谷歌): 
  <input type="range" name="points" min="1" max="10">
  <input type="submit">
  <p><b>注意:</b> Internet Explorer 9 及更早IE版本不支持 type="range"。</p>
  <hr>
   Search Google: 
   <input type="search" name="googlesearch"><br>
   <input type="submit">
   <hr>
    电话号码: 
  <input type="tel" name="usrtel"><br>
  <input type="submit">
  <hr>
  添加你的主页: 
  <input type="url" name="homepage"><br>
  <input type="submit">
  <p><b>注意:</b> Internet Explorer 9及更早IE版本不支持 type="url" 。</p>
  <hr>
  
</form>
</body>
</html>