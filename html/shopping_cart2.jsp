<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<title>購物車2</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<style type="text/css">@import url("shopping_cart.css");</style>
</head>
<body>
<%@include file="../title.jsp"%>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){
%>
 		<article>
 			<div class="container-fluid ">
 	 			<div class="row">
 	 				<div class="shopping_cart_title" >
 	 					<div class="col-md-4 article_sec " >welcome</div>
 	 					<div class="col-md-4 article_sec " >name</div>
 	 					<div class="col-md-4 article_sec " >已登入</div>
 	 				</div>
 	 				<div class=" col-md-12 flowchart">
 	 					<div class="col-md-1 article_top"></div>
 	 					<div class="col-md-2 article_top" style="background-color: black;border-radius: 50px 0px 0px 50px " ><img src="../image/shopping_cart.png" class="flowchart_img"></div>
 	 					<div class="col-md-2 article_top"><img src="../image/arrow.png" class="flowchart_img"></div>
 	 					<div class="col-md-2 article_top"><img src="../image/form.png" class=" flowchart_img"></div>
 	 					<div class="col-md-2 article_top"><img src="../image/arrow.png" class="flowchart_img"></div>
 	 					<div class="col-md-2 article_top"><img src="../image/wallet.png" class="flowchart_img"></div>
 	 					<div class="col-md-1 article_top"></div>
 	 				</div>

				<%
								
					String id=(String)session.getAttribute("userid");
					sql="SELECT * FROM member where userid = '"+id+"'";
					ResultSet rs=con.createStatement().executeQuery(sql);
								
					String lastname="",mail="", phone="", address="";
					while(rs.next())
					{
						lastname=rs.getString("lastname");
						mail=rs.getString("mail");
						phone=rs.getString("phone");
						address=rs.getString("address");
								
				%>
 	 			<div class="col-md-12" style="height: 50px;"></div>	 			
 	 					<div class="col-md-12 article_center_infor_tit">收件者資訊</div>
 	 					<div class="col-md-6 article_center_infor">姓名:<%=rs.getString("lastname")%></div>
 	 					<div class="col-md-6 article_center_infor">電子信箱:<%=rs.getString("mail")%></div>
 	 					<div class="col-md-6 article_center_infor">電話:<%=rs.getString("phone")%></div>
 	 					<div class="col-md-6 article_center_infor">住址:<%=rs.getString("address")%></div>
 	 			<div class="col-md-12" style="height: 50px;"></div>
 	 			<%
					}
				%> 
 	
 	 				<form action="checkok.jsp">
						<div class="col-md-12 article_center_infor_tit">寄送方式</div>
 	 					<div class="col-md-6 article_center" style="text-align: left;">
 	 						<input type="radio" name="home" value="便利商店">便利商店<br/>
 	 						<input type="radio" name="home" value="宅配到府">宅配到府<br/>
 	 						<input type="radio" name="home" value="海外配送">海外配送
 	 					</div>
						
 	 					<div class="col-md-6 article_center" style="overflow: auto;padding-top: 0px;">
 	 						<div class="col-md-12">
							<%
								
								sql="SELECT * FROM cart_test" ;
								ResultSet rsa=con.createStatement().executeQuery(sql);
								String name="", total="", num="";
								int total_t=0;
								int num_t=0;
								while(rsa.next())
								{
									name=rsa.getString("name");
									total=rsa.getString("total");	
									total_t+=Integer.parseInt(total);
									num=rsa.getString("num");
								    num_t+=Integer.parseInt(num);	
							%>

 	 							<div class="col-md-4 article_center_goods"><%=rsa.getString("name")%></div>
 	 							<div class="col-md-4 article_center_goods"><%=rsa.getString("num")%>項</div>
 	 							<div class="col-md-4 article_center_goods">$<%=rsa.getString("total")%></div>
 	 							
								<%
								}
						   %> 
								<div class="col-md-12"><hr/></div>
 	 							<div class="col-md-7  article_center_goods">總數量</div><div class="col-md-5  article_center_goods"><%=num_t%></div>
								<div class="col-md-7  article_center_goods">總價錢</div><div class="col-md-5  article_center_goods"><%=total_t%></div>
 	 						
							</div>
 	 					</div>	
						 
 	 				<div class="col-md-12" style="height: 50px;"></div>
 	 				<div class="col-md-12 radius">
 	 				<input type="checkbox" name="agreement">我同意<a href="">法定的定型化契約</a>和<a href="">雙方自由買賣交易</a>等法規
 	 				</div>
 	 				<div class="col-md-12" style="height: 50px;"></div>
 	 				<div class="col-md-2 "></div>
 	 				<a href="shopping_cart.jsp"><div class="col-md-3 article_button" >返回上頁</div></a>
 	 				<div class="col-md-2 "></div>
					<!--確定結帳-->
				
					<input type="hidden" value="<%=num_t%>"  name="buy_total">
					<input type="hidden" value="<%=total_t%>"  name="price_total">
					<input type="hidden" value="<%=num%>"  name="one_num">
					<input type="hidden" value="<%=total%>"  name="one_total">
					<input type="hidden" value="<%=name%>" name="one_name">
 	 				<input type="submit" value="結帳" class="col-md-3 article_button" ></div></a>
					
					</form>
 	 				<div class="col-md-2 "></div>

 	 				</div>
	

 		</article>
		
		<%
								sql="SELECT * FROM good where pro_name='"+name+"'" ;
								ResultSet rsaq=con.createStatement().executeQuery(sql);							
								String inv;
								int lost=0;
								while(rsaq.next())
								{
									inv=rsaq.getString("inventory");
									lost=Integer.parseInt(inv)-num_t;
									if(lost<0)
									{
										 out.print("<script>");
										  out.print("alert('庫存不足')");
										  out.print("</script>");
										  response.setHeader("refresh","0;url=product.jsp");
									}
									
								}
									Statement stq=con.createStatement(); 	
							%>
<%
}
else{
%>

<script type="text/javascript">
        var msg;
        msg="您尚未登入，請登入！";
        alert(msg);

</script>
<%
}
%>
 	
 
	<footer><div class="copyright">版權</div></footer>

</body>
</html>