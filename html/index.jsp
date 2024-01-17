<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>homework</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js" type="text/javascript"  ></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" type="text/javascript"  ></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css">

		<script>
	  $(document).on('ready', function() { 
      $(".variable").slick({
        dots: true,
        infinite: false,
        speed: 300,
        slidesToShow: 2,
        slidesToScroll: 2,
        autoplay: true,
        autoplaySpeed: 1000, 
        responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
      });
      
    });
     
		  </script>


		<style>
			@import url("../css/ge.css");
		</style>
	</head>
<body>
	<%@include file="../title.jsp"%>

	<div class="content1"><!--中間內容-->
		<section id="sec1" ><!--n卡a卡連結-->

			<div class="banner1">
				
				<div class="bannertxt">請選擇你的品牌</div>
				<div class="bannerbutton">
					<div class="bannerbutton1">
						<div class="buttonstyle">
							<a href="AMD_product.jsp" class="buttontxt ">前往商店</a>
						</div>
					</div>
					<div class="bannerbutton2">
						<div class="buttonstyle">
							<a href="NVIDIA_product.jsp" class="buttontxt">前往商店</a>
						</div>					
					</div>

				</div>
			</div>
		</section>


		<article id="art1"><!--廣告-->
				<div class="adcontain">
					<section class="variable slider">
  					  <div>
     					<div class="adpic">
							<img src="../image/rtx2080ti.jpg" alt="">
						</div>
    					  <div class="adtitle" style="color:green">
							<h1>NVIDIA RTX2080ti</h1>
						</div>
						<div class="adtxt" style="color:black">
							<h4>革新畫面真實感與效能</h4>
						</div>
						<div class="adbutton">
							<a href="NVIDIA_product.jsp" class="adbuttonstyle">前往商店</a>
						</div>
  					  </div>
   					<div>
						<div class="adpic">
							<img src="../image/580.jpg" alt="">
						</div>
						<div class="adtitle"style="color:red">
							<h1>AMD RX580</h1>
						</div>
						<div class="adtxt" style="color:black">
							<h4>CP值最佳首選</h4>
						</div>
						<div class="adbutton">
							<a href="AMD_product.jsp" class="adbuttonstyle">前往商店</a>
						</div>
   					</div>

    				<div>
						<div class="adpic">
							<img src="../image/gtx1080.jpg" alt="">
						</div>
						<div class="adtitle"style="color:green">
							<h1>NVIDIA GTX1080</h1>
						</div>
						<div class="adtxt" style="color:black">
							<h4>優異的散熱能力</h4>
						</div>
						<div class="adbutton">
							<a href="NVIDIA_product.jsp" class="adbuttonstyle">前往商店</a>
						</div>
   					</div>

   				    <div>
						<div class="adpic">
							<img src="../image/vega64.png" alt="">
						</div>
						<div class="adtitle"style="color:red">
							<h1>AMD VEGA64</h1>
						</div>
						<div class="adtxt" style="color:black">
							<h4>卓越的遊戲體驗</h4>
						</div>
						<div class="adbutton">
							<a href="AMD_product.jsp" class="adbuttonstyle">前往商店</a>
						</div>
   					</div>
  </section>
				</div>
		</article>

		<div class="pic"><!--熱門商品內容-->
			<div class=pic1><!--商品內頁-->
				<form name="form1" method="Post" action="product.jsp">
					<input type="hidden" name="no" value="Radeon RX Vega 64">
					<img class="product-photo" src="../image/RXV64-1.png" alt="" ></a>
					<font style="color:black;">顯示晶片：Radeon™ RX Vega 64</font><br>
	   				<font style="color:black;">當前價格：16500(元)</font></center>
	   				<input type="submit" value="前往商店">
   				</form>
			</div>
				
			<div class=pic1><!--商品內頁-->
				<form name="form2" method="Post" action="product.jsp">
				<input type="hidden" name="no" value="NVIDIA GeForce RTX 2080 Ti">
				<img class="product-photo" src="../image/rtx-2080ti-1.jpg" alt="" ></a>
				<font style="color:black;">顯示晶片：NVIDIA ® GeForce ® RTX 2080 Ti</font><br>
   				<font style="color:black;">當前價格：39900(元)</font></center>
   				<input type="submit" value="前往商店">
   			</form>
			</div>
			<div class=pic1><!--商品內頁-->	
				<form name="form3" method="Post" action="product.jsp">
				<input type="hidden" name="no" value="NVIDIA GeForce GTX 1050">
				<img class="product-photo" src="../image/gtx-1050-1.jpg" alt="" ></a>
				<font style="color:black;">顯示晶片：NVIDIA ® GeForce ® GTX 1050 Ti</font><br>
   				<font style="color:black;">當前價格：6290(元)</font></center>
   				<input type="submit" value="前往商店">
   			</form>
			</div>
		</div>
	</div>

	<footer id="asid1"><!--尾頁-->
		<%@include file="../counter.jsp"%>
		<h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
	</footer>

	
</body>
</html>