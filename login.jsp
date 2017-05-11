<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
</head>
<body>
	<%
		String method = request.getMethod();
	%>
	<% if(method == "GET"){ %>
	<form action="" method="post">
		<p>用户名：<input type="text" name="username"></p>
		<p>密码：<input type="text" name="password"></p>
		<p><button>登录</button></p>
	</form>
	<% }else{ %>
	<%
		String name = request.getParameter("username").trim();
		String pwd = request.getParameter("password").trim();
	%>
		<% if(name.length() == 0 || pwd.length() == 0){%>
		用户名或密码为空！
		<%}else{%>
		表单成功提交
		用户名<%=name%>,密码<%=pwd%>
		<%}%>
	<%}%>
</body>
</html>