<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
</head>
<body>
<h1><b>dl-dt-dd</b>定义定义列表</h1>
<dl>
	<dt>水果类</dt>
	<dd>-苹果</dd>
	<dd>-香蕉</dd>
	<dt>肉类</dt>
	<dd>-猪肉</dd>
	<dd>-鸡肉</dd>
</dl>
<ul>
  <li>Coffee</li>
  <li>Tea
    <ol type="A">
      <li>Black tea</li>
      <li>Green tea
        <ol type="a">
          <li>China</li>
          <li>Africa</li>
        </ol>
      </li>
    </ol>
  </li>
  <li>Milk</li>
</ul>
<ul style="list-style-type:square">
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea
        <ul>
          <li>China</li>
          <li>Africa</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>Milk</li>
</ul>
</body>
</html>