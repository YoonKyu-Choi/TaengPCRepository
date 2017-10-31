<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>날짜로 검색하기</h1>
<form action="/taeng/sales/salesByDate" method="post">
	<input type="date" name="sDay">
	<br>
	<input type="date" name="eDay">
	<br>
	<button>전송</button>
</form>

<p>
<h1>매출 확인</h1>
<a href="/taeng/sales/allSales">총 매출확인</a>
</body>
</html>