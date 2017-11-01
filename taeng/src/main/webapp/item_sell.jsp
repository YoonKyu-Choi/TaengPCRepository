<%@page import="com.kosta.taeng.service.impl.ItemServiceImpl"%>
<%@page import="com.kosta.taeng.service.ItemService"%>
<%@page import="com.kosta.taeng.vo.Item"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="sell_content">
		<div class="top_content">
			<div class="items">
				<c:forEach items="${requestScope.itemLists}" var="item">
					<div class="item">
						<form action="../item/cart" method="post">
							<img src='<c:url value="/itemImage/${item.itemImage}"/>'> <br>
							이름 : ${item.itemName}<input type="hidden" name="itemName" value="${item.itemName}"><br>
							가격 : ${item.itemPrice}<br>
							<button type="submit">선택</button>
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="item_order">
			<%
				HashMap<String, Integer> list = new HashMap<>();
				list = (HashMap<String, Integer>) session.getAttribute("itemOrder");
				Item items = new Item();
				ItemService service = ItemServiceImpl.getInstance();
				
			%>
			<%if(list == null){%>
				
			<%}else{
				for (String item : list.keySet()) {
					items = service.findItemByName(item);
			%>
			상품명 : <%=items.getItemName()%> |
			<%=items.getItemPrice()%>원 |
			<%=list.get(item)%>개
			<%
				}
			}
			%>
		</div>
	</div>
</body>
</html>