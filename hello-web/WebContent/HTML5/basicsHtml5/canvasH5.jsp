<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%String path=request.getContextPath(); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>canvas画布</title>
<title>渲染 HTML5</title>
  <!--[if lt IE 9]>
   <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
   <![endif]-->
<style>
	newElement{
	background-color:red;
	padding:20px;
	font-size:30px;
	}
</style>
</head>
<body>
<h1> 标签只是图形容器，您必须使用脚本来绘制图形</h1>
<canvas id="myCanvas1" width="200px" height="200px" style="border:10px solid #000000 ;border-style:outset;"></canvas>
<canvas id="myCanvas2" width="200px" height="200px" style="border:10px solid #000000 ;border-style:outset;"></canvas>
<canvas id="myCanvas3" width="200px" height="200px" style="border:10px solid #000000 ;border-style:outset;"></canvas>
<canvas id="myCanvas4" width="200px" height="200px" style="border:10px solid #000000 ;border-style:outset;"></canvas>
<canvas id="myCanvas5" width="200px" height="200px" style="border:10px solid #000000 ;border-style:outset;"></canvas>
<img id="scream" src="<%=path%>/images/the_scream.jpg" width="200px" height="200px" alt="The Scream"></img>
<canvas id="myCanvas6" width="500px" height="500px" style="border:1px solid #000000 ;border-style:outset;">图片</canvas>

</body>
<script>
	var canvas=document.getElementById("myCanvas1");
	var canvastx=canvas.getContext("2d");
	canvastx.fillStyle="black";
	canvastx.fillRect(10,10,50,70);
</script>
<script>
	var canvas=document.getElementById("myCanvas2");
	var canvastx=canvas.getContext("2d");
	canvastx.moveTo(10,10);
	canvastx.lineTo(50,70);
	canvastx.stroke();
</script>
<script>
	var canvas=document.getElementById("myCanvas3");
	var canvastx=canvas.getContext("2d");
	canvastx.beginPath();
	canvastx.arc(50,70,40,0,Math.PI);
	/*从上一个图形封闭  */
	canvastx.arc(130,70,40,Math.PI,2*Math.PI);
	canvastx.stroke();
</script>
<script>
	var canvas=document.getElementById("myCanvas4");
	var canvastx=canvas.getContext("2d");
	canvastx.font="30px black";
	canvastx.fillText("Hello World!",10,60);
	canvastx.strokeText("Hello World!",10,100);
	
</script>
<script>
	var c=document.getElementById("myCanvas5");
	var ctx=c.getContext("2d");
	// Create gradient
	var grd=ctx.createLinearGradient(0,0,100,100);
	grd.addColorStop(0,"red");
	grd.addColorStop(1,"black");
	//Create another gradient
	var grd2=ctx.createRadialGradient(10,10,30,60,60,200);
	grd2.addColorStop(0,"red");
	grd2.addColorStop(1,"black");
	// Fill with gradient
	ctx.fillStyle=grd;
	ctx.fillRect(20,20,150,80);
	//Fill with another gradient
	ctx.fillStyle=grd2;
	ctx.fillRect(10,100,150,80);
</script>
<script>
	var c=document.getElementById("myCanvas6");
	var ctx=c.getContext("2d");
	var img=document.getElementById("scream");
	img.onload = function(){
		ctx.drawImage(img,10,10);
	};
</script>
</html>