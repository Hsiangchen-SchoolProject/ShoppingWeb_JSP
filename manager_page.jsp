<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
	<title>管理者頁面</title>
</head>
<body>
<%
if(session.getAttribute("mgid") != null ){
%>
	<a href="html/index.jsp">回商品首頁</a>
	<a href="logout.jsp">登出</a>

	<table border="3">
		<tr>
			<form name="form1" methon="Post" action="gd_update.jsp">
			<td>欲修改商品名稱<input type="text" name="pro_name"></td>
			<td>價格<input type="text" name="cost"></td>
			<td>庫存<input type="text" name="inventory"></td>
			<td><input type="submit" value="確定"><input type="reset" value="清空"></td>
			</form>
		</tr>
	</table>

	<table border="3">
		<tr>
			<form name="form1" methon="Post" action="gd_remove.jsp">
			<td>下架商品 : 商品名稱<input type="text" name="pro_name"></td>
			<td><input type="submit" value="確定"><input type="reset" value="清空"></td>
			</form>
		</tr>
	</table>

	<table border="3">
			<form name="form1" methon="Post" action="gd_register.jsp">
				<tr>	
					<td>上架商品 : 商品品牌<input type="text" name="brand"></td>
					<td>商品名稱<input type="text" name="pro_name"></td>
					<td>價格<input type="text" name="cost"></td>
					<td>庫存<input type="text" name="inventory"></td>
					<td>圖片1<input type="text" name="photo"></td>
					<td>圖片2<input type="text" name="photo1"></td>
					<td>記憶體<input type="text" name="memory"></td>
					<td>CUDA<input type="text" name="cuda"></td>	
				</tr>
				<tr>
					<td>記憶體介面<input type="text" name="m_interface"></td>
					<td>核心時脈<input type="text" name="c_rate"></td>
					<td>記憶體時脈<input type="text" name="m_rate"></td>
					<td>PCI<input type="text" name="pci"></td>
					<td>輸出接口<input type="text" name="output"></td>
					<td>電源連結器<input type="text" name="link"></td>
					<td>體積<input type="text" name="volume"></td>
					<td>品牌<input type="text" name="brand"></td>
				</tr>
				<tr>
					<td><input type="submit" value="確定"><input type="reset" value="清空"></td>
				</tr>
			</form>
		</table>

<%
	sql = "SELECT * FROM member";
	ResultSet rs = con.createStatement().executeQuery(sql);
	while(rs.next())
	{	
		out.print("<table border='3'>");
		out.print("<tr><td width='100'>姓名</td><td width='150'>"+(rs.getString("firstname")+rs.getString("lastname"))+"</td></tr>");
		out.print("<tr><td width='100'>帳號</td><td width='150'>"+rs.getString("userid")+"</td></tr>");
		out.print("<tr><td width='100'>密碼</td><td width='150'>"+rs.getString("userpw")+"</td></tr>");
		out.print("<tr><td width='100'>性別</td><td width='150'>"+rs.getString("sex")+"</td></tr>");
		out.print("<tr><td width='100'>電話</td><td width='150'>"+rs.getString("phone")+"</td></tr>");
		out.print("<tr><td width='100'>信箱</td><td width='150'>"+rs.getString("mail")+"</td></tr>");
		out.print("<tr><td width='100'>地址</td><td width='150'>"+rs.getString("address")+"</td></tr><br><br></table>");
	}
	con.close();
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
</body>
</html>