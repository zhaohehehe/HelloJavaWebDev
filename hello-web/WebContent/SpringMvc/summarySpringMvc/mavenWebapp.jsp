<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Maven Springmvc 项目的配置</title>
</head>
<body>
<ol>
	<li>下载Maven解压缩到安装目录即可</li>
	<li>配置环境变量：
		<ol type="a">
			<li>MAVEN_HOME = C:\Program Files\Java\maven\apache-maven-3.3.9（安装目录）</li>
			<li>PATH = %MAVEN_HOME%\bin</li>
		</ol>
	</li>
	<li>拷贝Maven文件：<b>（该步骤目的是方便Maven升级时可以不需要每次配置文件，便于开发，可以省略，）</b>
		<ol type="a">
			<li>将MAVEN_HOME/conf文件夹下的settings.xml文件拷贝到C:\Users\zhaohe路径下的<b>.m2</b>文件夹中</li>
		</ol>
	</li>
	<li>配置Maven文件：
		<ol type="a">
			<li>打开settings.xml文件，找到&lt;localRepository&gt;标签，默认仓库路径是Default: ${user.home}/.m2/repository;也可以另外重新指定路径，是可选的</li>
			<li>配置&lt;mirror&gt;标签：</li>
		<pre>
			&lt;mirror&gt; <br>
				&lt;id&gt; UK &lt;/id&gt; <br>
				&lt;name&gt; UK Central &lt;/name&gt; <br>
				&lt;url&gt; http://uk.maven.org/maven2 &lt;/url&gt; <br>
				&lt;mirrorOf&gt; central &lt;/mirrorOf&gt; <br>
			&lt;/mirror&gt; <br>
		</pre>
		</ol>
	</li>
	<li>测试Maven是否安装成功：在命令提示符窗口中输入 mvn -version命令。</li>	
	<li>打开Eclipse,Window->Preferences:
		<ol type="a">
			<li>Installations:add安装好的Maven路径</li>
			<li>User Settings:之前配置的settings.xml文件路径</li>
		</ol>
	<li>快速创建Maven项目：
		<ol type="a">
			<li>打开命令提示符，切换到想要创建项目的路径；</li>
			<li>命令提示符中运行如下Maven命令，快速创建Webapp目录结构。</li>
			<li><strong>由于第一次运行，会等较长时间，从http://uk.maven.org/maven2下载相关依赖的jar包，可能失败，多试几次</strong></li>
			<li><code>mvn archetype:generate -DgroupId=workspace-zhaohe -DartifactId=spring-mvc-hello 
					-DarchetypeArtifactId=maven-archetype-webapp
				</code>
			</li>
		</ol>
	</li>
	<li>项目创建成功后，打开Eclipse，import创建的项目。</li>
	<li>完善工程：
		<ol type="a">
			<li>右击工程，选择属性，选择左侧菜单Java Build Path，选择Order and Export，在项目目录结构中手动新建missing的文件夹。</li>
		</ol>
	</li>
	<li>打开pom.xml文件。将Packaging下拉菜单的war改成jar,也可以不改，<b>可选的</b></li>
</ol>
<h1>按照以上步骤安装后，出现编译器版本不匹配问题，所以实用以下方法创建成功!</h1>
<ol>
	<li>开启eclipse，右键new——》maven project</li>
	<li>选择maven project，显示创建maven项目的窗口;Create a simple project可以勾选，也可以不选，我们不勾选。Next</li>
	<li>Filter输入webapp过滤一下，选择 Maven Webapp项目,Next</li>
	<li>输入maven项目的基本信息:输入Group Id:包名；Artifac Id:项目名，Finish.此时项目目录结构为
		<ol>src
			<li>main
				<ol>
					<li>resources</li>
					<li>webapp
						<ol><li>WEB-INF<ol><li>web.xml</li></ol></li><li>index.jsp</li></ol>
					</li>
				</ol>
			</li>
		</ol>
	</li>
	<li>若index.jsp出现error,Build Path Tomcat即可。此时index.jsp可以成功运行。此时目录结构发生变化，添加了java文件
		<ol>src
			<li>main
				<ol>
					<li>java</li>
					<li>resources</li>
					<li>webapp
						<ol><li>WEB-INF<ol><li>web.xml</li></ol></li><li>index.jsp</li></ol>
					</li>
				</ol>
			</li>
			<li>test<ol><li>java</li></ol></li>
		</ol>
	</li>
	<li>配置pom.xml文件，此时文件中只有junit依赖。添加项目所需要的依赖
		<div id="divLoadtxt"></div>
		<div id="divLoadxml"></div>
		<button id="btn_viewTxt"onclick="loadReadmeTxt()">读取readme.txt</button>
		<button id="btn_viewXml"onclick="loadXMLDoc()">解析pom.xml文件,查看所有依赖的jar</button>
		<a href="<%=path%>/SpringMvc/springMvcResource/txt_xml/pom.xml" target="_blank">新窗口打开pom.xml文件</a>
	</li>
	<li>如果出现错误，但是不知道具体位置，则是因为版本不兼容问题，右击工程，选择Maven->Update Project</li>
	<li>配置web.xml文件.在WEB-INF文件夹下新建${servlet-name}-config.xml和${servlet-name}-servlet.xml名字可以改
		<a href="<%=path%>/SpringMvc/springMvcResource/txt_xml/web.xml" target="_blank">查看web.xml文件</a>
		<a href="<%=path%>/SpringMvc/springMvcResource/txt_xml/spring-config.xml" target="_blank">查看spring-config.xml文件</a>
		<a href="<%=path%>/SpringMvc/springMvcResource/txt_xml/spring-servlet.xml" target="_blank">查看spring-servlet.xml文件</a>
	</li>
	<li>在WEB-INF文件夹下新建views文件夹用于存储*.jsp页面</li>
</ol>

</body>
<script>
function loadReadmeTxt()
{
	var xmlhttp;
	if(window.XMLHttpRequest){
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else{
		// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("divLoadtxt").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("Post","<%=path%>/SpringMvc/springMvcResource/txt_xml/readme.txt",true);
	xmlhttp.setRequestHeader( "Content-Type", "text/html;charset=UTF-8" );
	//如果提交的是form，那么设置为"application/x-www-form-urlencoded; charset=UTF-8"
	xmlhttp.send();
}
function loadXMLDoc()
{
	var xmlhttp;
	var txt,x,i;
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
 		 xmlhttp=new XMLHttpRequest();
  	}
	else
 	 {// code for IE6, IE5
  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	xmlhttp.onreadystatechange=function()
 	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	{
    		xmlDoc=xmlhttp.responseXML;
    		txt="";
    		x=xmlDoc.getElementsByTagName("groupId");
    		for (i=0;i<x.length;i++)
      		{
      			txt=txt + x[i].childNodes[0].nodeValue + "<br>";
      		}
    		document.getElementById("divLoadxml").innerHTML=txt;
    	}
  	}
	xmlhttp.open("GET","<%=path%>/SpringMvc/springMvcResource/txt_xml/pom.xml",true);
	xmlhttp.send();
}
</script>
</html>