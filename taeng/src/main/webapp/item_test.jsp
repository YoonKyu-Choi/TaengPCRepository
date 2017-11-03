<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#menu1").click(function() {
			$(".content1").show();
			$(".content2").hide();
			$(".content3").hide();
			$(".content4").hide();
		});
		$("#menu2").click(function() {
			$(".content1").hide();
			$(".content2").show();
			$(".content3").hide();
			$(".content4").hide();
		});
		$("#menu3").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").show();
			$(".content4").hide();
		});
		$("#menu4").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").hide();
			$(".content4").show();
		});
	});
</script>
<style>
@font-face {
	font-family: "INTERPARKGOTHICLIGHT";
	src: url("/taeng/font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}
* {
	font-family: "INTERPARKGOTHICLIGHT";
}
body {
	background-image: url("/taeng/image/background3.jpg");
	margin: 0;
}
.header {
	background-color: #4D6C9C;
	padding: 1px;
	text-align: center;
	color: #F6F792;
}
.sidenav {
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
.sidenav a {
	color: #F6F792;
	padding: 20px;
	text-decoration: none;
	display: block;
}
.sidenav a:hover {
	background-color: #F6F792;
	color: black;
}
.content1, .content2, .content3, .content4 {
	font-size: 20px;
	line-height: 60px;
	margin-top: 20px;
	margin-left: 250px;
	padding-left: 20px;
}
.content2, .content3, .content4 {
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

.btn1 {
	width:70px;
	height:40px;
	lineheight:40px;
	text-align:center;
	border:none;
	background-color:#4D6C9C;
	color:#F6F792;
	font-size:18px;
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
   width: 170px;
   height: 30px;
   background-color: #4D6C9C;
   color: #F6F792;
   font-size: 20px;
   cursor: pointer;
   border: thick;
}
</style>
</head>
<body>
	<c:if test="${requestScope.errMsg != null}">
		<h1 style="color: red">${requestScope.errMsg }</h1>
	</c:if>

	<div class="header">
		<h1>상품 관리</h1>
	</div>

	<div class="sidenav">
		<br> <br><br><br>
		<a id="menu1" align="center">♧  상품 추가</a>
		<a id="menu2" align="center">♧  상품 목록</a> 
		<a id="menu3" align="center">♧  상품 수정</a> 
		<a id="menu4" align="center">♧ 상품 삭제</a> 
		
		<br><br>&nbsp;&nbsp;&nbsp;<button class="backbtn2" onclick="location.href='/taeng/admin/search'">
		◁ 관리자 페이지</button>

	</div>

	<div class="content1">
		<div>
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;상품&nbsp;추가</h2>
		</div>
		<br>
		<form action="/taeng/item/addItem" method="post" enctype="multipart/form-data">
			이름 : <input type="text" name="itemName"><br> 
			가격 : <input type="number" name="itemPrice"><br> 
			수량 : <input type="number" name="itemStock"><br> 
			사진 : <input type="file" name="itemImage"><br>
			<button class="btn1">등록</button>
		</form>
	</div>

	<div class="content2">
		<div>
			<h2>상품 목록</h2>
		</div>
		<br>
		<form action='<c:url value="/item/selectAllItem"/>' method="post">
			<button class="btn2">상품 목록 보기</button>
		</form>
	</div>

	<div class="content3">
		<h2>상품 수정</h2>
			<form action='<c:url value="/item/updateItem"/>' method="post" enctype="multipart/form-data">
				이름 : <input type="text" name="itemName"><br> 
				가격 : <input type="number" name="itemPrice"><br> 
				수량 : <input type="number" name="itemStock"><br> 
				사진 : <input type="file" name="itemImage"><br>
				<button class="btn1">수정</button>
			</form>
	</div>

	<div class="content4">
		<h2>상품 삭제</h2>
			<form action='<c:url value="/item/deleteItem"/>' method="post">
				삭제할 상품의 이름 : <input type="text" name="itemName"><br>
				<button class="btn1">삭제</button>
			</form>
	</div>
</body>
</html>