<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>超市货物仓储管理系统</title>
</head>
<body>
<%

	//添加学生资料
	if((String)session.getAttribute("user")==null){
		out.print("<script language='JavaScript'>alert('请先登录！');window.location.href='main_redium.jsp'</script>");
	}

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String goods_name = request.getParameter("goods_name");
	String good_price_input = request.getParameter("good_price_input");
	String good_price_output = request.getParameter("good_price_output");
	String good_stock = request.getParameter("good_stock");
	
	String sqlQuery = "INSERT INTO `web_terminal`.`goods` (`id`, `goods_name`, `good_price_input`, `good_price_output`, `good_stock`) VALUES (?, ?, ?, ?, ?)";
	String sqlid = "SELECT * FROM web_terminal.goods where id='"+id+"'";
	Connection con = null;
	Statement stat = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_terminal?false&serverTimezone=CST&characterEncoding=utf-8","root","909036");
		stat = con.createStatement();
		rs = stat.executeQuery(sqlid);
		
		if(rs.next()){
			out.print("<script type='text/javascript'>alert('编号重复!请重新输入!');window.location.href = document.referrer;</script>");
		}else{
			ps = con.prepareStatement(sqlQuery);
			ps.setString(1,id);
			ps.setString(2,goods_name);
			ps.setString(3,good_price_input);
			ps.setString(4,good_price_output);
			ps.setString(5,good_stock);
			ps.executeUpdate();
			out.print("<script type='text/javascript'>alert('商品信息添加成功!');window.location.href='Contain.jsp?pages=1';</script>");
			ps.close();
		}
		rs.close();
		stat.close();
		con.close();
	}catch (Exception e){
			e.printStackTrace();
		}
		
		
%>
</body>
</html>