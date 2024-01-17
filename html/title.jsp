<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

	<header id="header" class=""><!--標頭-->
		<div class="menubox"><!--選單-->
			<div class="menupic"><!--logo圖片-->
				<a href="index.jsp"><img class="logopic" src="../image/logopic.jpg"  alt=""></a>
			</div>
			<div class="menutxt"><!--menutxt為選單文字-->
				<a class="menustyle" href="form.jsp" title="">顯卡跑分</a></li>
			</div>
			<div class="menutxt">
				<a class="menustyle" href="AMD_product.jsp" title="">AMD</a></li>
			</div>
			<div class="menutxt">
				<a class="menustyle" href="NVIDIA_product.jsp" title="">NVIDIA</a></li>
			</div>
			<div class="menutxt">
				<a class="menustyle" href="self_introduction.jsp" title="">團隊介紹</a></li>
			</div>
			<div class="menutxt">
				<a class="menustyle" href="user.jsp" title="">會員專區</a></li>
			</div>
			<div class="menutxt">
				<a class="menustyle" href="shopping_cart.jsp" title="">購物車</a></li>
			</div>
			<div class="menutxt"><!--menutxt為選單文字-->
				<a class="menustyle" href="contact.jsp" title="">聯絡我們</a></li>
			</div>

			<%
				if(session.getAttribute("userid") != null){
			%>
			<div class="signtxt">
				<a class="menustyle" href="../logout.jsp" title="">登出</a></li>
			</div>

			<%
				}else if(session.getAttribute("mgid") != null){
			%>
			<div class="signtxt">
				<a class="menustyle" href="../manager_page.jsp" title="">進入管理者頁面</a></li>
				<a class="menustyle" href="../logout.jsp" title="">登出</a></li>
			</div>
			<%

				}else{
			%>
			<div class="signtxt">
				<a class="menustyle" href="html/signup.jsp" title="">登入</a></li>
			</div>
			<%}%>
		</div>
	</header><!-- /header -->