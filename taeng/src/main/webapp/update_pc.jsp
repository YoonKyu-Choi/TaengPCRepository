<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/taeng/update_pc_forward.jsp" method="post">
수정할 PC의 자리 번호 : <input type="number" name="pcNum"/><br>
수정할 요금 : <input type="number" name="pcCost"/><br>
수정할 회원 ID : <input type="string" name="id"/><br>
<button>수정</button>
</form>
</body>
</html>