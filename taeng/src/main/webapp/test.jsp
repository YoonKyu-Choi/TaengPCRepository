<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글 등록</h1>
<form action='<c:url value="/item/addItem"/>' method="post" enctype="multipart/form-data">
이름 : <input type="text" name="name"><br>
가격 : <input type="number" name="price"><br>
수량 : <input type="number" name="stock"><br>
사진 : <input type="file" name="image"><br>
<button>등록</button>
</form>
</body>
</html>