<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>

<%
		sql = "Delete FROM cart_test ";
		con.createStatement().execute(sql);
		response.setHeader("refresh","0;url=shopping_cart.jsp");
		out.print("<script>");
		out.print("alert('刪除成功')");
		out.print("</script>");

%>