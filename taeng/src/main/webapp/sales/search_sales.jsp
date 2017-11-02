<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#menu1").click(function() {
			$(".content1").show();
			$(".content2").hide();
			$(".content3").hide();
			$(".content4").hide();
			$(".content5").hide();
		});
		$("#menu2").click(function() {
			$(".content1").hide();
			$(".content2").show();
			$(".content3").hide();
			$(".content4").hide();
			$(".content5").hide();
		});
		$("#menu3").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").show();
			$(".content4").hide();
			$(".content5").hide();
		});
		$("#menu4").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").hide();
			$(".content4").show();
			$(".content5").hide();
		});
		$("#menu5").click(function() {
			$(".content1").hide();
			$(".content2").hide();
			$(".content3").hide();
			$(".content4").hide();
			$(".content5").show();
		});
	});
</script>
<style type="text/css">
* {
	box-sizing: border-box;
	font-family: "맑은 고딕";
}

a:link {
	color: red;
}

a:visited {
	color: green;
}

a:hover {
	color: hotpink;
}

a:active {
	color: blue;
}

body {
	background-color: #F6F792;
	margin: 0;
}

/* Style the header */
.header {
	background-color: #4e63ad;
	padding: 20px;
	text-align: center;
	color: #F6F792;
}

/* Style the side navigation */
.sidenav {
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #4e63ad;
	overflow-x: hidden;
	cursor: pointer;
	font-size: 18px;
}

/* Side navigation links */
.sidenav a {
	color: #F6F792;
	padding: 20px;
	text-decoration: none;
	display: block;
}

/* Change color on hover */
.sidenav a:hover {
	background-color: #F6F792;
	color: black;
}

/* Style the content */
.content1, .content2, .content3, .content4, .content5 {
	font-size: 20px;
	line-height: 60px;
	margin-top: 20px;
	margin-left: 250px;
	padding-left: 20px;
}

.content2, .content3, .content4, .content5 {
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



</style>
</head>
<body>
	<div class="header">
		<h1>조회하기</h1>
	</div>

	<div class="sidenav">
	<br><br><br><br><br>
		<a id="menu1">날짜로 조회</a>
		 <a id="menu2">전체 매출 목록 조회</a> 
		 <a id="menu3">전체매출 조회</a> 
		 <a id="menu4">PC요금 조회</a> 
		 <a id="menu5">상품요금 조회 </a>
	</div>
	<div class="content1">
		<div><br>
			<span>날짜로 조회하기</span>
		</div>
		<br>
		<form action="/taeng/sales/salesByDate" method="post">
			<input type="date" class="day" name="sDay"> ~ <input
				type="date" name="eDay" class="day">
			<button>조회</button>
		</form>
	</div>
	<div class="content2">
		<form action="/taeng/salesList" method="post">
			전체 매출 목록조회
			<button>조회</button>
		</form>
	</div>
	<div class="content3">
		<form action="/taeng/sales/allSales" method="post">
			<input type="hidden" name="select" value="all">
			<button>전체매출조회</button>
		</form>
	</div>
	<div class="content4">
		<form action="/taeng/sales/allSales" method="post">
			<input type="hidden" name="select" value="pc">
			<button>PC요금조회</button>
		</form>
	</div>
	<div class="content5">
		<form action="/taeng/sales/allSales" method="post">
			<input type="hidden" name="select" value="item">
			<button>상품요금조회</button>
		</form>
	</div>
</body>
</html>