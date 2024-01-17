<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("mgid") != null )
	{
		String name=request.getParameter("pro_name");
		String cost=request.getParameter("cost");
		String inventory=request.getParameter("inventory");
		sql = "UPDATE  good  SET cost ='"+cost+"' WHERE pro_name ='"+name+"';";
		con.createStatement().execute(sql);
		sql = "UPDATE  good  SET inventory ='"+inventory+"' WHERE pro_name ='"+name+"';";
		con.createStatement().execute(sql);
%>
		<script type="text/javascript">
		var msg;
		msg="更改完成！";
		alert(msg);

		</script>
		<meta http-equiv="refresh" content="0; url=manager_page.jsp"> 
<%
		
	}
else
	{
%>
		<script type="text/javascript">
	    var msg;
	    msg="請重新登入！";
	    alert(msg);

		</script>
		<meta http-equiv="refresh" content="0; url=html/signup.html"> 
<%
	}
%>