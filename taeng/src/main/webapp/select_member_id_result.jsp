<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID : ${requestScope.member.id }<br>
전화번호 : ${requestScope.member.phoneNum}<br>
주민번호 : ${requestScope.member.personNum}<br>
비밀번호 : ${requestScope.member.password }<br>
이름 : ${requestScope.member.name }<br>
남은 시간 : ${requestScope.member.pcTime }<br>
<a href="/taeng/admin.jsp">관리자 페이지로 돌아가기</a>
<a href="/taeng/manage_member.jsp">이전 페이지로 돌아가기</a>
</body>
</html>