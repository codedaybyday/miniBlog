<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/RUNOOB?useUnicode=true&characterEncoding=utf-8"
					   user="root"  password=""/>
	<sql:query dataSource="blog" var="result">
		SELECT * from sys_admin;
	</sql:query>
	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>站点名</th>
			<th>站点地址</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.admin_id}"/></td>
				<td><c:out value="${row.admin_name}"/></td>
				<td><c:out value="${row.admin_pwd}"/></td>
			</tr>
		</c:forEach>
	</table>
		<% if(name.length() == 0 || pwd.length() == 0){%>
		用户名或密码为空！
		<%}else{%>
		表单成功提交
		用户名<%=name%>,密码<%=pwd%>
		<%}%>
	<%}%>
</body>
</html>