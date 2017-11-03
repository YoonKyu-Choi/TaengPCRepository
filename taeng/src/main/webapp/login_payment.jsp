<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<style>
@font-face {
	font-family:"INTERPARKGOTHICLIGHT";
	src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family:"INTERPARKGOTHICLIGHT";
}
body {
	background-color:#100e0e;
}
form {
	width:1000px;
	height:250px;
	margin-top:150px;
	background-color:white;
}
.timelist {
	width: 1000px;
	height: 350px;
	text-align: center;
	margin: 0 auto;
	font-color:#100e0e;
	margin-top:50px;
}
.one {
	width:180px;
	height:60px;
	float:left;
	line-height:60px;
	background-color:#a499ca;
	color:#100e0e;
	margin-left:15px;
	font-size:20px;
	border-radius: 5px;
   	box-shadow:0px 0px 10px #a499ca;
}
button{
	width:100px;
	height:50px;
	font-size:20px;
	text-align : center;
	line-height:50px;
	margin-top: 20px;
	background-color:#a499ca;
	border-radius:10px;
	color:#100e0e;
}
.idinput {
	width:600px;
	height:45px;
	line-height:100px;
	font-size:30px;
	margin-left:340px;
}
#id {
	width:200px;
	height:42px;
	font-size:20px;
}
.clear {
	clear:both;
}
</style>
</head>
<body>
	<form action="/taeng/login/payment" method="post">
		<div class="input">
			<div class="idinput">
				ID : <input id="id" type="text" name="id">
			</div>
			
			<div class="timelist">
				<ul>
					<li class="one"><span>1시간 : 1,000원</span> <input type="radio" name="hour" value="1"></li>
					<li class="one"><span>2시간 : 2,000원</span> <input type="radio" name="hour" value="2"></li>
					<li class="one"><span>3시간 : 3,000원</span> <input type="radio" name="hour" value="3"></li>
					<li class="one"><span>4시간 : 4,000원</span> <input type="radio" name="hour" value="4"></li>
					<li class="one"><span>5시간 : 5,000원</span> <input type="radio" name="hour" value="5"></li>
				</ul>
				<button>결제</button>
			</div>
		</div>
	</form>
	<c:if test="${requestScope.errMsg != null}">
		<span style="color:red">${requestScope.errMsg }</span>
	</c:if>
</body>
</html>