<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//修改管理员的密码
	request.setCharacterEncoding("UTF-8");
	String user = request.getParameter("user");
	String passowrd = request.getParameter("pwd");
	String sql = "UPDATE `web_terminal`.`root_list` SET `password` = ? WHERE (`root_id` = ?)";
	Connection con = null;
	PreparedStatement ps = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_terminal?false&serverTimezone=CST&characterEncoding=utf-8","root","909036");
		ps = con.prepareStatement(sql);
		ps.setString(1, passowrd);
		ps.setString(2, user);
		ps.executeUpdate();
		ps.close();
		con.close();
		session.removeAttribute("user");//移除用户会话
		out.print("<script type='text/javascript'>alert('更改密码成功!请重新登录!');window.parent.frames.location.href='main_medium.jsp';</script>");
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>