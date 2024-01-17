<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<html>
<head>
<title>add</title>
</head>
<body>

<%
           String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
           String new_mail=request.getParameter("mail");
           String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"utf-8");
           String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8");
           java.util.Date new_date=new java.util.Date(System.currentTimeMillis());

           sql="insert into guestbook (name, mail, subject, content, putdate) ";
           sql+="value ('" + new_name + "', ";
           sql+="'"+new_mail+"', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"', ";   
           sql+="'"+new_date+"')";
           con.createStatement().execute(sql);
           con.close();
           response.sendRedirect("view.jsp?page=1");
%>
</body>
</html>
