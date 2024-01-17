<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@include file="config.jsp"%>


	<html>
	<head></head>
	<body>
<%
request.setCharacterEncoding("UTF-8");


String no=request.getParameter("no");
sql="DELETE FROM prj_order WHERE no='"+no+"'";
con.createStatement().execute(sql);

response.sendRedirect("order.jsp");
%>
	</body>
	</html>