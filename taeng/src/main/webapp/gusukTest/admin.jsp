<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family: "맑은 고딕";
}

body {
	background-color: #d1d1d1;
	width: 1000px;
}

header {
	width: 100%;
	height: 200px;
}

.sit {
	width: 1000px;
	height: 450px;
	color: white;
}

.box {
	width: 90px;
	height: 90px;
	float: left;
	border: 1px solid white;
	background-color: #cecece;
}

.add {
	width: 100px;
	height: 50px;
	float: left;
	font-size: 20px;
	text-align: center;
	line-height: 50px;
	background-color: #d1b5b5;
	color: white;
	border-radius: 10px;
	cursor: pointer;
}

.mouse {
	width: 100px;
	height: 200px;
	border: 1px solid black;
	font-size: 15px;
	text-align: center;
	line-height: 40px;
	display: none;
}

.menu {
	border-bottom: 1px solid black;
}

.find {
	width: 100px;
	height: 50px;
	float: left;
	font-size: 20px;
	text-align: center;
	line-height: 50px;
	background-color: #d1b5b5;
	color: white;
	border-radius: 10px;
	cursor: pointer;
}

.user {
	width: 500px;
	height: 400px;
	border: 1px solid black;
	position: absolute;
	background-color: white;
	left: 30%;
	display: none;
}

.top {
	width: 500px;
	height: 50px;
}

#name {
	width: 150px;
	height: 50px;
	float: left;
}

.findId {
	width: 50px;
	height: 50px;
	float: left;
	text-align: center;
	line-height: 50px;
	background-color: #d1b5b5;
	color: white;
	cursor: pointer;
}

.close {
	width: 50px;
	height: 50px;
	line-height: 50px;
	cursor: pointer;
	float: right;
}
</style>
</head>

<body>
	<header>
		<div class="add">
			<span id="plus">상품추가</span>
		</div>
		<div class="find">
			<span id="search">회원조회</span>
		</div>
		<c:if test="${sessionScope.login }">
			<div class="find">
				<a href="/taeng/logout"><span id="logout">로그아웃</span></a>
			</div>
		</c:if>
	</header>

	<div class="user">
		<div class="top">
			<input type="text" name="name" id="name" />
			<div class="findId">
				<span class="jh">조회</span>
			</div>
			<div class="close">
				<span id="x">X</span>
			</div>
		</div>
	</div>

	<div class="contents">
		<div class="sit">
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
			<div class="box"></div>
		</div>
	</div>


	<div class="mouse">
		<ul>
			<li class="menu">시간추가</li>
			<li class="menu">비밀번호변경</li>
			<li class="menu">일시정지</li>
			<li class="menu">쪽지보내기</li>
			<li class="menu">컴퓨터종료</li>
		</ul>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		$(document).ready(function() {
			$(".close").click(function() {
				$(".user").hide();
			});
			$(".find").click(function() {
				$(".user").show();
			});
		});
	</script>
</body>
</html>