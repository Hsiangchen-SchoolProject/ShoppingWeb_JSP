
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        Connection con=DriverManager.getConnection(url,"root","1234");

//Step 3: 選擇資料庫   
           String sql="use finaldemo";
           con.createStatement().execute(sql);	
%>