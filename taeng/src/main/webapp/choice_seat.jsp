<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 이동</title>
<style>
body {
	background-color:#100e0e;
}
.sit {
	width: 90%;
	height: 550px;
	margin-left: 120px;
	color: #f0fabc;
}
.box {
	width: 90px;
	height: 90px;
	margin: 10px;
	float: left;
	border: 1px solid #a499ca;
	border-radius: 10px;
	background-color: #a499ca;
	box-shadow: 0px 0px 10px #a499ca;
	cursor: pointer;
	text-align:center;
	line-height:90px;
	font-size:25px;
}
#btn{
	font-weight:bold;
	color:#3A3343;
	width:100px;
	height:50px;
	margin:10px;
	float:left;
	border:1px solid #f0fabc;
	text-align:center;
	line-height:50px;
	background-color:#FFF9A2;
	border-radius:5px;
	font-size:18px;
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="contents">
		<div class="sit">
			<form action="/taeng/bridge" method="post">
				<c:forEach begin="1" end="50" varStatus="cnt">
					<c:forEach items="${sessionScope.list }" var="pc">
						<c:choose>
							<c:when test="${cnt.count == pc }">
								<div class="box" id="box1">${pc }
								<input type="radio" name="seat" value="${pc }">
								</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</c:forEach>
				<div>
					<button id="btn">자리선택</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>