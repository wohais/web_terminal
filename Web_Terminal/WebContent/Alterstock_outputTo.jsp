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
	//修改学生资料

	if((String)session.getAttribute("user")==null){
		out.print("<script language='JavaScript'>alert('请先登录！');window.location.href='main_redium.jsp'</script>");
	}

	request.setCharacterEncoding("UTF-8");
	String output_id = request.getParameter("output_id");
	String sourceId = request.getParameter("sourceId");
	sourceId = sourceId.substring(1, sourceId.length()-1);//由于传值过来会被''括住，需要去除
	String id = request.getParameter("id");
	String goods_name = request.getParameter("goods_name");
	String output_num = request.getParameter("output_num");
	String output_time = request.getParameter("output_time");
	String sqlQuery = "UPDATE `web_terminal`.`record_output` SET `output_id` = ?, `id` = ?, `goods_name` = ?, `output_num` = ?, `output_time` = ? WHERE (`output_id` = ?)";
	String sqlid = "SELECT * FROM web_terminal.record_output where output_id='"+output_id+"'";
	Connection con = null;
	Statement stat = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	boolean flag = true;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_terminal?false&serverTimezone=CST&characterEncoding=utf-8","root","909036");
		stat = con.createStatement();
		rs = stat.executeQuery(sqlid);
		
		if(sourceId.equals(output_id)){
			flag = false;
		}
		/*//out.print(flag);
		out.print("<br/>"+sourceId);
		out.print("<br/>"+id);*/
		if(rs.next() && flag){
			out.print("<script type='text/javascript'>alert('货号重复!请重新输入!');window.location.href = document.referrer;</script>");
		}else{
			ps = con.prepareStatement(sqlQuery);
			ps.setString(1,output_id);
			ps.setString(2,id);
			ps.setString(3,goods_name);
			ps.setString(4,output_num);
			ps.setString(5,output_time);
			ps.setString(6,sourceId);
			ps.executeUpdate();
			out.print("<script type='text/javascript'>alert('订单信息更改成功!');window.location.href='outstock.jsp?pages=1';</script>");
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