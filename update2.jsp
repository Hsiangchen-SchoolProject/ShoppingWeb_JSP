<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
try{
	if(session.getAttribute("userid") != null)
	{	
		if(request.getParameter("pwd")=="")		
		{

				%>

					<script type="text/javascript">
					var msg;
					msg="資料不完整！";
					alert(msg);
					</script>
					<meta http-equiv="refresh" content="0; url=html/update.jsp"> 

				<%
		}
		else
		{
			String password = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"utf-8");
			sql = "UPDATE  member  SET userpw ='"+password+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String mail = new String(request.getParameter("mail").getBytes("ISO-8859-1"),"utf-8");
			sql = "UPDATE  member  SET mail ='"+mail+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf-8");
			sql = "UPDATE  member  SET address ='"+address+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String phone = request.getParameter("phone");
			sql = "UPDATE  member  SET phone ='"+phone+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String sex = request.getParameter("sex");
			sql = "UPDATE  member  SET sex ='"+sex+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String lastname = new String(request.getParameter("lastname").getBytes("ISO-8859-1"),"utf-8");
			sql = "UPDATE  member  SET lastname ='"+lastname+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			String firstname = new String(request.getParameter("firstname").getBytes("ISO-8859-1"),"utf-8");
			sql = "UPDATE  member  SET firstname ='"+firstname+"' WHERE userid ='"+session.getAttribute("userid")+"';";
			con.createStatement().execute(sql);

			
%>
			<script type="text/javascript">
			var msg;
			msg="更改完成！";
			alert(msg);

			</script>
			<meta http-equiv="refresh" content="0; url=html/user.jsp"> 

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
}
catch(Exception e){
	out.print(e+"<br>");
	out.print(sql);
	}
%>