<%@page import="com.kosta.taeng.vo.PC"%>
<%@page import="com.kosta.taeng.vo.Member"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	var time = ${requestScope.map.member.pcTime};
	function pcTimer() {
		if (time == 0) {
			document.getElementById("form").submit();
			return;
		}
		time -= 1;
		document.getElementById("timeid").innerHTML = "<b>" + time + "</b>";
		document.getElementById("pcTime").value = time;
		document.getElementById("pcTime2").value = time;
		document.getElementById("pcTime3").value = time;
	}
	$(document).ready(function() {
		var pcTime = setInterval(pcTimer, 60000);
	});
	
	var openItemOrder;
	
	function itemOrderWin(){
		window.name="memberForm";
		openItemOrder = window.open("/taeng/item/itemLists","itemOrderForm","width=1200, height=700, resizable = no, scrollbars = no");
	}
</script>
<style>
	@font-face {
		font-family:"INTERPARKGOTHICLIGHT";
		src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
	}

	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
		font-family:"INTERPARKGOTHICLIGHT";
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
		width:850px;
		height:300px;
		float:right;
	}
.log {
   width: 200px;
   height: 400px;
   float: right;
   font-size: 18px;
   line-height: 60px;
   border-radius: 5px;
   box-shadow:0px 0px 10px #100e0e;
   color: white;
   background-color:#100e0e;
}

.log > ul > li {
	width:150px;
	float:left;
	margin-left:10px;
}

button {
   font-size: 16px;
   margin-left: 60px;
   border-radius: 5px;
   width: 80px;
   height: 30px;
   background-color:white;
}

#thing {
	width: 150px;
	height: 50px;
	text-align: center;
	float: left;
	font-size: 20px;
	border-radius: 5px;
	background-color: black;
	color: white;
	cursor: pointer;
	margin-left:50px;
}

.contents {
   width: 650px;
   height: 150px;
   margin-top: 80px;
}

.image {
   width: 620px;
   height: 100px;
   float: left;
}

.icon {
   width: 100px;
   height: 100px;
   border-radius: 100px;
   float: left;
   border: 1px solid black;
   position: center;
   margin: 10px;
   background-color: white;
   box-shadow: 0px 20px 15px black;
}

.icon img {
   width: 70px;
   height: 70px;
   margin-top: 15px;
   margin-left: 15px;
}

.buy {
   display: none;
}

.eat {
   width: 700px;
   height: 500px;
   border: 1px solid black;
   background-color: white;
   position: absolute;
   left: 23%;
   top: 15%;
}

.close {
   float: right;
   margin-right: 5px;
   cursor: pointer;
}

#form {
   	width:50px;
   	height:50px;
   	float:right;
}
</style>
</head>

<body>
	<div class="buy">
		<div class="eat">
			<span class="close">X</span>
		</div>
	</div>
	<header>
		<div class="top">
			<div class="add">
				<!-- <span id="thing"><img src="image/eat.png">상품구매</span> -->
				<button id="thing" onclick="itemOrderWin();">상&nbsp;품&nbsp;&nbsp;주&nbsp;문</button>
			</div>
			<div class="log">
				<ul>
					<li>자리번호 : ${requestScope.map.seatnum}</li>
					<li>이름 : ${requestScope.map.member.name }</li>
					<li>남은시간 :
						<form id="form" method="post" action="/taeng/pctimer">
							<span id="timeid">${requestScope.map.member.pcTime}</span> 
							<input type="hidden" id="pcTime" name="pcTime" value="${requestScope.map.member.pcTime}">
							<input type="hidden" name="id" value="${requestScope.map.member.id }">
						</form>
					</li>
				</ul>
				<div class="btn">
					<button id="letter">쪽지</button><br>
					<form method="post" action="/taeng/move">
					<input type="hidden" id="pcTime2" name="pcTime" value="${requestScope.map.member.pcTime}">
					<input type="hidden" name="id" value="${requestScope.map.member.id }">
					<input type="hidden" name="seatNumber" value="${requestScope.map.seatnum }">
					<button id="move">자리이동</button><br>
					</form>
					<form method="post" action="/taeng/logout">
					<input type="hidden" id="pcTime3" name="pcTime" value="${requestScope.map.member.pcTime}">
					<input type="hidden" name="id" value="${requestScope.map.member.id }">
					<input type="hidden" name="seatNumber" value="${requestScope.map.seatnum }">
					<button id="logout" onclick='window.close()'>종료</button>
					</form>
				</div>
			</div>
		</div>
	</header>
	<div class="clear"></div>

	<div class="contents">
		<div class="image">
			<div class="icon" id="pc">
				<img src="${pageContext.request.contextPath}/image/pc.png">
			</div>
			<div class="icon" id="cd">
				<img src="${pageContext.request.contextPath}/image/cd.png">
			</div>
			<div class="icon" id="internet">
				<img src="${pageContext.request.contextPath}/image/internet.png">
			</div>
			<div class="icon" id="message">
				<img src="${pageContext.request.contextPath}/image/message.png">
			</div>
			<div class="icon" id="utility">
				<img src="${pageContext.request.contextPath}/image/utility.png">
			</div>
		</div>
	</div>
</body>
</html>