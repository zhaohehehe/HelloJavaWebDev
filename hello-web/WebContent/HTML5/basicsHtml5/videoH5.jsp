<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Video html5</title>
</head>
<body>
<div style="text-align:center"> 
  <button onclick="playPause()">播放/暂停</button> 
  <button onclick="makeBig()">放大</button>
  <button onclick="makeSmall()">缩小</button>
  <button onclick="makeNormal()">普通</button>
  <br> 
  <video id="video1" width="420" controls>
  <!--controls会自动生成控制按钮  -->
    <source src="http://www.runoob.com/try/demo_source/mov_bbb.mp4" type="video/mp4">
    <source src="http://www.runoob.com/try/demo_source/mov_bbb.ogg" type="video/ogg">
    <track src="http://www.runoob.com/try/demo_source/subtitles_en.vtt" kind="subtitles" srclang="en" label="English">
 	<track src="http://www.runoob.com/try/demo_source/subtitles_no.vtt" kind="subtitles" srclang="no" label="Norwegian">
    <video width="320" height="240" controls>
  <source src="movie.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
  您的浏览器不支持 HTML5 video 标签。
</video>
    您的浏览器不支持 HTML5 video 标签。
  </video>
</div> 

<script> 
var myVideo=document.getElementById("video1"); 

function playPause()
{ 
if (myVideo.paused) 
  myVideo.play(); 
else 
  myVideo.pause(); 
} 

function makeBig()
{ 
myVideo.width=560; 
} 

function makeSmall()
{ 
myVideo.width=320; 
} 

function makeNormal()
{ 
myVideo.width=420; 
} 
</script> 

</body>
</html>