<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<html>
<head><title>counter</title></head>
<body>
<%
application.setAttribute("counter","1000");
out.print("初始值設定為1000");
%>
</body>
</html>