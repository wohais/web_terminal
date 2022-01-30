<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>超市货物仓储管理系统</title>
		<style type="text/css">
			ul{
				width: 200px;
				height: 200px;
				float: right;
				margin-top: 30px;
			}
		</style>
	</head>
	<body>
		<ul class="nav nav-pills nav-stacked">
			<li><a href="Contain.jsp?pages=1" target="contain">货品管理</a></li>
			<li><a href="instock.jsp?pages=1" target="contain">入库订单</a>
			<li><a href="outstock.jsp?pages=1" target="contain">出库订单</a>
			<li><a href="AdminPasswordReset.jsp" target="contain">管理员账号密码重置</a></li>
			<li><a href="SystemExit.jsp" target="_parent">退出系统</a></li>
			
		</ul>
	</body>
</html>