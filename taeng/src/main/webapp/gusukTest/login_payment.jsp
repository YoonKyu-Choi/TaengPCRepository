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
	
}

form {
	width:1000px;
	height:300px;
	margin-top:20px;
}

.timelist {
	width: 1000px;
	height: 200px;
	text-align: center;
	margin: 0 auto;
	font-color: white;
	margin-top:30px;
}

.one {
	width:198px;
	height: 50px;
	float:left;
	line-height:50px;
	border:1px solid black;
}

button{
	width:100px;
	height:70px;
	font-size:15px;
	text-align : center;
	line-height:70px;
	margin-top: 20px;
}
</style>

</head>
<body>
	<form action="/taeng/login/payment" method="post">
		<div class="idinput">
			id : <input type="text" name="id">
		</div>
		
		<div class="timelist">
			<ul>
				<li class="one"><span>1시간 : 1000원</span> <input type="radio" name="hour" value="1"></li>
				<li class="one"><span>2시간 : 2000원</span> <input type="radio" name="hour" value="2"></li>
				<li class="one"><span>3시간 : 3000원</span> <input type="radio" name="hour" value="3"></li>
				<li class="one"><span>4시간 : 4000원</span> <input type="radio" name="hour" value="4"></li>
				<li class="one"><span>5시간 : 5000원</span> <input type="radio" name="hour" value="5"></li>
			</ul>
			<button>결제</button>
		</div>
	</form>
	<c:if test="${requestScope.errMsg != null}">
		<span style="color:red">${requestScope.errMsg }</span>
	</c:if>
</body>
</html>