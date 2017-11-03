<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	line-height: 40px;
	margin-top: 20px;
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

table, td, th{
	border: 1px solid gray;
}

td,th{
	padding: 5px;
	text-align: center;
}

table{
	border-collapse: collapse;
	width: 65%;
}

thead{
	background-color: #72A7CF;
    color: white;
}
.menu:hover{background-color:#E2E5ED}
</style>
</head>
<body>
	<div class=content>
		<table>
			<thead>
				<tr>
					<td>I&nbsp;D</td>
					<td>이름</td>
					<td>생년월일</td>
					<td>남은시간</td>
					<td>전화번호</td>
					<td>비밀번호</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.memberList }" var="member" varStatus="cnt">
					<tr class="menu">
						<td>${member.id }</td>
						<td>${member.phoneNum}</td>
						<td>${member.personNum}</td>
						<td>${member.password }</td>
						<td>${member.name }</td>
						<td>${member.pcTime }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button class="btn" onclick="location.href='admin.jsp'">관리자 페이지</button>
		<button class="btn" onclick="location.href='manage_member.jsp'">이전 페이지</button>
	</div>
</body>
</html>