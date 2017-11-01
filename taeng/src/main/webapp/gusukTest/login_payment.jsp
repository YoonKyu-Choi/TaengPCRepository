<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family: "맑은 고딕";
}

.body {
	background-color: grey;
}

.timelist {
	width: 500px;
	height: 500px;
	text-align: center;
	background-color: black;
	margin: 0 auto;
	font-color: white;
}

.one {
	height: 100px;
	background-color: red;
}

.two {
	height: 100px;
	background-color: tomato;
}

.three {
	height: 100px;
	background-color: orange;
}

.four {
	height: 100px;
	background-color: MediumSeaGreen;
}

.five {
	height: 100px;
	background-color: DodgerBlue;
}

button{
	width:50px;
	height:50px;
	font-size:10px;
	align : center;
}
</style>

</head>
<body>
	<form action="/taeng/login/payment" method="post">
		<div class="idinput">
			id : <input type="text" name="id">
		</div>
		
		<div class="timelist">
			<div class="one">
				<span>1시간 : 1000원</span><input type="radio" name="hour" value="1">
			</div>
			<div class="two">
				<span>2시간 : 2000원</span> <input type="radio" name="hour" value="2">
			</div>
			<div class="three">
				<span>3시간 : 3000원</span> <input type="radio" name="hour" value="3">
			</div>
			<div class="four">
				<span>4시간 : 4000원</span> <input type="radio" name="hour" value="4">
			</div>
			<div class="five">
				<span>5시간 : 5000원</span> <input type="radio" name="hour" value="5">
			</div>
		</div>
		
		
		<button>결제</button>
	</form>
	<c:if test="${requestScope.errMsg != null}">
		<span style="color:red">${requestScope.errMsg }</span>
	</c:if>
</body>
</html>