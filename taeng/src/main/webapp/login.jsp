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
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
		font-family:"맑은 고딕";
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
		padding-top:90px;
	}
	
	input {
		width:300px;
		height:50px;
		background-color:#ededed;
		border:none;
		font-size:20px;
	}
	
	#btn {
		width:300px;
		height:50px;
		border:none;
		background-color:green;
		color:white;
		font-size:20px;
		cursor:pointer;
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

</style>
</head>
<body>
	<div class="my">
		<div class="information">
			NAME : &nbsp;<input type="text" name="name" id="name" class="up" placeholder="NAME"/><br>
			I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D : &nbsp;<input type="text" name="id" id="id" class="up" placeholder="ID"/><br>
			P&nbsp;&nbsp;&nbsp;&nbsp;W : &nbsp;<input type="password" name="pw" id="pw" class="up" placeholder="PASSWORD"/><br>
			EMAIL : &nbsp;<input type="email" name="email" id="email" class="up" placeholder="EMAIL"/><br>
			전화번호 : <input type="text" name="phoneNum" id="phoneNum" class="up" placeholder="PHONE"><br>
			주민번호 : <input type="number" name="personNum" id="personNum" class="up" placeholder="PERSONNUM"><br>
			<button id="done">완료</button>
		</div>
	</div>
		

	<div class="mainbox">
		<div class="box">
			<form action="/taeng/login" method="post">
				<input type="text" id="id" name="id" placeholder="ID"/><br>
				<input type="password" id="pw" name="pw" placeholder="PassWord"/><br>
				<button id="btn">LOGIN</button><br>
			</form>
			<span id="sign">Sign Up</span>
		</div>
	</div>
</body>
</html>