<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单属性 HTML5</title>
</head>
<body>
<ol>
	<li>
		<p>&lt;form&gt; 和 &lt;input&gt; 的<b> autocomplete="on/off" 属性:</b></p>
		<strong>autocomplete 属性规定 form 或 input 域应该拥有自动完成功能；用户快捷输入，会有记忆功能</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>formaction 属性:</b></p>
		<strong>The formaction 属性会覆盖&lt;form&gt; 元素中的action属性.
			注意: The formaction 属性用于 type="submit" 和 type="image".
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>formmethod 属性:</b></p>
		<strong>The formmethod 属性会覆盖&lt;form&gt; 元素中的method属性.
			注意: The formmethod 属性用于 type="submit" 和 type="image".
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>formtarget 属性:</b></p>
		<strong>The formtarget 属性会覆盖&lt;form&gt; 元素中的target属性.
			注意: The formtarget 属性用于 type="submit" 和 type="image".
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>autofocus 属性</b></p>
	</li>
	<li>
		<p>&lt;input&gt; <b>mutiple 属性:</b></p>
		<strong>multiple 属性是一个 boolean 属性,属性规定&lt;input&gt;元素中可选择多个值。
			注意: multiple 属性适用于以下类型的&lt;input&gt;标签：email 和 file。
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>pattern 属性:</b></p>
		<strong>
		注意:pattern 属性适用于以下类型的&lt;input&gt; 标签: text, search, url, tel, email, 和 password.<br>
		例如:&lt;input pattern="[A-Za-z]{3}" &gt;
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>placeholder 属性:</b></p>
		<strong>
		注意:placeholder 属性适用于以下类型的&lt;input&gt; 标签: text, search, url, tel, email, 和 password.<br>
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>required  属性:</b></p>
		<strong>required 属性规定&lt;input&gt;不能为空
		注意:required  属性适用于以下类型的&lt;input&gt; 标签: text, search, url, tel, email, password,date pickers, number, checkbox, radio 以及 file.<br>
		</strong>
	</li>
	<li>
		<p>&lt;input&gt; <b>step  属性:</b></p>
		<strong>step 属性为输入域规定合法的数字间隔。如果 step="3"，则合法的数是 -3,0,3,6 等
		注意:step 属性适用于以下类型的&lt;input&gt; 标签: number, range, date, datetime, datetime-local, month, time 和 week.<br>
		</strong>
	</li>
	<li>
		<input type="number" name="points" step="3" max="9" min="-6">
	</li>

</ol>
</body>
</html>