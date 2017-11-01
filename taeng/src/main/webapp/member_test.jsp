<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/taeng/add_forward.jsp" method="post">
ID : <input type="text" name="id"><br>
전화번호 : <input type="text" name="phoneNum"><br>
주민번호 앞자리 : <input type="number" name="personNum"><br>
비밀번호 : <input type="password" name="password"><br>
이름 : <input type="text" name="name"><br>
남은 시간 : <input type="number" name="pcTime"><br>
<button>등록</button>
</form>
<hr>
<form action="/taeng/deletemember" method="post">
ID : <input type="text" name="id"><br>
<button>삭제</button>
</form>
<hr>
<form action="/taeng/updatemember" method="post">
ID : <input type="text" name="id"><br>
수정할 전화번호 : <input type="text" name="phoneNum"><br>
수정할 주민번호 앞자리 : <input type="number" name="personNum"><br>
수정할 비밀번호 : <input type="password" name="password"><br>
수정할 이름 : <input type="text" name="name"><br>
수정할 남은 시간 : <input type="number" name="pcTime"><br>
<button>수정</button>
</form>
</body>
</html>