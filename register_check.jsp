<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import = "java.sql.*, java.util.*"%>

<html>
    <head>
        <title>JSP INSERT</title>
    </head>
    <body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use finaldemo";
           con.createStatement().execute(sql);	
		      request.setCharacterEncoding("UTF-8");
          String acc=new String (request.getParameter("acc"));
					String pwd=new String (request.getParameter("pwd"));
					String firstname=new String(request.getParameter("firstname"));
					String lastname=new String(request.getParameter("lastname"));
					String mail=new String (request.getParameter("mail"));
					int phone=Integer.valueOf(request.getParameter("phone")).intValue();
					String address=new String(request.getParameter("address"));
          String sex=new String(request.getParameter("sex"));
          sql = "SELECT * FROM member WHERE userid='"+acc+"'";
          ResultSet rs = con.createStatement().executeQuery(sql);
          while(rs.next())
          {
%>
              <script language="javascript">
              var msg;
              msg="此帳號已被註冊，請更換帳號";
              alert(msg);
              </script>

              <meta http-equiv="refresh" content="0; url=html/register.jsp"> 
<%        
          }
//Step 4: 執行 SQL 指令	
					sql="insert member (userid, userpw, lastname, firstname, mail, address, phone, sex) ";
					sql+="value ('" + acc + "', ";
					sql+="'"+pwd+"', ";
					sql+="'"+lastname+"', ";
          sql+="'"+firstname+"', ";
					sql+="'"+mail+"',";
					sql+="'"+address+"',";
					sql+="'"+phone+"',";
          sql+="'"+sex+"')"; 					
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
%>

<script language="javascript">

			var msg;
			msg="註冊成功！請重新登入";
			alert(msg);
			
			
</script>

<meta http-equiv="refresh" content="0; url=html/signup.html"> 

<%
		  //Step 5: 顯示結果 
		  // response.sendRedirect("check.jsp");
       }
	 } 
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>

    </body>
</html>