<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){
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

<%
								sql="SELECT * FROM cart_test" ;
								ResultSet rsa=con.createStatement().executeQuery(sql);
								String name="";
								String num=request.getParameter("buy_total");
								String price=request.getParameter("price_total");
								int total_t=0;
								int num_t=0;
								while(rsa.next())
								{
									name=rsa.getString("name");
									total_t=Integer.parseInt(price);
									num_t=Integer.parseInt(num);
								}
									Statement st=con.createStatement(); 
									int i=st.executeUpdate("insert into prj_order(product, num, price) values('"+name+"', '"+num_t+"',  '"+total_t+"')");
								
									response.setHeader("refresh","0;url=index.jsp");
									
								
							%>
							
							<%
								sql="SELECT * FROM good pro_name='"+name+"'" ;
								ResultSet rsaq=con.createStatement().executeQuery(sql);
								
								String inv;
								int lost=0;
								while(rsaq.next())
								{
									inv=rsaq.getString("inventory");
									lost=Integer.parseInt(inv)-num_t;//更改
									
								}
									Statement stq=con.createStatement(); 
									int l=stq.executeUpdate("update good set inventory="+lost+" where pro_name='"+name+"'" );//更改									
									response.setHeader("refresh","0;url=index.jsp");
									
								
							%>
							<%



									sql = "Delete FROM cart_test ";
									con.createStatement().execute(sql);
									response.setHeader("refresh","0;url=shopping_cart3.jsp");
								

							%>