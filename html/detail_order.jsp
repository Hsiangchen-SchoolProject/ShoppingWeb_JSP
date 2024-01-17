<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  )
	{


									String a=null;
									sql = "Delete FROM detail where order_no='"+a+"'";
									con.createStatement().execute(sql);
	
%>

					<script type="text/javascript">
        			var msgg;
        			msgg="恭喜購買成功！";
       				alert(msgg);

					</script>
					<meta http-equiv="refresh" content="0; url=shopping_cart3.jsp"> 

<%
}
else
{
%>

<script type="text/javascript">
        var msg;
        msg="您尚未登入，請登入！";
        alert(msg);

</script>
<%
}
%>	