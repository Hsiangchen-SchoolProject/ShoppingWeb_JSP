<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%@ page import = "java.io.*"%>
<%
if(session.getAttribute("userid") != null ){
    sql = "SELECT * FROM member WHERE account='" +session.getAttribute("userid")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);
	String id="";
	String pwd="";
	String name="";
	String mail="";
	String phone="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(paperrs1.next()){
	    name=paperrs1.getString("lastname");
	    id=paperrs1.getString("account");
		pwd=paperrs1.getString("pwd");
		mail=paperrs1.getString("mail");
		phone=paperrs1.getString("phone");
	}

%>

<html>
<head>
<style>
input{
padding:5px 15px; background:#ccc; border:0 none;
cursor:pointer;
-webkit-border-radius: 5px;
border-radius: 5px; 
}

#id_footer div footer ul li a{
	margin-bottom: 0px;
	width: 100%;
	display: block;
	clear: both;
	margin-top: 120px;


	}
#id_footer{
	width:99.45%
}

#id_footer footer{
height: 100px;
padding:2px 0 0px 0;
border-top: 1px solid black;
border-bottom: 1px solid black;


width: 100%;/*讓裡面div物件能垂直置中*/
display: -webkit-flex;
display:         flex;
-webkit-align-items: center;
 		align-items: center;
-webkit-justify-content: center;
  		justify-content: center;

background-color: #DDDDDD;
margin-bottom: 0;
}

#id_footer .f1 div{
	display: inline;
	max-width: 100px;
}

.copyright ul,li{
	text-align: left;
	color: black;
	text-transform: uppercase;
	font-weight: bold;
	letter-spacing: 2px;
	font-family: 'Times New Roman', 'CSong3HK',serif;
	list-style-type:none;
	display: block;
	line-height: 20px; /* 設定文字行距 */

}


.copyright a{
	font-size: 8px;
	text-decoration:none;
	text-transform: none;

	font-weight: normal;
	letter-spacing: 3px;
	color: black; }
	
	.back{
	position: relative;
	left:  364px;
	bottom: 40px;
}
    

</style>
		</style>
		  <script type="text/javascript" src="login/js/login.js"></script>
	<!-- charset -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<!-- prevent scaling -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<title>SELF</title>	

	<!--  including stylesheets-->
    <link rel="stylesheet" type="text/css" href="person/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="person/css/style.css" />
	<!--<link rel="stylesheet" href="frame/footer.css">-->
	<link rel="stylesheet" href="/demo/frame/header.css">
	<!-- google fonts-->
	
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,400italic,700,300|Bitter:700,400' rel='stylesheet' type='text/css' />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="mouse">
<header id=header1>
    <h1 class="logo"><a href="first.jsp">Hipster</a></h1>
    <span></span>
  <ul class="drop-down-menu">
      <li><a href="/demo/index.jsp">Homepage</a></li>
      <li>
            <a href="/demo/prj_showpage.jsp">Merchandises</a>
            <ul>
                <li><a href="/demo/prj_show_a.jsp">Postcard</a>
                </li>
                <li><a href="/demo/prj_show_b.jsp">handbook</a>
                </li>
                <li><a href="/demo/prj_show_c.jsp">tapes</a>
                </li>
                <li><a href="/demo/prj_show_d.jsp">postmark</a>
                </li>
            </ul>
        </li>
      <li><a href="/demo/user.jsp">Member Centre</a>
          <ul>
              <li><a href="/demo/login.jsp">Log In</a></li>
              <li><a href="/demo/order.jsp">Order</a></li>
              <li><a href="/demo/project/project.jsp">Administrator</a></li>
			  <li><a href="/demo/logout.jsp">Log Out</a></li>
          </ul>
      </li>
      <li><a href="/demo/member.jsp">About Us</a>
          <ul>
              <li><a href="/demo/thinking.jsp">Thinking</a></li>
              <li><a href="/demo/contact.jsp">Contact Us</a></li>
          </ul>
      </li>   
      <li><a href="#">Other</a>
          <ul>
              <li><a href="/demo/board_view.jsp">Board</a></li>
              <li><a href="/demo/produce.jsp">Photo</a></li>
          </ul>
      </li> 
      <li><a href="/demo/shopcart.jsp">Cart</a></li>
  </ul>
</header>

<div class="wrapper">

	<header class="name">
		<h1 id="one">PERSONAL &nbsp;&nbsp;&nbsp;INFO.</h1>
	</header>

	<section class="content">

	<ul type="none" class="content-list">

		<li class="list-home"> <!-- home start -->

		<div class="column">

			<div class="g_15 f_right">

				<img class="portrait" src="person/images/photo.jpg" width="" height="" alt="portrait" />

			</div>


			<div class="g_15 f_left">

				<blockquote class="about">
				<div class="tit">
					&bdquo;<% out.print(name); %>&ldquo;<br/>
					
				</div>	<p>@<% out.print(id); %></p>
				</blockquote>

				<p class="about_me">Hi, Welcomt to HIPSTER!<br /><br /> This is your personal information. <br/>Try to write down something about yourself, and if you want to modify anything, you can update your data here.<br/>
				<p>Hope you have a nice day !</p> 
				

		</div>
		
		
		
		<div class="column p_top_none">
		
		
<!--設置表單--><form action="/demo/login/update.jsp" method="POST">
			<div class="g_15 g_620_padding">

				<h3 class="heading" id="three"><span>+</span> TELEPHONE </h3>

				<ul class="employment">
					<li class="company"><span>Private</span></li>
					<li class="work">
	<!--設置phone-->	<input type="text" value="<%=phone%>" class="me" name="phone">
					</li>
					<li class="company"><span>Company</span></li>
					<li class="work">
						<input type="text" value="02-3456-7890" class="me">
					</li>
				</ul>
				
			<h3 class="heading"><span>+</span> NEW PASSWORD </h3>

				<ul class="employment">
					
					<li class="company"><span>Input new one</span></li>
					<li class="work">
	<!--設置密碼-->		<input type="password" value="<%=pwd%>" class="me" name="pwd" id="inputPassword1" onchange="$('#inputPassword2').attr('pattern',$(this).val())">
					</li>

					<li class="company"><span>Input again</span></li>
					<li class="work">
						<input type="password"  value="<%=pwd%>" class="me" id="inputPassword2" >
					</li>
				</ul>

			</div>
			
			
			
			

			<div class="g_15 g_620_padding">

				<h3 class="heading"><span>+</span> E-MAIL </h3>

					<ul class="employment">
					
					<li class="company"><span>Private</span></li>
					<li class="work">
	<!--設置mail-->	<input type="text" value="<%=mail%>" class="me" name="mail">
					</li>

					<li class="company"><span>Company</span></li>
					<li class="work">
						<input type="text" value="aa12345@cycu.edu.tw" class="me">
					</li>
					
					
				</ul>

				<h3 class="heading"><span>+</span> ADDRESS </h3>

				<ul class="employment">
				
					<li class="company"><span>Home</span></li>
					<li class="work">
						<input type="text" value="230 W 101st St, New York" class="me">
					</li>
					<li class="company"><span>Company</span></li>
					<li class="work">
						<input type="text" value="230 W 101st St, New York" class="me">
					</li>

					<li class="company"><span></span></li>
					
					<li><input type="submit" value="Confirm"></li></ul></form>
					<li><form action="/demo/user.jsp" class="back"><input type="submit" value="Membership Center"></form></li>					
<%
}
else{
%>

<script type="text/javascript">
        var msg;
        msg="您尚未登入會員，請登入！";
        alert(msg);

</script>
<meta http-equiv="refresh" content="0; url=/demo/login.jsp"> 


<%
}
%>
				</ul>
			</div>
		</li><!-- home end -->
	</ul>	
	</sectionext-decoration:underline;>

</div>

                
        	<div id="id_footer" class="after-box" ><!-- /id_footer -->
		<footer>
	      	<div .class=f1>
		      	<ul class="copyright">
					<li>&copy; CYCU IM ╳ HIPSTER</li>
					<li>&copy; Design by 中原大學資管系</li>
				</ul>
			</div>
			<div .class=f1>
		      	<ul class="copyright">
					<li>&copy; CONTACT US</li>
					<li><a href="mailto:imhipster29@gmail.com">&nbsp;imhipster29@gmail.com</a></li>
				</ul>
			</div>

			<div .class=f1>
		      	<ul class="copyright">
					<li>&copy; FACEBOOK</li>
					<li>
					<a href="https://www.facebook.com/IM-x-Hipster-1851354545128445/?ref=ts&fref=ts"  target="_blank">&nbsp;www.facebook.com/IM-x-Hipster-1851354545128445/?ref=ts&fref=ts</a></li>


					<li>&copy; INSTAGRAM</li>
					<li>
					<a href="https://www.instagram.com/_im.hipster_/" target="_blank">&nbsp;www.instagram.com/_im.hipster_/</a>
					</li>
				</ul>
			</div>
		</footer> 	
	</div>
	</div>
	</div>
</body>
</html>