<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>PRODUCT</title>

  <link rel="stylesheet" type="text/css" href="../css/ge.css">
  	<link rel="stylesheet" type="text/css" href="../css/page.css">
</head>
<body>

<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){
%>

<%@include file="../title.jsp"%>

<div class="right-mall">
  <a href="#header"><img src="../image/upto.png" width="50" height="50"></a><br><br><br><br>
  <a href="shopping_cart.jsp"><img src="../image/shopping-car.png" width="50" height="50"></a>
</div>

<div class="all">
	<section class="sec-block">
	   <center><img src="../image/nvidia.png" class="sec-image"></center>
	</section>

<%

    String name = request.getParameter("no");
    sql = "SELECT * FROM good WHERE pro_name='"+name+"'";
    ResultSet rs = con.createStatement().executeQuery(sql);
    while(rs.next())
    {
		
%>

<div class=center>

  <div class=photo>
       <%out.print("<center><img class='photo-image' src='"+rs.getString("photo")+"'></center>");%>
       <%out.print("<center><img class='photo-image' src='"+rs.getString("photo1")+"'></center>");%>
  </div>

<div class="space-2"><p></p></div>

  <div class=name>
        <span class="namefont-1"><img src="../image/finger.png">顯示晶片：</span><br>
        <span class="namefont-2"><%out.print(rs.getString("pro_name"));%></span><br><br>

        <span class="namefont-1"><img src="../image/finger.png">記憶體：</span><br><br>
        <span class="namefont-2"><%out.print(rs.getString("memory"));%></span><br>

        <span class="namefont-1"><img src="../image/finger.png">當前價格：</span><br><br>
        <span class="namefont-2"><%out.print(rs.getString("cost"));%>(元)</span><br>

        <span class="namefont-1"><img src="../image/finger.png">剩餘數量：</span><br><br>
		
        <span class="namefont-2"><%out.print(rs.getString("inventory"));%>(個)</span><br>

        <span class="namefont-1"><img src="../image/finger.png">欲買數量：</span>
        <form name="form1" action="cart.jsp">
        <input type="number" id="quantity" value="1" name="num" title="數量" size="10" min="1" max="99" /><br><br>       
        <%out.print("<input type='hidden' name='prj_name' value='"+rs.getString("pro_name")+"';>");%>
        <%out.print("<input type='hidden' name='price' value='"+rs.getString("cost")+"';>");%>
        <%out.print("<input type='hidden' name='img' value='"+rs.getString("photo")+"';>");%>
        <%out.print("<input type='hidden' name='userid' value='"+session.getAttribute("userid")+"';>");%>
        <input type="submit" value="加入購物車">
       </form>

       
  </div>

  <div class="content">
     
     <center><span class="contentfont">產品規格</span></center><br>

     <center><table>
      <tr>
        <td width="200px"><span class="contentfont">圖像處理器：</span></td>
        <td><span class="contentfont"><%out.print(rs.getString("pro_name"));%></span></td>
      </tr>

     <tr>
     <td width="200px"><span class="contentfont">CUDA核心：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("cuda"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">記憶體：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("memory"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">記憶體介面：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("m_interface"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">核心時脈：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("c_rate"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">記憶體時脈：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("m_rate"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">PCI Express：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("pci"));%>/span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">輸出接口：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("output"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">電源連結器：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("link"));%></span></td>
     </tr>

     <tr>
     <td width="200px"><span class="contentfont">體積(長*寬*高)：</span></td>
     <td><span class="contentfont"><%out.print(rs.getString("volume"));%></span></td>
     </tr>
   </table></center><br>
    </div>
	
<%
  }
%>
    <div class="comment">

         <center><span class="contentfont">評論</span></center>

         <form name="form1" method="post" action="../add.jsp" class="form1">
         
         <input class="formfont" type="text" name="name" width="50" height="20" placeholder="必填/姓名"><br>
         <input class="formfont" type="text" name="mail" width="50" height="20" placeholder="必填/郵件"><br>
         <input class="formfont" type="text" name="subject" width="50" height="20" placeholder="必填/主題"><br>
         <textarea class="formfont" rows=5 name="content" width="50" height="20" placeholder="必填/內容"></textarea><br>
         <a href="../view.jsp?page=1">觀看留言</a><br>
<input type="submit" name="Submit" value="送出" class="comment-tb">
<input type="Reset" name="Reset" value="重新填寫" class="comment-tb">
</form>

    </div>
  </div>
</div>
	<footer id="asid1" style="height: auto;"><!--尾頁-->
    <%@include file="../counter.jsp"%>
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