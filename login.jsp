<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
</head>
<body>
	<%
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
	%>
	<form action="" method="get">
		<p>用户名：<input type="text" name="username"></p>
		<p>密码：<input type="text" name="password"></p>
		<p><button>登录</button></p>
	</form>
	<%=name%>
</body>
</html>