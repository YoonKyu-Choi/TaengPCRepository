<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>login test!</h1>
<form action="/taeng/login" method="post">
id : <input type="text" name="id">	
password : <input type="password" name="password">
<br>
<button>로그인</button><br>
</form>

${requestScope.errMsg }

</body>
</html>