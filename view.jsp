<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<head>
<title>�C�X�Ҧ��d��</title>
</head>
<body>
<a href="html/index.jsp">��^����</a><p>
<%
try {
//Step 1: ���J��Ʈw�X�ʵ{�� 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: �إ߳s�u 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("�s�u�إߥ���");
        else {
//Step 3: ��ܸ�Ʈw   
           sql="use finaldemo";
           con.createStatement().execute(sql);
//Step 4: ���� SQL ���O, �Y�n�ާ@�O����, �ݨϥ�executeQuery, �~��Ǧ^ResultSet	
           sql="select * from guestbook"; //��X�@�X���d��
           ResultSet rs=con.createStatement().executeQuery(sql);

           //�������ɧ�, getRow()��, �N�i���D�@���X���O��
           rs.last();
           int total_content=rs.getRow();
           out.println("�@"+total_content+"���d��<p>");
           
           //�C�����5��, ��X�@�X��
           int page_num=(int)Math.ceil((double)total_content/5.0); //�L����i��
		   if (page_num==0) //�L�d���ɱN���ƫ��Эq��1
		       page_num=1;
           out.println("�п�ܭ���");
           //�ϥζW�s���覡, �I�s�ۤv, �ϥ�get�覡�ǻ��Ѽ�(�ܼƦW�٬�page)
           for(int i=1;i<=page_num;i++) //�ϥ�get�ǿ�覡,�إ�1,2,...���W�s��
              {
			   out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html���ť�
           }
           out.println("<p>");

           //Ū��page�ܼ�
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //�L�d���ɱN���ƫ��Эq��1        
           Integer current_page=Integer.valueOf(page_string);//�Npage_string�ন���
           //Integer current_page=Integer.valueOf(request.getParameter("page"));
	       //�p��}�l�O����m   
//Step 5: ��ܵ��G 
           int start_record=(current_page-1)*5;
           //����Ƨ�, ���̷s����ƱƦb�̫e��
           sql="SELECT * FROM guestbook ORDER BY no DESC LIMIT ";//LIMIT�O����Ǧ^����
           sql+=start_record+",5";
           //�W�z�y�k��Ū�p�U:
           // current_page... select * from guestbook order by no desc limit
           //      current_page=1: select * from guestbook order by no desc limit 0, 5 //�q��0�����5��
           //      current_page=2: select * from guestbook order by no desc limit 5, 5 //�q��5�����5��
           //      current_page=3: select * from guestbook order by no desc limit 10, 5//�q��10�����5��

           rs=con.createStatement().executeQuery(sql);
		   
//  �v�����, ����S�����(�̦h�٬O5��)
           while(rs.next())
                {
                 //out.println("�d���D�D:"+rs.getString(4)+"<br>");
				 out.println("�d���D�D:"+rs.getString("subject")+"<br>");
                 //out.println("�X�ȩm�W:"+rs.getString(2)+"<br>");
				 out.println("�X�ȩm�W:"+rs.getString("name")+"<br>");
                 //out.println("E-mail:"+rs.getString(3)+"<br>");
				 out.println("E-mail:"+rs.getString("mail")+"<br>");
                 //out.println("�d�����e:"+rs.getString(5)+"<br>");
				 out.println("�d�����e:"+rs.getString("content")+"<br>");
                 //out.println("�d���ɶ�:"+rs.getString(6)+"<br><hr>");
				 out.println("�d���ɶ�:"+rs.getString("putdate")+"<br><hr>");
          }
          out.println("�@"+page_num+"���A�ثe�b��"+current_page+"��<p>");
          out.println("<form name='f' action='view.jsp' method='get'>����<input type='text' size='3' name='page' value=1>��<input type='submit' value='�e�X'>");              
          out.println("<hr>");

//Step 6: �����s�u
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL���~");
    }
}
catch (ClassNotFoundException err) {
      out.println("class���~");
}
%>
</body>
</html>
