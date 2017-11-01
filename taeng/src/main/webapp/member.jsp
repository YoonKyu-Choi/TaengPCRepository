<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".add").click(function(){
		$(".buy").show();
	});
});
</script>
<style>
	
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
	}
	
	header {
		width:100%;
		height:0%;
	}
	
	.top {
		width:800px;
		height:300px;
		float:right;
	}
	
	.add {
		width:150px;
		height:50px;
		text-align:center;
		float:left;
		border:1px solid black;
		line-height:50px;
		font-size:20px;
	}
	
	.log {
		width:200px;
		height:300px;
		float:right;
		font-size:18px;
		line-height:60px;
		border:3px solid black;
		border-radius:10px;
	}
	
	button {
		font-size:18px;
		margin-left:15px;
	}
	
	#thing {
		cursor:pointer;
	}
	
</style>
</head>

<body>
	<header>
		<div class="top">
			<div class="add">
				<span id="thing">상품구매</span>
			</div>
			<div class="log">
				<ul>
					<li>자리번호 : </li>
					<li>이름 : </li>
					<li>남은시간 : </li>
					<li>쪽지</li>
				</ul>
				<div class="btn">
					<button id="move">자리이동</button>
					<button id="logout">로그아웃</button>
				</div>
			</div>
		</div>
	</header>
	<div class="contents">
		<div class="buy">
			
		</div>
	</div>
</body>
</html>