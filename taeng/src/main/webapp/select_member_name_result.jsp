<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${requestScope.memberList }" var="member" varStatus="cnt">
	${cnt.count}<br>
	ID : ${member.id }<br> 
	전화번호 : ${member.phoneNum}<br>
	주민번호 : ${member.personNum}<br>
	비밀번호 : ${member.password }<br>
	이름 : ${member.name }<br>
	남은 시간 : ${member.pcTime }<br>
</c:forEach>
<a href="/taeng/admin.jsp">관리자 페이지로 돌아가기</a>
<a href="/taeng/manage_member.jsp">이전 페이지로 돌아가기</a>
</body>
</html>