<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<style>
@font-face {
	font-family:"INTERPARKGOTHICLIGHT";
	src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}

* {
	box-sizing: border-box;
	font-family:"INTERPARKGOTHICLIGHT";
}

body {
	background-image: url("image/background2.jpg");
	margin: 0;
}

.content {
	font-size: 20px;
	line-height: 60px;
	margin-top: 20px;
	margin-left: 250px;
	padding-left: 20px;
}

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
	<div class="content">
		ID : ${requestScope.member.id }<br>
		전화번호 : ${requestScope.member.phoneNum}<br>
		주민번호 : 	${requestScope.member.personNum}<br>
		비밀번호 :	${requestScope.member.password }<br>
		이름 : ${requestScope.member.name }<br>
		남은 시간 : ${requestScope.member.pcTime }<br>
		<button class="btn" onclick="location.href='admin.jsp'">관리자 페이지</button>
		<button class="btn" onclick="location.href='manage_member.jsp'">이전 페이지</button>
	</div>
</body>
</html>