<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family: "맑은 고딕";
}

a:link {
	color: red;
}

a:visited {
	color: green;
}

a:hover {
	color: hotpink;
}

a:active {
	color: blue;
}

body {
	background-color: cyan;
	width: 1000px;
}

.box1, .box2, .box3 {
	width: 100px;
	height: 100px;
	padding: 50px;
	border: 1px solid black;
	background-color: white;
	margin-top: 5px;
}

.resultBox {
	width: 300px;
	height: 300px;
	border: 1px solid blue;
	background-color: white;
	margin-top: 100px;
}

form {
	text-align: center;
}
</style>
</head>
<body>
	<div class="box1">
		<div>
			<span>날짜로 조회하기</span>
		</div>
		<form action="/sales/salesByDate" method="post">
			<input type="date" class="day" name="sDay"> ~ <input type="date" name="eDay" class="day">
			<button>조회</button>
		</form>
	</div>
	<div class="box2">
		<form>
			<a href="/taeng/sales/allSales?select=all"> <span class="all">전체매출조회</span>
			</a>
		</form>
	</div>
	<div class="box3">
		<form>
			<a href="/taeng/sales/allSales?select=pc"> <span class="pc">PC요금매출조회</span></a><br> 
			<a href="/taeng/sales/allSales?select=item"> <span class="item">상품요금매출조회</span></a>
		</form>
	</div>
	<div class="resultBox">
		<c:if test="${requestScope.allSales!=null }">
			<span>전체요금 : ${requestScope.allSales }</span><br>
		</c:if>
		<c:if test="${requestScope.pcSales!=null }">
			<span>PC 요금 : ${requestScope.pcSales }</span><br>
		</c:if>
		<c:if test="${requestScope.itemSales!=null }">
			<span>상품요금 : ${requestScope.itemSales }</span>
		</c:if>
	</div>
</body>
</html>