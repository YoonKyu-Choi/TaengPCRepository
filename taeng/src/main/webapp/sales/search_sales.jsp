<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".lookup").click(function(){
		$(".resultBox").show();
	});
});
</script>
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
	background-color: #2cb74a;
	width: 1000px;
}

.boxform {
	width:950px;
	height:300px;
	margin-top:50px;
}

.box {
	width: 150px;
	height: 100px;
	padding: 40px;
	border: 1px solid black;
	background-color: white;
	margin-top: 5px;
	align-content: center;
	text-align: center;
	float:left;
}

.resultBox {
	width: 300px;
	height: 100px;
	border: 1px solid blue;
	background-color: white;
	margin-top: 50px;
	text-align:center;
	line-height:100px;
	position:absolute;
	display:none;
}

form {
	text-align: center;
}
</style>
</head>
<body>
	<div class="boxform">
		<div class="box">
			<div>
				<span>날짜로 조회하기</span>
			</div>
			<br>
			<form action="/taeng/sales/salesByDate" method="post">
				<input type="date" class="day" name="sDay"> ~ <input type="date" name="eDay" class="day">
				<button>조회</button>
			</form>
		</div>
		<div class="box">
			<form action="/taeng/salesList" method="post">
				전체매출목록조회
				<button>조회</button>
			</form>
		</div>
		<div class="box">
			<form>
				<br> <a href="/taeng/sales/allSales?select=all"> <span class="lookup">전체매출조회</span></a>
			</form>
		</div>
		<div class="box">
			<form>
				<a href="/taeng/sales/allSales?select=pc"> <span class="lookup">PC요금매출조회</span></a><br>
				<br>
				<br> <a href="/taeng/sales/allSales?select=item"> <span class="lookup">상품요금매출조회</span></a>
			</form>
		</div>
	</div>
		<div class="resultBox">
			<c:if test="${requestScope.allSales!=null }">
				<span>전체요금 : ${requestScope.allSales }</span>
				<br>
			</c:if>
			<c:if test="${requestScope.pcSales!=null }">
				<span>PC 요금 : ${requestScope.pcSales }</span>
				<br>
			</c:if>
			<c:if test="${requestScope.itemSales!=null }">
				<span>상품요금 : ${requestScope.itemSales }</span>
			</c:if>
		</div>
</body>
</html>