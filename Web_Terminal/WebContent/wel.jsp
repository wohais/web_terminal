<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>超市货物仓储管理系统</title>
</head>
<%
if((String)session.getAttribute("user")==null){
	out.print("<script language='JavaScript'>alert('请先登录！');window.location.href='main_redium.jsp'</script>");
}
%>
<frameset rows="10%,*" frameborder="0" framespacing="10">
		<frame src="Top.jsp" noresize="noresize" scrolling="yes" />
		<frameset cols="30%,*">
			<frame src="Left.jsp" noresize="noresize" />
			<frame src="Contain.jsp?pages=1" name="contain" />
		</frameset>
	</frameset>
</html>