<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
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
		float:center;
		margin-left:40px;
	}
	
	.sit {
		width:100%;
		height:550px;
		color:white;
	}
	
	.box {
		width:120px;
		height:120px;
		margin:10px;
		float:left;
		border:1px solid white;
		border-radius:10px;
		background-color:#cecece;
		box-shadow:0px 0px 10px white;
	}

	.bottom {
		width:500px;
		height:50px;
		float:left;
		margin-top:30px;
		margin-left:40px;
	}

	.option {
		color:black;
		float:left;
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
	}

	.clear {
		clear:both;
	}
	

</style>
</head>

<body>
	<div class="contents">
		<div class="sit">
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
			<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
		</div>
	</div>
	<div class="clear"></div>

	<div class="bottom">
		<div class="option">
			<ul>
				<li class="one">화면</li>
				<li class="one">회원</li>
				<li class="one">재고</li>
				<li class="one">매상</li>
			</ul>
		</div>
	</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		$(document).ready(function(){
			
		});
	</script>
</body>
</html>