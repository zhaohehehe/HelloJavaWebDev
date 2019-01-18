<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> onmousemove, onmouseenter 和 onmouseover 的不同</title>
<style>
div {
    width: 100px;
    height: 100px;
    border: 1px solid black;
    margin: 10px;
    float: left;
    padding: 30px;
    text-align: center;
    background-color: lightgray;
}

p {
    background-color: white;
}
</style>
</head>
<body>
<h3>该实例演示了 onmousemove, onmouseenter 和 onmouseover 的不同。</h3>
<p> onmousemove 事件在鼠标移动到 div 元素上时触发,在子元素上也会触发,多次触发！</p>
<p> mouseenter 事件中有在鼠标指针进入 div 元素时触发,在子元素上不会触发,一次触发！ </p>
<p> onmouseover 事件在鼠标指针进入 div 元素时触发,在子元素上也会触发(p 和 span),一次触发！</p>
<div onmousemove="myMoveFunction()">
<p>onmousemove: <br> <span id="demo">鼠标移动到我这!</span></p>
</div>
<div onmouseenter="myEnterFunction()">
<p>onmouseenter: <br> <span id="demo2">标移动到我这!</span></p>
</div>
<div onmouseover="myOverFunction()">
<p>onmouseover: <br> <span id="demo3">标移动到我这!</span></p>
</div>
<script>
x = 0;
y = 0;
z = 0;

function myMoveFunction() {
    document.getElementById("demo").innerHTML = z+=1;
}

function myEnterFunction() {
    document.getElementById("demo2").innerHTML = x+=1;
}

function myOverFunction() {
    document.getElementById("demo3").innerHTML = y+=1;
}
</script>
</body>
</html>