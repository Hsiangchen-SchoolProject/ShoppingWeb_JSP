<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){

  request.setCharacterEncoding("utf-8");
  
  
  
  String name=request.getParameter("prj_name");
  String price=request.getParameter("price");
  String account=request.getParameter("userid");
  String num=request.getParameter("num");
  String img=request.getParameter("img");  
  int total=0;
  total=Integer.parseInt(num)*Integer.parseInt(price);
  sql="SELECT * FROM good WHERE pro_name='"+name+"'";
  ResultSet rs=con.createStatement().executeQuery(sql);
  
  while(rs.next())
  {
  if(Integer.parseInt(rs.getString("inventory"))>=Integer.parseInt(num))
  {
  Statement st=con.createStatement(); 
  int i=st.executeUpdate("insert into cart_test(price, total, name, num, userid, img) values('"+price+"', '"+total+"',  '"+name+"',  '"+num+"', '"+account+"', '"+img+"')");
  out.println("Data is successfully inserted!"); 
  response.setHeader("refresh","0;url=shopping_cart.jsp");
  out.print("<script>");
  out.print("alert('成功加入購物車')");
  out.print("</script>");
  }
  else
  {
	  out.print("<script>");
	  out.print("alert('庫存不足')");
	  out.print("</script>");
	  response.setHeader("refresh","0;url=index.jsp");
  }
  }
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