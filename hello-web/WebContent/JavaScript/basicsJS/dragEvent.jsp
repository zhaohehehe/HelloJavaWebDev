<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>拖动事件</title>
<style>
.droptarget {
    float: left; 
    width: 100px; 
    height: 80px;
    margin: 15px;
    padding: 10px;
    border: 1px solid #aaaaaa;
}
</style>
</head>

<body>
<h1>拖动图片</h1>
<div class="droptarget">
	<img src="<%=path%>/images/panda.jpg" alt="Panda" graggable="true" id="gragtarget" width="64px" height="64px">
</div>
<div class="droptarget"></div>
<p id="hint" style="clear:both"></p>
<script>
//开始拖动时触发  
 document.addEventListener("dragstart",function(event){
	 event.dataTransfer.setData("Text",event.target.id);
	 document.getElementById("hint").innerHTML="开始拖动drapstart(拖动drag过程中会变红)";
	 //修改被拖动元素的透明度
	 event.target.style.opacity="0.3";
 });
 //元素拖动过程中,改变输出文本的颜色 
 document.addEventListener("drag",function(){
	 document.getElementById("hint").style.color="red";
 });
 //在元素正在拖动到放置目标时触发; 默认情况下,数据/元素不能在其他元素中被拖放。对于drop我们必须防止元素的默认处理
 document.addEventListener("dragover", function(event) {
    event.preventDefault();
});
//当p元素完成拖动进入droptarget,改变div的边框样式 
 document.addEventListener("dragenter", function(event) { 
     if ( event.target.className == "droptarget" ) { 
         event.target.style.border = "3px dotted red"; 
     } 
 }); 
//当可拖放的p元素离开droptarget，重置div的边框样式
 document.addEventListener("dragleave", function(event) {
     if ( event.target.className == "droptarget" ) {
         event.target.style.border = "";
     }
 });
 //放置被拖元素
 document.addEventListener("drop", function(event) {
    event.preventDefault();
    if ( event.target.className == "droptarget" ) {
    	document.getElementById("hint").style.color="";	
    	//event.target.style.border = "";
        var data = event.dataTransfer.getData("Text");
        event.target.appendChild(document.getElementById(data));
    }
}); 
//元素被放置之后，完成拖动 
 document.addEventListener("dragend", function(event) { 
     document.getElementById("hint").innerHTML = "完成 拖动dragend"; 
     event.target.style.opacity = "1"; 
 }); 
</script>
</body>

</html>