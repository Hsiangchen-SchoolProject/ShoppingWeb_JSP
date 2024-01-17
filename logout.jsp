<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
if(session.getAttribute("userid") != null ){
session.removeAttribute("userid");
%>

<script type="text/javascript">
        var msg;
        msg="您已經成功登出！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=html/signup.jsp"> 

<%
} //此登入是會員修改資料(person.jsp)的登出按鍵
else
{
	session.removeAttribute("mgid");
%>

<script type="text/javascript">
        var msg;
        msg="您已經成功登出！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=html/signup.jsp"> 
<%
}
%>