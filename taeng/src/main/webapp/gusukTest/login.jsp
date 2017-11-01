<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
</style>
</head>
<body>
	<div class="mainbox">
		<div class="box">
			<form action="/taeng/login" method="post">
			<input type="text" id="id" name="id" placeholder="ID"/><br>
			<input type="password" id="pw" name="pw" placeholder="PassWord"/><br>
			<button id="btn">LOGIN</button><br>
			</form>
			<a href="/taeng/insert_member.jsp">Sign Up</a>
		</div>
	</div>
</body>
</html>