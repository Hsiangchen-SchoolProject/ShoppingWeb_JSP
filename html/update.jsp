<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>註冊</title>
	<style type="text/css">@import url("../css/register.css");</style>
	 <script
	  src="https://code.jquery.com/jquery-3.3.1.js"
	  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	  crossorigin="anonymous"></script>

</head>

<body>
<%@include file="../title.jsp"%>

	<article>

		<div class="create_word"><h1>更改你的帳號</h1></div>
		
		<div class=formblock>
 
        <form name="form1" method="post" action="../update2.jsp" style="margin: 20px auto;text-align: center;">
       		<div class="leftside">
		       <input class="formfont" type="password" name="pwd" width="50" height="20" placeholder="密碼"><br>
		       <input class="formfont" type="text" name="address" width="50" height="20" placeholder="住址"><br>
		       <input class="formfont" type="text" name="firstname" width="50" height="20" placeholder="姓"><br>
		       <input class="formfont" type="text" name="phone" width="50" height="20" placeholder="電話"><br>
		    </div>
			<div class="rightside">
				 <input class="formfont" type="text" name="sex" width="50" height="20" placeholder="性別"><br>
		       <input class="formfont" type="text" id="mailtxt" name="mail" width="50" height="20" placeholder="電子信箱"><br>
		       <input class="formfont" type="text" name="lastname" width="50" height="20" placeholder="名"><br>
		       <div style="width:300px; height:54px;"></div><br>

		     </div>

		     <div style="clear: both;"></div>
	       <button type="submit" class="namebt">修改資料</button>
	    </form>
    </div>

    <script>
$(document).ready(function(){ 

//E-MAIL格式檢查 

$("body").on("change", "#mailtxt", function (){

$Emailchecking=IsEmail($("#mailtxt").val());


if($Emailchecking==false){

alert("請填寫正確的E-MAIL格式");

$("#mailtxt").blur(); //離開焦點

}

})

function IsEmail(mailtxt)  //檢查格式涵式
{ 

var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

  if(!regex.test(mailtxt)) 
  {
   return false;
  }
  else
   {
   return true;
   }
  }

 });

$(document).ready(function(){ //送出表單檢查
 	
    $(".namebt").click(function(){
        if($("#mailtxt").val()=="")
        {
            alert("信箱有錯誤");
            eval("document.form1['#mailtxt'].focus()");       
        }
        else if ($Emailchecking==false)
        {
            alert("信箱有錯誤");
            eval("document.form1['#mailtxt'].focus()");       
        }

        else{
            document.form1.submit();
        }
    })
 })
</script>
		


	<footer id="asid1"><!--尾頁-->
		<h3 style="text-align: center;font-size: 20px;">版權所有 COPYRIGHT© 2018 顯卡屋. ALL RIGHT RESERVED.</h3>
	</footer>
</body>
</html>