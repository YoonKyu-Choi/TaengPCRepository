<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정 완료</title>
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
회원 수정이 완료됐습니다.<br><br>
<button class="btn" onclick="location.href='/taeng/admin.jsp'">관리자 페이지</button>
<button class="btn" onclick="location.href='/taeng/manage_member.jsp'">이전 페이지</button>
</body>
</html>