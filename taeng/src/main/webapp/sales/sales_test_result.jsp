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

@font-face {
	font-family:"INTERPARKGOTHICLIGHT";
	src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}

.btn {
	width: 170px;
 	height: 30px;
	background-color: #4D6C9C;
   	color: #F6F792;
   	cursor: pointer;
   	border: thick;
   	font-size:20px;
	font-family:"INTERPARKGOTHICLIGHT";
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
	<br>
	<button class="btn" onclick="location.href='/taeng/sales/search_sales.jsp'">이전 페이지</button>
</body>
</html>