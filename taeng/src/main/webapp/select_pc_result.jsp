<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
PC 자리 번호 : ${requestScope.pc.pcNum }<br>
사용 요금 : ${requestScope.pc.pcCost }<br>
사용자 ID : ${requestScope.pc.member.id }<br>
사용자 이름 : ${requestScope.pc.member.name }<br>
사용 시간 : ${requestScope.pc.member.pcTime }<br>
</body>
</html>