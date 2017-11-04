<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 관리 완료</title>
<style>
@font-face {
	font-family:"INTERPARKGOTHICLIGHT";
	src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}
* {
	font-size:20px;
	font-family:"INTERPARKGOTHICLIGHT";
}

.btn {
	width: 170px;
 	height: 30px;
	background-color: #4D6C9C;
   	color: #F6F792;
   	cursor: pointer;
   	border: thick;
}
</style>
</head>
<body>
상품 수정이 완료됐습니다.<br><br>
<button class="btn" onclick="location.href='/taeng/admin.jsp'">관리자 페이지</button>
<button class="btn" onclick="location.href='/taeng/item_test.jsp'">이전 페이지</button>
</body>
</html>
