<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#menu1").click(function() {
			$(".content1").show();
			$(".content2").hide();
			$(".content3").hide();
		});
		$("#menu2").click(function() {
			$(".content1").hide();
			$(".content2").show();
			$(".content3").hide();
		});
		$("#menu3").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").show();
		});
	});
</script>
<style>
@font-face {
	font-family:"INTERPARKGOTHICLIGHT";
	src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}
* {
	box-sizing: border-box;
	font-family:"INTERPARKGOTHICLIGHT";
}
body {
	background-image: url("image/background3.jpg");
	margin: 0;
}
.header {
	background-color: #4D6C9C;
	padding: 1px;
	text-align: center;
	color: #F6F792;
}
.sidemenu {
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #4D6C9C;
	overflow-x: hidden;
	cursor: pointer;
	font-size: 18px;
}
.sidemenu a {
	color: #F6F792;
	padding: 20px;
	text-decoration: none;
	display: block;
}
.sidemenu a:hover {
	background-color: #F6F792;
	color: black;
}
.content1, .content2, .content3 {
	font-size: 20px;
	line-height: 60px;
	margin-top: 20px;
	margin-left: 250px;
	padding-left: 20px;
}
.content2, .content3 {
	display: none;
}
.input {
	height: 30px;
}
.btn {
	width: 110px;
	height: 30px;
	border: none;
	background-color: #DBD4D0;
	color: black;
	font-size: 15px;
	cursor: pointer;
}
.backbtn {
	width: 110px;
	height: 30px;
	border: none;
	background-color: #DBD4D0;
	color: black;
	font-size: 15px;
	cursor: pointer;
}
.backbtn2 {
	width: 110px;
	height: 30px;
	background-color: #4D6C9C;
	color: #F6F792;
	font-size: 15px;
	cursor: pointer;
	border: thick;
}
</style>
</head>
<body>
	<c:if test="${requestScope.errMsg != null}">
		<span style="color: red">${requestScope.errMsg }</span>
	</c:if>
	<div class="header">
		<h1>회원 조회 및 관리 하기</h1>
	</div>
   
   <div class="sidemenu">
   <br><br><br><br>
      <a id="menu1">ID로 회원 조회하기</a>
      <a id="menu2">이름으로 회원 조회하기</a>
      <a id="menu3">회원 정보 수정</a>
      <br><br>
      &nbsp;&nbsp;<button class="backbtn2" onclick="location.href='/taeng/admin/search'">관리자
			페이지 이동</button>

   </div>
   
   <div class="content1">
      <form action="/taeng/selectmemberbyid" method="post">
         ID : <input type="text" name="id" class="input"><br>
         <button class="btn">조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회</button>
      </form>
      <form action="/taeng/admin/search" method="post">
      	<button class="backbtn">관리자 페이지</button>
      </form>
   </div>
   
   <div class="content2">
		<form action="/taeng/selectmemberbyname" method="post">
			 이름 : <input type="text" name="name" class="input" placeholder="입력하지 않으면 전체 회원이 조회됩니다." style="width: 260px;"><br>
			<button class="btn">조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회</button>
		</form>
		<form action="/taeng/admin/search" method="post">
			<button class="backbtn">관리자 페이지</button>
		</form>
	</div>
   
	<div class="content3">
	<form action="/taeng/update_forward.jsp" method="post">
		ID : <input type="text" name="id" class="input"><br> 수정할
		전화번호 : <input type="text" name="phoneNum" class="input"><br>
		수정할 주민번호 앞자리 : <input type="number" name="personNum" class="input"><br>
		수정할 비밀번호 : <input type="password" name="password" class="input"><br>
		수정할 이름 : <input type="text" name="name" class="input"><br>
		수정할 남은 시간 : <input type="number" name="pcTime" class="input"><br>
        <button class="btn">수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정</button>
	</form>
	<form action="/taeng/admin/search" method="post">
		<button class="backbtn">관리자 페이지</button>
	</form>
	</div>
</body>
</html>