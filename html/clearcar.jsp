<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
		sql = "Delete FROM cart_test WHERE userid='"+session.getAttribute("userid")+"'";
		con.createStatement().execute(sql);
		response.setHeader("refresh","0;url=html/shopping_cart.jsp");
		out.print("<script>");
		out.print("alert('刪除成功')");
		out.print("</script>");

%>