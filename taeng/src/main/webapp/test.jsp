<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글 등록</h1>
<form action='<c:url value="/item/addItem"/>' method="post" enctype="multipart/form-data">
<input type="text" name="name"><br>
<input type="file" name="image"><br>
<button>등록</button>
</form>
</body>
</html>