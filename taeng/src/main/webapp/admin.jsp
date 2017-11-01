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
		height:02%;
		float:center;
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