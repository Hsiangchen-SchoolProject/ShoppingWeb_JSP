<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){

									String a=null;
									sql = "Delete FROM detail where order_no='"+a+"'";
									con.createStatement().execute(sql);
%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>購物車3</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<style type="text/css">@import url("shopping_cart.css");</style>
</head>
<body>


					






<%@include file="../title.jsp"%>
 	 
 	<article>
 		<div class="container-fluid ">
 	 		<div class="row">
 	 		   <div class="col-md-4 article_sec">welcome</div>
 	 		   <div class="col-md-4 article_sec" >name</div>
 	 		   <div class="col-md-4 article_sec" >已登入</div>
 	 		   <div class="col-md-12" style="height: 50px;"></div>	 				
 	 		   <div class="col-md-12">
 	 		       <div class="col-md-12 article_price" >謝謝惠顧</div>
 	 		   </div>
 	 		   <div class="col-md-12" style="height: 50px;"></div>	 			
 	 		   <div class="col-md-12">
 	 			  <div><h1>注意事項:</h1>1.請於商品抵達後七日內領取<br/>2.取貨後想有七日鑑賞保障</div>
 	 		   </div>
 	 	        <div class="col-md-12" style="height: 50px;"></div>
 	 			<div class="col-md-4 "></div>
 	 			<div class="col-md-4 article_button"><a href="index.jsp">返回首頁</div>
 	 			<div class="col-md-4 "></div>
 	 		</div>

 	</article>

<footer><div class="copyright">版權</div></footer>

<script type="text/javascript">
        			var msgg;
        			msgg="恭喜購買成功！";
       				alert(msgg);

					</script>
					<url=shopping_cart3.jsp"> 
<%
}
	else{
%>
<script type="text/javascript">
        var msg;
        msg="您尚未登入，請登入！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=login1/signup.jsp" charset="utf-8">
<%
}
%>
</body>
</html>