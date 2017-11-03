<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(document).ready(function(){
   $("#sign").click(function(){
      $(".my").show();   
   });
   
   $("#done").click(function(){
      $(".my").hide();
   });
});
</script>
<style type="text/css">
	@font-face {
	font-family:"DXWNDS-KSCPC-EUC-H";
	src:url("font/DXWNDS-KSCPC-EUC-H.TTF") format("truetype");
	}
	
   * {
      margin:0 auto;
      padding:0;
      list-style:none;
      text-decoration:none;
   }
   
   body{
      background-color:#2cb74a;
   }
   
   a {
      color:inherit;
   }
   
   .mainbox {
      width:500px;
      height:400px;
      margin-top:150px;
      background-color:white;
      box-shadow:0px 0px 10px black;
      position:relative;
   }
   
   .box {
      text-align:center;
      width:300px;
      height:200px;
      line-height:60px;
      padding-top:40px;
   }
   
   input {
      width:300px;
      height:50px;
      background-color:#ededed;
      border:none;
      font-size:20px;
   }
   
   #btn1 {
      width:200px;
      height:50px;
      border:none;
      background-color:green;
      color:white;
      font-size:20px;
      cursor:pointer;
      border-right:2px solid white;
   }
   
   #btn2 {
      width:90px;
      height:50px;
      border:none;
      background-color:green;
      color:white;
      font-size:20px;
      cursor:pointer;
      margin-left:10px;
   }

   .my {
      width:600px;
      height:400px;
      border:1px solid black;
      position:absolute;
      background-color:white;
      z-index:1;
      margin-left:400px;
      display:none;
   }
   
   #sign {
      cursor:pointer;
   }
   
   .information {
      width:400px;
      height:100%;
      margin-top:10px;
   }

   .information > #done {
      font-size:20px;
      text-align:center;
      cursor:pointer;
   }
	.title{
		width:400px;
		height:20px;
		padding-top:50px;
		font-size:30px;
		text-align:center;
		font-family:"DXWNDS-KSCPC-EUC-H";
	}
   .error {
   	  text-align:center;
   	  width:200px;
   	  height:40px;
   	  line-height:40px;
   	  background-color:white;
   }
</style>
</head>
<body>
	<c:if test="${requestScope.errMsg != null}">
		<div class="error">
		 	 <span style="color:red">${requestScope.errMsg }</span><br>
		</div>
	</c:if>
<form action="/taeng/add_forward.jsp" method="post">
   <div class="my">
      <div class="information">
         NAME : &nbsp;<input type="text" name="name" id="name" class="up" placeholder="NAME" required/><br>
         I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D : &nbsp;<input type="text" name="id" id="id" class="up" placeholder="ID" required/><br>
         P&nbsp;&nbsp;&nbsp;&nbsp;W : &nbsp;<input type="password" name="password" id="password" class="up" placeholder="PASSWORD" required/><br>
                전화번호 : <input type="text" name="phoneNum" id="phoneNum" class="up" placeholder="PHONE"/><br>
       	 주민번호 : <input type="number" name="personNum" id="personNum" class="up" placeholder="PERSONNUM" required/><br>
         <input type="hidden" name="pcTime" value="0">
         <input type="submit" value="등록">
      </div>
   </div>
</form>
   <div class="mainbox">
   	<div class="title">태은이네 PC방</div>
      <div class="box">
         <form action="/taeng/login" method="post">
            <input type="text" id="id" name="id" placeholder="ID"/><br>
            <input type="password" id="pw" name="pw" placeholder="PassWord"/><br>
            <button id="btn1">LOGIN</button><button id="btn2" type="button" onclick="location.href='/taeng/login_payment.jsp'">결제</button>
         </form>
         
         <span id="sign">Sign Up</span>
      </div>
   </div>
</body>
</html>