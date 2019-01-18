<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Web SQL 数据库操作</title>
<script src="Scripts/jquery-1.5.1.js" type="text/javascript"></script>
<script type="text/javascript">
	function getCurrentDB(){
		var myDB=openDatabase("myDB", "1.0", "本地用户表", 1024 * 1024, function () { });
		return myDB;
	}
	function initDB(){
		var db=getCurrentDB();//initial DB
		if(!db){ alert("您的浏览器不支持HTML5本地数据库");return; }
		db.transaction(function(ts){
			//启动事物，设置回调函数;执行sql脚本
			db.executeSql("create table if not exists user(uId varchar primary key,uName varchar null)",
					[],function(ts,result){},function(ts,message){});
		});
	}
	//页面加载完成后，绑定页面按钮的点击事件
	$(function(){
		initDB();
		$("#btnSave").click(function(){
			var txtId=$("#txtId").val();
			var txtName=$("#txtName").val();
			var db=getCurrentDB();
			db.transaction(function(ts){
				ts.executeSql("insert into user(uId,uName) values(?,?)",[txtId,txtName],function(ts,result){},
						function(ts,message){alert(message)});
			});
			//显示所有数据到页面
			showAllData();
		});
	});
	function showAllData(){
		$("#tblData").empty();
		var db=getCurrentDB();
		db.transaction("select * from user",[],function(ts){});
	}
	
</script>

    <script type="text/javascript">
       
      
       
        //显示所有数据库中的数据到页面上去
        function showAllTheData() {
            $("#tblData").empty();
            var db = getCurrentDb();
            db.transaction(function (trans) {
                trans.executeSql("select * from Demo ", [], function (ts, data) {
                    if (data) {
                        for (var i = 0; i < data.rows.length; i++) {
                            appendDataToTable(data.rows.item(i));//获取某行数据的json对象
                        }
                    }
                }, function (ts, message) {alert(message);var tst = message;});
            });
        }
        function appendDataToTable(data) {//将数据展示到表格里面
            //uName,title,words
            var txtName = data.uName;
            var txtTitle = data.title;
            var words = data.words;
            var strHtml = "";
            strHtml += "<tr>";
            strHtml += "<td>"+txtName+"</td>";
            strHtml += "<td>" + txtTitle + "</td>";
            strHtml += "<td>" + words + "</td>";
            strHtml += "</tr>";
            $("#tblData").append(strHtml);
        }
    </script>

<!--  <script type="text/javascript">
		
         var db = openDatabase('test', '5.5', 'Test DB', 2 * 1024 * 1024);
         var msg;
			
         db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS LOGS (id unique, log)');
            tx.executeSql('INSERT INTO LOGS (id, log) VALUES (1, "菜鸟教程")');
            tx.executeSql('INSERT INTO LOGS (id, log) VALUES (2, "www.runoob.com")');
            msg = '<p>数据表已创建，且插入了两条数据。</p>';
            document.querySelector('#status').innerHTML =  msg;
         });

         db.transaction(function (tx) {
            tx.executeSql('SELECT * FROM LOGS', [], function (tx, results) {
               var len = results.rows.length, i;
               msg = "<p>查询记录条数: " + len + "</p>";
               document.querySelector('#status').innerHTML +=  msg;
					
               for (i = 0; i < len; i++){
                  msg = "<p><b>" + results.rows.item(i).log + "</b></p>";
                  document.querySelector('#status').innerHTML +=  msg;
               }
            }, null);
         });
			
 </script> -->
 <script type="text/javascript">
      
         var db = openDatabase('test', '5.5', 'Test DB', 2 * 1024 * 1024);
         var msg;
         
         db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS LOGS (id unique, log)');
            tx.executeSql('INSERT INTO LOGS (id, log) VALUES (1, "菜鸟教程")');
            tx.executeSql('INSERT INTO LOGS (id, log) VALUES (2, "www.runoob.com")');
            msg = '<p>数据表已创建，且插入了两条数据。</p>';
            document.querySelector('#status').innerHTML =  msg;
         });

         db.transaction(function (tx) {
              tx.executeSql('DELETE FROM LOGS  WHERE id=1');
              msg = '<p>删除 id 为 1 的记录。</p>';
              document.querySelector('#status').innerHTML =  msg;
         });

         db.transaction(function (tx) {
             tx.executeSql('UPDATE LOGS SET log=\'www.w3cschool.cc\' WHERE id=2');
              msg = '<p>更新 id 为 2 的记录。</p>';
              document.querySelector('#status').innerHTML =  msg;
         });

         db.transaction(function (tx) {
            tx.executeSql('SELECT * FROM LOGS', [], function (tx, results) {
               var len = results.rows.length, i;
               msg = "<p>查询记录条数: " + len + "</p>";
               document.querySelector('#status').innerHTML +=  msg;
               
               for (i = 0; i < len; i++){
                  msg = "<p><b>" + results.rows.item(i).log + "</b></p>";
                  document.querySelector('#status').innerHTML +=  msg;
               }
            }, null);
         });
         
</script>
      		
</head>
<body>
 <div id="status" name="status">状态信息</div>
 <div><b>1.&nbsp;openDatabase方法打开一个已经存在的数据库，如果数据库不存在，它还可以创建数据库.</b><ins>参数说明：</ins>
 	<ol>
 		<li>数据库名称</li>
 		<li>DB版本号（可略）</li>
 		<li>对DB的描述</li>
 		<li>设置分配的数据库的大小（单位是kb）</li>
 		<li>回调函数(可略)</li>
 	</ol>
 </div>
 <div><b>2.&nbsp;transaction设置回调函数</b></div>
 <div><b>3.&nbsp;通过executeSql方法执行查询.</b><ins>参数说明：</ins>
 	<ol>
 		<li>sqlQuery：需要具体执行的sql语句，可以是create、select、update、delete</li>
 		<li>[value1,value2..]:sql语句中所有使用到的参数的数组，在executeSql方法中，将sql语句中所要使用的参数先用'?'代替，然后依次将这些参数组成数组放在第二个参数中</li>
 		<li>dataHandler：执行成功是调用的回调函数，通过该函数可以获得查询结果集</li>
 		<li>errorHandler：执行失败时调用的回调函数</li>
 	</ol>
 </div>
</body>
</html>