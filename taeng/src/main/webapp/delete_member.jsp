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
<form action="/taeng/deletemember" method="post">
ID : <input type="text" name="id"><br>
<button>삭제</button>
</form>
</body>
</html>