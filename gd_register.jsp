<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
try
{
	if(session.getAttribute("mgid") != null)
	{
		String brand=new String (request.getParameter("brand"));
		String pro_name=new String (request.getParameter("pro_name"));
		String cost=new String (request.getParameter("cost"));
		String inventory=new String(request.getParameter("inventory"));
		String photo=new String(request.getParameter("photo"));
		String photo1=new String(request.getParameter("photo1"));
		String memory=new String(request.getParameter("memory"));
		String cuda=new String(request.getParameter("cuda"));
		String m_interface=new String(request.getParameter("m_interface"));
		String c_rate=new String(request.getParameter("c_rate"));
		String m_rate=new String(request.getParameter("m_rate"));
		String pci=new String(request.getParameter("pci"));
		String output=new String(request.getParameter("output"));
		String link=new String(request.getParameter("link"));
		String volume=new String(request.getParameter("volume"));
		

		sql="INSERT good (brand, pro_name, cost, inventory, photo, photo1, memory, cuda, m_interface, c_rate, m_rate, pci, output, link, volume)";
		sql+="VALUE ('"+brand+"', ";
		sql+="'"+pro_name+"', ";
		sql+="'"+cost+"', ";
        sql+="'"+inventory+"', ";
		sql+="'../image/"+photo+"-1.jpg', ";
		sql+="'../image/"+photo1+"-2.jpg', ";
		sql+="'"+memory+"', ";
		sql+="'"+cuda+"', ";
		sql+="'"+m_interface+"', ";
		sql+="'"+c_rate+"', ";
		sql+="'"+m_rate+"', ";
		sql+="'"+pci+"', ";
		sql+="'"+output+"', ";
		sql+="'"+link+"', ";
        sql+="'"+volume+"')";
        con.createStatement().execute(sql);
        con.close();
%>
		<script type="text/javascript">
		var msg;
		msg="加入成功！";
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
		msg="您尚未登入會員，請登入！";
		alert(msg);

		</script>
		<meta http-equiv="refresh" content="0; url=html/signup.html"> 
<%
	}
}
catch(Exception e)
{
	out.print(e+"<br>");
	out.print(sql);
}
%>