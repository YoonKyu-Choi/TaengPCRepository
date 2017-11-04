<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.btn {
	width: 110px;
	height: 30px;
	border: none;
	background-color: #DBD4D0;
	color: black;
	font-size: 15px;
	cursor: pointer;
}
</style>
</head>
<body>
<button class="btn" onclick="location.href='/taeng/item_test.jsp'">이전 페이지</button><br>
	<c:forEach items="${requestScope.itemList}" var="item">
		이름 : ${item.itemName}<br>
		가격 : ${item.itemPrice }<br>
		수량 : ${item.itemStock }<br>
		<h2>상품 이미지 :</h2> <img src='<c:url value="/itemImage/${item.itemImage}"/>' width="100px" height="100px"><br>
	</c:forEach>
</body>
</html>