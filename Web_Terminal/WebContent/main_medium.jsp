<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>超市货物仓储管理系统</title>
</head>
<style>
#tom{
font-family:宋体;font-size:30;color:black
}
</style>
<style>
#ok{
font-family:楷体;font-size:50;color:red
}
</style>
<body>
<div align = "center">
<center id = ok>
欢迎使用超市货物仓储管理系统！
</center>
<table id = tom border = 1>
<tr><th>管理员登录</th></tr>
<form action = "login.jsp" methon ="post">
<tr><th>用户名称：<input type="text" name = "username"></th></tr>
<tr><th>登录密码：<input type="password" name = "passwd"></th></tr>
</table>
<input type = "submit" value = "登录">
<input type = "reset" value = "重置">
</div>
</body></html>
