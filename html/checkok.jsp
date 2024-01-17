<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("userid") != null ||session.getAttribute("mgid") != null  ){
%>

<%
								sql="SELECT * FROM cart_test WHERE userid like'"+session.getAttribute("userid")+"' " ;
								ResultSet rsa=con.createStatement().executeQuery(sql);

								sql="SELECT * FROM member WHERE userid like'"+session.getAttribute("userid")+"' " ;
								ResultSet rsal=con.createStatement().executeQuery(sql);

								String name="";
								String id="";
								String atotal="";
								String num=request.getParameter("buy_total");
								String price=request.getParameter("price_total");
								String delivery=request.getParameter("home");
							    String one_num=request.getParameter("one_num");
							    String one_total=request.getParameter("one_total");
							    String one_name=request.getParameter("one_name");



							    String phone="";
							    String maill="";
							    String address="";
							    String aamount="";

								int total_t=0;
								int num_t=0;

								while(rsa.next())
								{
									name=rsa.getString("name");
									total_t=Integer.parseInt(price);
									num_t=Integer.parseInt(num);
									id=rsa.getString("userid");
									atotal=rsa.getString("total");
									aamount=rsa.getString("num");

									java.util.Date new_date=new java.util.Date(System.currentTimeMillis());


									Statement staz=con.createStatement(); 
									int oso=staz.executeUpdate("insert into detail(name, price, amount, userid, putdate) values('"+name+"', '"+atotal+"', '"+aamount+"','"+id+"','"+new_date+"')");

								}

								


								while(rsal.next())
								{
									phone=rsal.getString("phone");
									address=rsal.getString("address");
									maill=rsal.getString("mail");
								}

							
								java.util.Date new_date1=new java.util.Date(System.currentTimeMillis());
								Statement st=con.createStatement(); 
									int i=st.executeUpdate("insert into prj_order(price, delivery, phone, mail, address, name, putdate) values('"+total_t+"', '"+delivery+"', '"+phone+"', '"+maill+"', '"+address+"',  '"+id+"','"+new_date1+"')");
%>
<%

								sql="SELECT * FROM member "; 
								ResultSet rsaa=con.createStatement().executeQuery(sql);

								sql="SELECT * FROM prj_order where name='"+session.getAttribute("userid")+"' "; 
								ResultSet rsaan=con.createStatement().executeQuery(sql);


								String order_no="";
								String buyer="";
								String mobile="";
								String add="";
								String mail="";
								while(rsaa.next())
								{
									mobile=rsaa.getString("phone");
									add=rsaa.getString("address");
									mail=rsaa.getString("mail");
								}
									
								while(rsaan.next())
								{
									order_no=rsaan.getString("no");
								}

									java.util.Date new_date2=new java.util.Date(System.currentTimeMillis());
									Statement sta=con.createStatement(); 
									int oo=sta.executeUpdate("update detail set order_no="+order_no+" where userid='"+id+"' and putdate='"+new_date2+"'");

							%>
							
							<%
								sql="SELECT * FROM good where pro_name='"+name+"'" ;
								ResultSet rsaq=con.createStatement().executeQuery(sql);							
								String inv;
								int lost=0;
								while(rsaq.next())
								{
									inv=rsaq.getString("inventory");
									lost=Integer.parseInt(inv)-num_t;
									if(lost<=0)
									{
										lost=0;
									}
									
								}
									Statement stq=con.createStatement(); 
									int l=stq.executeUpdate("update good set inventory="+lost+" where pro_name='"+name+"'" );				
							%>

							<%
								
									
							%>
							
							<%
									sql = "Delete FROM cart_test ";
									con.createStatement().execute(sql);
									response.setHeader("refresh","0;url=shopping_cart3.jsp");
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
<meta http-equiv="refresh" content="0; url=html/signup.html"> 

<%
}
%>				

