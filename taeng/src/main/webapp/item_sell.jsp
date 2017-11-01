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
<script type="text/javascript">
	function minus(){
		var a = document.getElementById("up");
		
		a.value="-";
	}
	function errer(){
		var a = document.getElementById("error");
		var b = document.getElementById("min");
		
		alert("상품을 추가해주세요.");
	}
</script>
</head>
<body>
	<div class="sell_content">
		<div class="top_content">
			<div class="items">
				<c:forEach items="${requestScope.itemLists}" var="item">
					<div class="item">
						<form action="../item/cart" method="post">
							<ul>
								<li><img src='<c:url value="/itemImage/${item.itemImage}"/>'></li>
								<li>이름 : ${item.itemName}<input type="hidden" name="itemName" value="${item.itemName}"></li>
								<li>가격 : ${item.itemPrice}</li>
								<li><button type="submit">추가</button>
									<input type="hidden" id="up" name="up" value="+">
									<button type="submit" id="min" onclick="minus();">감소</button>
									</li>
							</ul>
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
		<form action="/item/order" method="post">
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
			<%if(list.get(item)>=0){ %>
			<%=list.get(item)%>개
			<input type="hidden" name="itemName" value="<%=list.get(item)%>">
			<input type="hidden" name="itemStock" value="<%=items.getItemName()%>">
			<%		
					}
				}
			}
			%>
		</div>
		<button>주문하기</button>
	</form>
	</div>
</body>
</html>