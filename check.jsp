<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("acc").equals("mgaccount")&&request.getParameter("pwd").equals("mgpassword"))
	{
		session.setAttribute("mgid",request.getParameter("acc"));
		response.sendRedirect("manager_page.jsp");
	}
else
	{
		sql = "SELECT * FROM member WHERE userid=? AND userpw=?";
			   
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("acc"));
		pstmt.setString(2,request.getParameter("pwd"));
			   
		ResultSet paperrs = pstmt.executeQuery();
			   
		if(paperrs.next())
		{
			session.setAttribute("userid",request.getParameter("acc"));
				   
				   
			response.sendRedirect("html/user.jsp");//登入後跳轉到login.jsp
		}
			   
		else{
%>

<script type="text/javascript">
        var msg;
        msg="帳號密碼錯誤，請重新登入！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=html/signup.html"> 


<%
}
		   }
%>


