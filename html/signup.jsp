
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登入</title>
		<link rel="stylesheet" type="text/css" href="../css/ge.css">
	<style type="text/css">@import url("../css/signup.css");</style>

</head>
<body>
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
			<div class="signtxt">
				<a class="menustyle" href="signup.jsp" title="">登入</a></li>
			</div>
			<div class="signtxt">
				<a class="menustyle" href="../logout.jsp" title="">登出</a></li>
			</div>
		</div>
	</header><!-- /header -->

<div class="center">
    <div class="formblock">
       <center><p class="namefont">會員登入</p></center><br>
       <form name="form1" method="post" action="../check.jsp">
       <center><input class="formfont" type="text" name="acc"  placeholder="帳號"></center><br><br>
       <center><input class="formfont" type="password" name="pwd"  placeholder="密碼"></center><br><br>
       <center><button type="submit" class="namebt">登入會員</button></center><br><br>
       <center><button class="namebt"><a href="register.jsp" style="color:white;text-decoration:none;">申請會員</a></button></center><br>
    </form>
    </div>
</div>

	<footer id="asid1"><!--尾頁-->
		<h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
	</footer>
	
</body>
</html>