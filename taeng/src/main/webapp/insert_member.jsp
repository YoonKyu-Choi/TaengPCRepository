<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${requestScope.errMsg != null}">
	<span style="color:red">${requestScope.errMsg }</span>
</c:if>
<%-- 여기서 받은 데이터를 add_forward.jsp로 보내주고 add_forward.jsp에서 member형태로 InsertMemberServlet으로 보내준다. --%>
<form action="/taeng/add_forward.jsp" method="post">
ID : <input type="text" name="id"><br>
전화번호 : <input type="text" name="phoneNum"><br>
주민번호 앞자리 : <input type="number" name="personNum"><br>
비밀번호 : <input type="password" name="password"><br>
이름 : <input type="text" name="name"><br>
남은 시간 : <input type="number" name="pcTime"><br>
<button>등록</button>
</form>
</body>
</html>