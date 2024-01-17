<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AMD product</title>
	  <link rel="stylesheet" type="text/css" href="../css/ge.css">
	<link rel="stylesheet" type="text/css" href="../css/product1.css">

</head>
<body>

<%@include file="../title.jsp"%>

<div class="right-mall">
  <a href="#head-block"><img src="../image/upto.png" width="50" height="50"></a><br><br><br><br>
  <a href="shopping_cart.jsp"><img src="../image/shopping-car.png" width="50" height="50"></a>
</div>

<div class="all">
<div class="sec-byself">
   <center><a href="AMD_product.jsp"><img src="../image/amd.png" class="sec-photo-byself"></a></center>
</div>

<div class="product-center">
  <div class="top-block">
   <center><img src="../image/guess.jpg" class="top-photo"><br>
   	<font>註冊/登入會員</font></center>
  </div>

  <div class="top-hr">
   <center><img src="../image/arrow.jpg" class="top-photo"></center>
  </div>

  <div class="top-block">
   <center><img src="../image/shopcar.jpg" class="top-photo"><br>
   <font>選購/選訂商品</font></center>
  </div>

  <div class="top-hr">
   <center><img src="../image/arrow.jpg" class="top-photo"></center>
  </div>

  <div class="top-block">
   <center><img src="../image/shopmall.jpg" class="top-photo"><br>
   <font>成功取貨商品</font></center>
  </div>
<hr>
</div>
<%      
					String n="";	//名字
					String pic="";				
					String p="";	//價值				
              Class.forName("com.mysql.jdbc.Driver");   
         
                  String url="jdbc:mysql://localhost/";
                  Connection con=DriverManager.getConnection(url,"root","1234");          
				  if(con.isClosed())
							out.println("連線建立失敗");
					else
					{ 
		//Step 3: 選擇資料庫
						con.createStatement().execute("use finaldemo");  
							
					
					String sql= "SELECT * FROM good where brand like 'AMD'";
					ResultSet rs=con.createStatement().executeQuery(sql);
				  
				  while(rs.next())
					{
					 n=rs.getString("pro_name");
					 p=rs.getString("cost");					 
					 pic=rs.getString("photo");
					

	  
		%>

	<div class="product-block">
	<center> <img src="<%=pic%>" class="product-photo" ><br>
   	<font><%=n%></font><br>
   	<font>當前價格：<%=p%></font></center>
	
  <form name="form1" action="product.jsp" method="Post">
    <%out.print("<input type='hidden' name='no' value='"+n+"''>");%>
    <input type="submit" value="前往購買" style="margin-Left: 35%;">
  </form>
  </div>



<!--
	<div class="product-block">
	<center><a href="p2RXVEGA56.html"><img src="../image/RXV56-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX Vega 56</font><br>
   	<font>當前價格：11900(元)</font></center>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p3RX590.html"><img src="../image/RX590-1.jpg" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 590</font><br>
   	<font>當前價格：9890(元)</font></center>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p4RX580.html"><img src="../image/rx580-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 580</font><br>
   	<font>當前價格：7090(元)</font></center>
	</div>
	
</div>

<div class="product-center">

	<div class="product-block">
	<center><a href="p5RX580X.html"><img src="../image/RX580X-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 580 X</font><br>
   	<font>當前價格：6390(元)</font>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p6RX570.html"><img src="../image/RX570-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 570</font><br>
   	<font>當前價格：5890(元)</font>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p7RX570X.html"><img src="../image/RX570X-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 570 X</font><br>
   	<font>當前價格：5290(元)</font>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p8RX560.html"><img src="../image/RX560-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 560</font><br>
   	<font>當前價格：5090(元)</font>
	</div>
	
</div>

<div class="product-center">
	<div class="product-block">
	<center><a href="p9RX560X.html"><img src="../image/RX560X-1.png" class="product-photo"></a><br>
   	<font>顯示晶片：Radeon™ RX 560 X</font><br>
   	<font>當前價格：5090(元)</font>
	</div>
	
</div>-->
<%
		            //Step 6: 關閉連線
                   
            }
			 con.close();
              } 
			

         
		  
%>
</div>

<footer id="asid1"><!--尾頁-->
    <h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
  </footer>
</body>
</html>