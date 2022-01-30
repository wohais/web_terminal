<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<title>超市货物仓储管理系统</title>
		<style type="text/css">
			.form-control {
				width: 300px;
				height: 30px;
				float: right;
			}
			
			select {
				width: 210px;
				height: 30px;
			}
			
			.submit {
				margin-left: 100px;
				margin-right: 30px;
			}
			
			.contain {
				width: 1000px;
				border: 1px #bbb solid;
				background-color: #eee;
				padding-top: 20px;
				border-radius: 10px;
			}
			
			label {
				display: inline-block;
				width: 100px;
				margin-right: 10px;
			}
			
			form {
				margin-left: 300px;
			}
		</style>
	</head>

	<body>
	<%
		if((String)session.getAttribute("user")==null){
			out.print("<script language='JavaScript'>alert('请先登录！');window.location.href='main_medium.jsp'</script>");
		}
	%>
		<div class="contain">
			<form action="Addstock_inputTo.jsp" method="post">
				<div class="form-group form-inline">
					<label for="input_id">货号:</label>
				<input type="text" class="form-control" id="input_id" name="input_id" maxlength="40" required="required">
				</div>
			<div class="form-group form-inline">
				<label for="id">商品编号:</label>
					<input type="text" class="form-control" id="id" name="id" required="required">
				</div>
				<div class="form-group form-inline">
					<label for="goods_name">名称:</label>
					<input type="text" class="form-control" id="goods_name" name="goods_name" required="required">
				</div>
				<div class="form-group form-inline">
					<label for="input_num">入库数量:</label>
					<input type="text" class="form-control" id="input_num" name="input_num" required="required">
				</div>
				<div class="form-group form-inline">
					<label for="input_time">入库时间:</label>
					<input type="date" class="form-control" id="input_time" name="input_time" required="required">
				</div>
				<div class="form-group form-inline">
					<label for="make_time">生产日期:</label>
					<input type="date" class="form-control" id="make_time" name="make_time" required="required">
				</div>
				<div class="form-group form-inline">
					<label for="expiration_data">保质期:</label>
					<input type="date" class="form-control" id="expiration_data" name="expiration_data" required="required">
				</div>
				<div class="form-group form-inline">
					<input type="submit" id="" name="" class="btn btn-primary submit" value="提交信息"/><input type="reset" class="btn btn-warning" value="重置" />
				</div>
			</form>
		</div>
	</body>

</html>