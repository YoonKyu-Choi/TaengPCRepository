<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

body {
		background-image:url("image/image.png");
}
	
.sit {
	width: 90%;
	height: 550px;
	color: white;
	margin-left: 120px;
}

.box {
	width: 90px;
	height: 90px;
	margin: 10px;
	float: left;
	border: 1px solid white;
	border-radius: 10px;
	background-color: black;
	box-shadow: 0px 0px 10px white;
	cursor: pointer;
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
					<button>자리선택</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>