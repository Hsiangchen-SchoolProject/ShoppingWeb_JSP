<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>NVIDIA product</title>
	  <link rel="stylesheet" type="text/css" href="../css/ge.css">
	<link rel="stylesheet" type="text/css" href="../css/product1.css">

</head>
<body>

<%@include file="../title.jsp"%>

<div class="right-mall">
  <a href="#head-block"><img src="../image/upto.png" width="50" height="50"></a><br><br><br><br>
  <a href="shopping_cart.html"><img src="../image/shopping-car.png" width="50" height="50"></a>
</div>

<div class="all">

<div class="sec-byself">
   <center><a href="NVIDIA_product.jsp"><img src="../image/nvidia.png" class="sec-photo-byself"></a></center>
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
							
					
					String sql= "SELECT * FROM good where brand like 'NVIDIA'";
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
	<center><a href="p2RTX2080.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：27900(元)</font></center>
	</div>

	<div class="product-hr">
	</div>
	
	<div class="product-block">
	<center><a href="p3RTX2070.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：20000(元)</font></center>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p4GTX1080.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：18990(元)</font></center>
	</div>
	
</div>


<div class="product-center">
	<div class="product-block">
	<center><a href="p5GTX1070Ti.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：13990(元)</font></center>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p6GTX1070.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：12990(元)</font>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p7GTX1060.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：9990(元)</font>
    </center>
	</div>

	<div class="product-hr">
	</div>

	<div class="product-block">
	<center><a href="p8GTX1050Ti.html"><img src "<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：6290(元)</font>
	</div>
	
</div>

<div class="product-center">
	<div class="product-block">
	<center><a href="p9GTX1050.html"><img src="<%=pic%>" class="product-photo"></a><br>
   	<font><% out.print(n);%></font><br>
   	<font>當前價格：4290(元)</font>
    </center>
	</div>

	<div class="product-hr">
	</div>
</div> -->
<%
            }
			 con.close();//Step 6: 關閉連線
            } 
%>
</div>

<footer id="asid1"><!--尾頁-->
    <h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
  </footer>

</body>
</html>