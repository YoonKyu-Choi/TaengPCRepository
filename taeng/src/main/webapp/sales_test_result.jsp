<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sales_test_result.jsp</h1>
<p>
<h2>날짜로 검색하기.</h2>
<c:forEach items="${requestScope.list }" var="sale" varStatus="cnt">
	<h3>${cnt.count }</h3>
	날짜 : ${sale.salesDate }
	<br>
	pc요금 : ${sale.pcSales }
	<br>
	상품요금 : ${sale.itemSales }
	<br>
</c:forEach>
<p>
<h2>전체요금.</h2>
전체 요금 : ${requestScope.allSales }
<br>
pc 요금 : ${requestScope.pcSales }
<br>
상품 요금 : ${requestScope.itemSales }
<p>

</body>
</html>