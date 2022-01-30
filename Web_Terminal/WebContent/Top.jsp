<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>超市货物仓储管理系统</title>
<style type="text/css">
	.block{
		width: 1300px;
		height: 50px;
		background-color: #ccc;
		border-radius: 10px;
		margin: 0 auto;
	}
	h3{
		text-align: center;
		padding-top: 12px;
		font-family: "微软雅黑";
	}
</style>
</head>
<body>
	<div class="block">
		<h3>您好！<%=session.getAttribute("user") %>管理员，欢迎使用超市货物仓储管理系统</h3>
	</div>
</body>
</html>>
</html>