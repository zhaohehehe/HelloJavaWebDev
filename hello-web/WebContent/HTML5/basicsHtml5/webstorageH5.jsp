<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WEB 存储</title>
</head>
<body>
<div id="result"></div>
<button type="button" onclick="clickLocalCounter()" value="">click local!</button>
<button type="button" onclick="clickSessionCounter()" value="">click session!</button>
<button type="button" onclick="clickSessionGetSetItem()" value="">click session!</button>
<script>
function clickLocalCounter()
{
	if(typeof(Storage)!="undefined")
		{
		alert(localStorage.clickcount);
		if(localStorage.clickcount)
			{
			localStorage.clickcount=Number(localStorage.clickcount)+1;
			}
		else
			{
			localStorage.clickcount=1;
			}
		document.getElementById("result").innerHTML="您已经点击Button"+localStorage.clickcount+"次啦！";
		}
	else
		{
		document.getElementById("result").innerHTML="Sorry, your browser does not support web storage...";
		}
}
function clickSessionCounter()
{
	if(typeof(Storage)!="undefined")
		{
		alert(sessionStorage.clickcount);
		if(sessionStorage.clickcount)
			{
			sessionStorage.clickcount=Number(sessionStorage.clickcount)+1;
			}
		else
			{
			sessionStorage.clickcount=1;
			}
		document.getElementById("result").innerHTML="您已经点击Button"+sessionStorage.clickcount+"次啦！";
		}
	else
		{
		document.getElementById("result").innerHTML="Sorry, your browser does not support web storage...";
		}
}
</script>
<script type="text/javascript">
function clickSessionGetSetItem(){
	var sw=window.sessionStorage;
        //添加key-value 数据到 sessionStorage
        sw.setItem("demokey", "http://blog.itjeek.com");
        sw.setItem("demokey2", "http://blog.itjeek.com");
        //通过key来获取value
        var dt = sw.getItem("demokey");
        var dt2 = sw.getItem("demokey2");
        alert(dt);
        alert(dt2);
        sw.removeItem("demokey");//通过key删除本地数据。
        //清空所有的key-value数据。
        //sessionStorage.clear();//长度应为0
        alert(sw.length);//长度应为2
}
</script>

</body>
</html>