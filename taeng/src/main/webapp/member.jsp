<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".add").click(function(){
		$(".buy").fadeIn();
	});
	$(".close").click(function(){
		$(".buy").fadeOut();
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
	
	.clear {
		clear:both;
	}
	
	body {
		background-image:url("image/image.png");
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
		border-radius:5px;
		background-color:black;
		color:white;
		cursor:pointer;
	}
	
	#thing > img {
		width:30px;
		height:30px;
		float:left;
		margin-top:10px;
		margin-left:10px;
	}
	
	.log {
		width:200px;
		height:400px;
		float:right;
		font-size:18px;
		line-height:60px;
		border:3px solid black;
		border-radius:5px;
		color:white;
		background-color:#858585;
	}
	
	button {
		font-size:16px;
		margin-left:15px;
		border-radius:5px;
		width:80px;
		height:30px;
	}
	
	.contents {
		width:650px;
		height:150px;
		margin-top:80px;
	}
	
	.image {
		width:620px;
		height:100px;
		float:left;
	}
	
	.icon {
		width:100px;
		height:100px;
		border-radius:100px;
		float:left;
		border:1px solid black;
		position:center;
		margin:10px;
		background-color:white;
		box-shadow:0px 20px 15px black;
	}
	
	.icon img {
		width:70px;
		height:70px;
		margin-top:15px;
		margin-left:15px;
	}
	
	
	.eat {
		width:700px;
		height:500px;
		border:1px solid black;
		background-color:white;
		position:absolute;
		left:23%;
		top:15%;
	}
	
	.close {
		float:right;
		margin-right:5px;
		cursor:pointer;
	}
	
</style>
</head>

<body>
	<div class="buy">
		<div class="eat">
			<span class="close">X</span>
			<>
		</div>
	</div>
	<header>
		<div class="top">
			<div class="add">
				<span id="thing"><img src="image/eat.png">상품구매</span>
			</div>
			<div class="log">
				<ul>
					<li>자리번호 : </li>
					<li>이름 : </li>
					<li>남은시간 : </li>
				</ul>
				<div class="btn">
					<button id="latter">쪽지</button><br>
					<button id="move">자리이동</button><br>
					<button id="logout">로그아웃</button>
				</div>
			</div>
		</div>
	</header>
	<div class="clear"></div>
	
	
	
	<div class="contents">
		<div class="image">
			<div class="icon" id="pc">
				<img src="image/pc.png">
			</div>
			<div class="icon" id="cd">
				<img src="image/cd.png">
			</div>
			<div class="icon" id="internet">
				<img src="image/internet.png">
			</div>
			<div class="icon" id="message">
				<img src="image/message.png">
			</div>
			<div class="icon" id="utility">
				<img src="image/utility.png">
			</div>
		</div>
	</div>
</body>
</html>