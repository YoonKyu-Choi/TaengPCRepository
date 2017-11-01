<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

table, td, th {
	border: 1px solid gray;
}

table {
	border-collapse: collapse;
	width: 500px;
}

td, th {
	padding: 10px;
}

body{
	align-content:center;
}
</style>
</head>
<body>
<p>
<h2>날짜로 검색결과</h2>

<table>
		<thead>
			<tr>
				<td>날짜</td>
				<td>PC</td>
				<td>상품</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.list }" var="sale">
				<tr>
					<td>${sale.salesDate }</td>
					<td>${sale.pcSales }</td>
					<td>${sale.itemSales }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>