<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SVG 指可伸缩矢量图形 (Scalable Vector Graphics)</title>
</head>
<body>
<h2>什么是SVG？</h2>
<ul>
    <li>SVG 指可伸缩矢量图形 (Scalable Vector Graphics)</li>
    <li>SVG 用于定义用于网络的基于矢量的图形</li>
    <li>SVG 使用 XML 格式定义图形</li>
    <li>SVG 图像在放大或改变尺寸的情况下其图形质量不会有损失</li>
    <li>SVG 是万维网联盟的标准</li>
</ul>
<h2>Canvas 与 SVG 的比较</h2>
<table border="1px">
<tr>
<th align="left" width="50%">Canvas</th>
<th align="left" width="50%">SVG</th>
</tr>
<tr>
<td>
<ul >
	<li>依赖分辨率</li>
	<li>不支持事件处理器</li>
	<li>弱的文本渲染能力</li>
	<li>能够以 .png 或 .jpg 格式保存结果图像</li>
	<li>最适合图像密集型的游戏，其中的许多对象会被频繁重绘</li>
	</ul>
<td>
<ul>
	<li>不依赖分辨率</li>
	<li>支持事件处理器</li>
	<li>最适合带有大型渲染区域的应用程序（比如谷歌地图）</li>
	<li>复杂度高会减慢渲染速度（任何过度使用 DOM 的应用都不快）</li>
	<li>不适合游戏应用</li>
	</ul>
</td>
</tr>
</table>
<hr>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
	<line x1="0" y1="0" x2="200" y2="200" style="stroke:rgb(255,0,0);stroke-width:2"/>
	 <polyline points="500,40 540,40 540,80 580,80 580,160 620,160 620,220" style="fill:white;stroke:red;stroke-width:4" />
    <circle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red" />
    <ellipse cx="240" cy="50" rx="220" ry="30" style="fill:yellow" />
    <ellipse cx="240" cy="50" rx="190" ry="20" style="fill:white" />
</svg> 
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
  <rect x="50" y="20" width="150" height="150" style="fill:blue;stroke:pink;stroke-width:5;fill-opacity:0.1;stroke-opacity:0.9" />
  <rect x="250" y="20" rx="20" ry="20" width="150" height="150" style="fill:red;stroke:black;stroke-width:5;opacity:0.5" />
</svg>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
     <polygon points="100,10 40,180 190,60 10,60 160,180" style="fill:red;stroke:purple;stroke-width:5;fill-rule:nonzero;"/>
	<polygon points="300,10 240,180 390,60 210,60 360,180" style="fill:red;stroke:purple;stroke-width:5;fill-rule:evenodd;"/>
</svg> 
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
   <path id="lineAB" d="M 100 350 l 150 -300" stroke="red"
   stroke-width="3" fill="none" />
   <path id="lineBC" d="M 250 50 l 150 300" stroke="red"
   stroke-width="3" fill="none" />
   <path d="M 175 200 l 150 0" stroke="green" stroke-width="3"
   fill="none" />
   <path d="M 100 350 q 150 -300 300 0" stroke="blue"
   stroke-width="5" fill="none" />
   <!-- Mark relevant points -->
   <g stroke="black" stroke-width="3" fill="black">
     <circle id="pointA" cx="100" cy="350" r="3" />
     <circle id="pointB" cx="250" cy="50" r="3" />
     <circle id="pointC" cx="400" cy="350" r="3" />
   </g>
   <!-- Label the points -->
   <g font-size="30" font="sans-serif" fill="black" stroke="none"
   text-anchor="middle">
     <text x="100" y="350" dx="-30">A</text>
     <text x="250" y="50" dy="-10">B</text>
     <text x="400" y="350" dx="30">C</text>
   </g>
 </svg> 
<hr>
<h1>下面的例子适用于谷歌浏览器，不适用于IE</h1>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
  <defs>
    <path id="path1" d="M75,20 a1,1 0 0,0 100,0" />
  </defs>
  <text x="10" y="100" style="fill:red;">
    <textPath xlink:href="#path1">I love SVG I love SVG</textPath>
  </text>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
  <rect id="rec" x="300" y="100" width="300" height="100" style="fill:lime"> 
    <animate attributeName="x" attributeType="XML" begin="0s" dur="6s" fill="freeze" from="300" to="0" /> 
    <animate attributeName="y" attributeType="XML" begin="0s" dur="6s" fill="freeze" from="100" to="0" /> 
    <animate attributeName="width" attributeType="XML" begin="0s" dur="6s" fill="freeze" from="300" to="800" /> 
    <animate attributeName="height" attributeType="XML" begin="0s" dur="6s" fill="freeze" from="100" to="300" /> 
    <animateColor attributeName="fill" attributeType="CSS" from="lime" to="red" begin="2s" dur="4s" fill="freeze" />
  </rect>
  <g transform="translate(100,100)"> 
    <text id="TextElement" x="0" y="0" style="font-family:Verdana;font-size:24; visibility:hidden"> It's SVG!
      <set attributeName="visibility" attributeType="CSS" to="visible" begin="1s" dur="5s" fill="freeze" />
      <animateMotion path="M 0 0 L 100 100" begin="1s" dur="5s" fill="freeze" />
      <animateColor attributeName="fill" attributeType="CSS" from="red" to="blue" begin="1s" dur="5s" fill="freeze" /> 
      <animateTransform attributeName="transform" attributeType="XML" type="rotate" from="-30" to="0" begin="1s" dur="5s" fill="freeze" /> 
      <animateTransform attributeName="transform" attributeType="XML" type="scale" from="1" to="3" additive="sum" begin="1s" dur="5s" fill="freeze" /> 
    </text> 
  </g>
</svg>
</body>
</html>