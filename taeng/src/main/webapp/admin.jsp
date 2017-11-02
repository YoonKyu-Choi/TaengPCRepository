<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script></script>
<style>
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
		font-family:"맑은 고딕";
	}

	body {
		background-color:black;
		width:100%;
	}

	.contents {
		width:100%;
		height:0%;
	}
	
	.sit {
		width:90%;
		height:550px;
		color:white;
		margin-left:120px;
	}
	
	.box {
		width:90px;
		height:90px;
		margin:10px;
		float:left;
		border:1px solid white;
		border-radius:10px;
		background-color:#cecece;
		box-shadow:0px 0px 10px white;
	}
	
	.box:

	.bottom {
		width:700px;
		height:50px;
		float:left;
		margin-top:30px;
	}

	.option {
		color:black;
		float:left;
		margin-left:120px;
	}

	.one {
		width:100px;
		height:50px;
		margin:10px;
		float:left;
		border:1px solid white;
		text-align:center;
		line-height:50px;
		background-color:#DDEC45;
		border-radius:5px;
		font-size:18px;
		cursor:pointer;
	}
	
	.clear {
		clear:both;
	}

</style>
</head>

<body>
	<div class="contents">
		<div class="sit">
			<div class="box" id="box1"></div><div class="box" id="box2"></div><div class="box" id="box3"></div><div class="box" id="box4"></div><div class="box" id="box5"></div>
			<div class="box" id="box6"></div><div class="box" id="box7"></div><div class="box" id="box8"></div><div class="box" id="box9"></div><div class="box" id="box10"></div>
			<div class="box" id="box11"></div><div class="box" id="box12"></div><div class="box" id="box13"></div><div class="box" id="box14"></div><div class="box" id="box15"></div>
			<div class="box" id="box16"></div><div class="box" id="box17"></div><div class="box" id="box18"></div><div class="box" id="box19"></div><div class="box" id="box20"></div>
			<div class="box" id="box21"></div><div class="box" id="box22"></div><div class="box" id="box23"></div><div class="box" id="box24"></div><div class="box" id="box25"></div>
			<div class="box" id="box26"></div><div class="box" id="box27"></div><div class="box" id="box28"></div><div class="box" id="box29"></div><div class="box" id="box30"></div>
			<div class="box" id="box31"></div><div class="box" id="box32"></div><div class="box" id="box33"></div><div class="box" id="box34"></div><div class="box" id="box35"></div>
			<div class="box" id="box36"></div><div class="box" id="box37"></div><div class="box" id="box38"></div><div class="box" id="box39"></div><div class="box" id="box40"></div>
			<div class="box" id="box41"></div><div class="box" id="box42"></div><div class="box" id="box43"></div><div class="box" id="box44"></div><div class="box" id="box45"></div>
			<div class="box" id="box46"></div><div class="box" id="box47"></div><div class="box" id="box48"></div><div class="box" id="box49"></div><div class="box" id="box50"></div>
		</div>
	</div>
	<div class="clear"></div>

	<div class="bottom">
		<div class="option">
			<ul>
				<li class="one">화면</li>
				<li class="one">회원</li>
				<li class="one">재고</li>
				<li class="one"><a href="/taeng/sales/search_sales.jsp">매상</a></li>
			</ul>
		</div>
	</div>

</body>
</html>