<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<table align="center">
  <tr>
    <td>
      <%
      String counter=(String) application.getAttribute("counter");
      int countInt = Integer.parseInt(counter);
      if(session.isNew())
      countInt++;
      String countStr = String.valueOf(countInt);
      application.setAttribute("counter",countStr);
      out.print("累積訪客人數:"+countStr);
      %> 
    </td>
  </tr>
</table> 