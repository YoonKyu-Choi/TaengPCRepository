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
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	function minus(btn){
		btn.previousSibling.previousSibling.value="-";
	}
</script>
<style>
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
	}
	
	img {
		width:200px;
		height:200px;
	}
	
	.items {
		width:1000px;
		height:0%;
		float:left;
	}
	
	
	.eat {
		float:left;
		width:200px;
		height:300px;
	}
	
	.eat2 {
		float:right;
		font-size:15px;
		width:250px;
		height:0%;
		border:1px solid black;
		line-height:30px;
	}
	
	form > ul > li {
		text-align:center;
	}
	
	.btn {
		width:70px;
		height:40px;
		font-size:16px;
	}
</style>
</head>
<body>
	<div class="sell_content">
		<div class="top_content">
			<div class="items">
				<c:forEach items="${requestScope.itemLists}" var="item">
					<div class="item">
						<form id="itemOrderList" action="../item/cart" method="post"  class="eat">
							<ul>
								<li><img src='<c:url value="/itemImage/${item.itemImage}"/>'></li>
								<li>이름 : ${item.itemName}<input type="hidden" name="itemName" value="${item.itemName}"></li>
								<li>가격 : ${item.itemPrice}</li>
								<li>
									<button type="submit">추가</button>
									<input type="hidden" id="up" name="up" value="+">
									<button type="submit" id="min" onclick="minus(this);">감소</button>
								</li>
							</ul>
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
		<form action="/taeng/item/order" method="post" class="eat2">
			<div class="item_order">
				<%
					HashMap<String, Integer> list = new HashMap<>();
					list = (HashMap<String, Integer>) session.getAttribute("itemOrder");
					Item items = new Item();
					ItemService service = ItemServiceImpl.getInstance();
					session.setAttribute("itemOrder", list);
				%>
				<%if(list == null){
					
				}else{
					for (String item : list.keySet()) {
						items = service.findItemByName(item);
				%>
				상품명 : <%=items.getItemName()%> |
				<%=items.getItemPrice()%>원 |
				<%if(list.get(item)>=0){ %>
				<%=list.get(item)%>개<br>
				<input type="hidden" name="itemName" value="<%=items.getItemName()%>">
				<input type="hidden" name="itemStock" value="<%=list.get(item)%>">
				<%		
						}
					}
				}
				%>
			</div>
		<button class="btn">주문하기</button>
	</form>
	</div>
</body>
</html>