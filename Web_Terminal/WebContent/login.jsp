<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<html>
<head>
<title>超市货物仓储管理系统</title>
</head>
<body>
 
<%
	//接收用户名和密码，完成对用户的验证
	String u = request.getParameter("username");
	String p = request.getParameter("passwd");
	//到数据库中进行验证
    Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection ct = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_terminal?false&serverTimezone=CST&characterEncoding=utf-8","root","909036");    
	PreparedStatement ps = ct.prepareStatement("select * from root_list where root_id=? and password=?");
	ps.setString(1,u);
	ps.setString(2,p);
    ResultSet rs = ps.executeQuery();  
    if(rs.next()){
    	
    	//合法，转到欢迎页面
    	session.setAttribute("user", u);
		session.setAttribute("id", rs.getString(1));
		response.sendRedirect("wel.jsp");  	
    }else{
    	//不合法，转到登录页面
    	response.sendRedirect("main_medium.jsp");	
    }
%>
 
</body>
</html>