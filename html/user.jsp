<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>
<!DOCTYPE html>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>使用者</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<style type="text/css">@import url("../css/user1.css");</style>
</head>

<body>
	<%@include file="../title.jsp"%>

 			<span id="tab-1">1</span>
			<span id="tab-2">2</span>
			<span id="tab-3">3</span>

			
 		<article id="tab">
 			<ul class="nav nav-tabs row">
  				<li class="nav-item col-md-4" >
   					<a class="nav-link active" href="#tab-1">個人資料</a></li>

  				<li class="nav-item col-md-4">
    				<a class="nav-link" href="#tab-2">購買紀錄</a></li>
  				<li class="nav-item col-md-4">
   					<a class="nav-link disabled" href="#tab-3">訂單查詢</a></li>
			</ul>

<%
	sql = "SELECT * FROM member WHERE userid='"+session.getAttribute("userid")+"'";
	ResultSet rs = con.createStatement().executeQuery(sql);
    	while(rs.next())
    	{	
%>
			<div class="tab-content-1">
				<table class="table" border="1" style="width: 600px" >
 				<tr><th style="width: 150px">名字 :</th><td style="width: 450px"><%=rs.getString("lastname")%></td></tr>
 				<tr><th style="width: 150px">性別 :</th><td style="width: 450px"><%=rs.getString("sex")%></td></tr>
 				<tr><th style="width: 150px">電話 :</th><td style="width: 450px"><%=rs.getString("phone")%></td></tr>
 				<tr><th style="width: 150px">住址 :</th><td style="width: 450px"><%=rs.getString("address")%></td></tr>
 				<tr><th style="width: 150px">帳號 :</th><td style="width: 450px"><%=rs.getString("userid")%></td></tr>
 				<tr><th style="width: 150px">電子信箱</th><td style="width: 450px"><%=rs.getString("mail")%></td></tr>

 			</table>
<%
		}
%>
 			<center><a href="update.jsp"><button type="submit" class="namebt" href="update.jsp">更改會員資料</button></a></center><br><br>
 		</div>
			<div class="tab-content-2">

 	 				<div class="col-md-12 shopping_cart1_bar">
 	 					 	<div class="article_center_title">
 		 						<div class="col-md-2 " style="font-size: 25px" >購買帳號</div>
								<div class="col-md-2 " style="font-size: 25px" >購買單號</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >總價格</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >購買時間</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >查詢訂單</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >修改地址</div>
								
								<br>
								<br>
								<br>
								<br>
<%					
						String num="", price="", name="";
						String no="", buydate="";
						int noo=0;
						sql = "SELECT * FROM prj_order where name='"+session.getAttribute("userid")+"'";;	
						ResultSet rsr = con.createStatement().executeQuery(sql);
						while(rsr.next())
						{
							name=rsr.getString("name");
							num=rsr.getString("name");
							price=rsr.getString("price");
							no=rsr.getString("no");
							noo=Integer.parseInt(no);
							buydate=rsr.getString("putdate");	
								
%>
							
								

								<div class="col-md-2 " style="font-size: 25px" ><%=name%></div>
 	 							<div class="col-md-2 " style="font-size: 25px" ><%=noo%></div>
 	 							<div class="col-md-2 " style="font-size: 25px" ><%=price%></div>
 	 							<div class="col-md-2 " style="font-size: 25px" ><%=buydate%></div>
 	
								<form action="user.jsp#tab-3" method="post">
								<div class="col-md-2 " style="font-size: 25px" ><input type="submit" value="查詢訂單">
								<input type="hidden" value="<%=noo%>" name="order_re"></div>
 	 							</form>

 	 							<form action="back.jsp">
 	 							<div class="col-md-2 " style="font-size: 25px" ><input type="submit" value="地址修改"></div>
 	 							</form>
 	 							<br><br><br><br><br><br>
 	 							<%
 	 							}
 	 							%>
	 	 			 	   </div>
	 	 			 		 					    

	 	 			 	   </div>
	 	 		</div>

			<div class="tab-content-3">
				<div class="col-md-12 shopping_cart1_bar">
 	 					 	<div class="article_center_title">

 	 					 		<div class="col-md-2 " style="font-size: 25px" >購買單號</div>
								<div class="col-md-2 " style="font-size: 25px" >購買產品</div>
								<div class="col-md-2 " style="font-size: 25px" >購買價格</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >購買數量</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >購買時間</div>
 	 							<div class="col-md-2 " style="font-size: 25px" >退貨申請</div>
 	 							
								
								<br>
								<br>
								<br>
 		 						
<%					
						String order_re=request.getParameter("order_re");
						sql = "SELECT * FROM detail where userid='"+session.getAttribute("userid")+"' and order_no='"+order_re+"';";	
						String product="", one_p="", amount="", order_no=""; 
						ResultSet rsp = con.createStatement().executeQuery(sql);

						sql = "SELECT * FROM good;";
						String pro="";
						ResultSet rspz = con.createStatement().executeQuery(sql);

						while(rsp.next())
						{
									product=rsp.getString("name");
									one_p=rsp.getString("price");
									amount=rsp.getString("amount");
									order_no=rsp.getString("order_no");
								

						while(rspz.next())
						{
									pro=rspz.getString("pro_name");
						}	
%>
								

 	 							<div class="col-md-2 " style="font-size: 25px"><%=order_no%></div>
 	 							<div class="col-md-2 " style="font-size: 25px"><%=product%></div>
 	 							<div class="col-md-2 " style="font-size: 25px"><%=one_p%></div>
 	 							<div class="col-md-2 " style="font-size: 25px"><%=amount%></div>
 	 							<div class="col-md-2 " style="font-size: 25px"><%=one_p%></div>
 	 							<form action="back1.jsp">
 	 							<div class="col-md-2 " style="font-size: 25px"><input type="submit" value="申請退貨"></div>
 	 							</form>
 	 							<br><br><br><br>
 	 							<%
}
%>

 	 							</div>

								
	 	 			 	   </div>

								
	 	 			 	   
	 	 			 	 
			</div>


 		</article>
 		
 	
 <footer id="asid1"><!--尾頁-->
		<h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
	</footer>
<%
}
else{
%>
<script type="text/javascript">
        var msg;
        msg="您尚未登入，請登入！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=signup.jsp" charset="utf-8">
<%
}
%>
</body>
</html>