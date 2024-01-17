<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>購物車1</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<style type="text/css">@import url("shopping_cart.css")</style>
    <link rel="stylesheet" type="text/css" href="ge.css">
	
  	

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
 	 		 	<div class="col-md-12" style="height: 50px;"></div>
 	 				<div class="col-md-12 shopping_cart1_bar">
 	 					 	<div class="article_center_title">
 		 						<div class="col-md-4 ">商品照片</div>
 	 							<div class="col-md-3 " >商品名稱</div>
 	 							<div class="col-md-2 " >總數量</div>
 	 							<div class="col-md-2 " >價格</div>
 	 							<div class="col-md-1 " ></div>
	 	 			 	   </div>
<%						int total=0;
						int total_t=0;
						String num="",price="", name="";
						int num_t=0;
 		 				sql = "SELECT * FROM cart_test WHERE userid='"+session.getAttribute("userid")+"';";	
						String new_name=request.getParameter("name");
						ResultSet rs = con.createStatement().executeQuery(sql);
						while(rs.next())
						{
							name=rs.getString("name");
							num=rs.getString("num");
							price=rs.getString("price");
							total=Integer.parseInt(num)*Integer.parseInt(price);
							total_t+=total;
							num_t+=Integer.parseInt(num);
							
							if(name!=new_name)
							{						
%>


 		 					<div>
 		 						<div class="col-md-4 article_center1"><%out.print("<center><img  class='photo-image' src='"+rs.getString("img")+"'height='100' width='100'></center>");%></div>
 	 							<div class="col-md-3 article_center1" ><%=rs.getString("name")%></div>
 	 							<div class="col-md-2 article_center1" ><%=num%></div>
 	 							<div class="col-md-2 article_center1" ><%=total%></div>
 	 							<div class="col-md-1 article_center1" ><a href="../clearcart.jsp"><img src="../image/shopping_cart_cancel.png" height='50' width='50' class="dcancel_button"></div></a>
<%
							}
%>
	 	 			 	   </div>
 		 			 	   <!--<div>
 	 							<div class="col-md-4 article_center2">pic</div>
 	 							<div class="col-md-3 article_center2" >Name</div>
 	 							<div class="col-md-2 article_center2" >總數量總價格</div>
 	 							<div class="col-md-2 article_center2" >價格</div>
 	 							<div class="col-md-1 article_center2" ><img src="../image/shopping_cart_cancel.png" class="cancel_button"></div>
 	 					    </div>	-->		    
 	 				
<%
}
%>
   
 	 				<div class="col-md-12 article_center_total">全部總價格:<%=total_t%></div>
 	 				<div class="col-md-12" style="height: 50px;"></div>
 	 				<div class="col-md-2 " ></div>
 	 				<div class="col-md-3 " ><a href="index.jsp"><input type="button" value="繼續選購" class="article_button"></div>
 	 				<div class="col-md-2 " ></div>
 	 				<div class="col-md-3 " ><a href="shopping_cart2.jsp"><input type="button" value="進入結帳" class="article_button" ></a></div>
 	 				<div class="col-md-2 " ></div>
 	 				</div>
 	 				
 		</article>
 
 
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
 
	<footer id="asid1"><!--尾頁-->
        <h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
    </footer>

</html>