<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%

	if(session.getAttribute("mgid") != null)
	{
		String pro_name=new String (request.getParameter("pro_name"));
		sql ="DELETE FROM good WHERE pro_name='"+pro_name+"'";
		int rec=con.createStatement().executeUpdate(sql);
		if(rec>0)
		{			
%>
			<script type="text/javascript">
			var msg;
			msg="下架成功！";
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
			msg="下架失敗！";
			alert(msg);

			</script>
			<meta http-equiv="refresh" content="0; url=manager_page.jsp"> 
<%
		}
	}

	else
	{
%>
		<script type="text/javascript">
		var msg;
		msg="您尚未登入會員，請登入！";
		alert(msg);

		</script>
		<meta http-equiv="refresh" content="0; url=html/signup.html"> 
<%
	}
%>