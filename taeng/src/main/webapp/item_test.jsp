<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
	}
	
	.big {
		width:300px;
		height:200px;
		text-align:center;	
	}
	
	h1 {
		width:200px;
		height:30px;
	}
	
	.box {
		width:20%;
		height:0%;
	}
	
	form {
		width:300px;
		height:120px;
		float:left;
	}
	
	.clear {
		clear:both;
	}
</style>
</head>
<body>
<c:if test="${requestScope.errMsg != null}">
	<h1 style="color:red">${requestScope.errMsg }</h1>
</c:if>

<div class="big">
	<h1>상품 추가</h1>
	<div class="box">
		<form action='<c:url value="/item/addItem"/>' method="post" enctype="multipart/form-data">
			이름 : <input type="text" name="itemName"><br>
			가격 : <input type="number" name="itemPrice"><br>
			수량 : <input type="number" name="itemStock"><br>
			사진 : <input type="file" name="itemImage"><br>
		<button>등록</button>
		</form>
	</div>
</div>

<div class="big">
	<h1>상품 목록</h1>
	<div class="box">
		<form action='<c:url value="/item/selectAllItem"/>' method="post">
			<button>상품 목록 보기</button>
		</form>
	</div>
</div>

<div class="big">
	<h1>상품 수정</h1>
	<div class="box">
		<form action='<c:url value="/item/updateItem"/>' method="post" enctype="multipart/form-data">
			이름 : <input type="text" name="itemName"><br>
			가격 : <input type="number" name="itemPrice"><br>
			수량 : <input type="number" name="itemStock"><br>
			사진 : <input type="file" name="itemImage"><br>
			<button>수정</button>
		</form>
	</div>
</div>

<div class="big">
	<h1>상품 삭제</h1>
	<div class="box">
		<form action='<c:url value="/item/deleteItem"/>' method="post">
			삭제할 상품의 이름 : <input type="text" name="itemName"><br>
			<button>삭제</button>
		</form>
	</div>
</div>

<div class="big">
	<h1>상품 주문</h1>
	<div class="box">
		<form action='<c:url value="/item/itemLists"/>' method="post">
			<button>상품 주문</button>
		</form>
	</div>
</div>
</body>

</html>