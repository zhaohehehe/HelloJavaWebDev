使用说明：

      1.导入动态WEB项目到Eclipse；
	  
	  2.配置Servers和jdk;
	  
	  3.Eclipse中Run AS --> Run On Server在web容器中启动项目即可（旧版本的Tomcat需要配置server.xml的Context）；
	  
	  4.访问http://localhost:8080/HelloHibernate/即可看到效果。
	  
PS：首先要配置/HelloHibernate/src/hibernate.cfg.xml文件，并且执行HelloHibernate/WebContent/sqlScript.sql脚本。
  