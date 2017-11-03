<%@page import="com.kosta.taeng.service.impl.PCServiceImpl"%>
<%@page import="com.kosta.taeng.service.PCService"%>
<%@page import="java.util.List" %>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".box").click(function(){
		$(this).css({"border":"1px solid red"});
	});
});
</script>

<style>
	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
		font-family:"맑은 고딕";
	}

	body {
		background-color:black;
		width:100%;
	}

	.contents {
		width:100%;
		height:0%;
	}
	
	.sit {
		width:90%;
		height:550px;
		color:white;
		margin-left:120px;
	}
	
	.box {
		width:90px;
		height:90px;
		margin:10px;
		float:left;
		border:1px solid white;
		border-radius:10px;
		background-color:#cecece;
		box-shadow:0px 0px 10px white;
		cursor:pointer;
	}
	.box2 {
		width:90px;
		height:90px;
		margin:10px;
		float:left;
		border:1px solid white;
		border-radius:10px;
		background-color:black;
		box-shadow:0px 0px 10px white;
		cursor:pointer;
	}
	
	.bottom {
		width:700px;
		height:50px;
		float:left;
		margin-top:30px;
	}

	.option {
		color:black;
		float:left;
		margin-left:120px;
	}

	.one {
		width:100px;
		height:50px;
		margin:10px;
		float:left;
		border:1px solid white;
		text-align:center;
		line-height:50px;
		background-color:#DDEC45;
		border-radius:5px;
		font-size:18px;
		cursor:pointer;
	}
	
	.clear {
		clear:both;
	}

</style>
</head>

<body>
	<div class="contents">
	
		<div class="sit">
			<c:forEach var="i" begin="1" end="50" varStatus="cnt">
				<c:set var="flag" value="false"/>
				<c:forEach items="${sessionScope.list }" var="seat">
					<c:if test="${seat==cnt.count }">
						<c:set var="flag" value="true"/>
					</c:if>
				</c:forEach>
				<div class="${flag == 'true'? 'box':'box2'}" id="box1">${cnt.count }</div>
			</c:forEach>
		</div>
	</div>
	<div class="clear"></div>

	<div class="bottom">
		<div class="option">
			<ul>
				<li class="one">화면</li>
				<li class="one"><a href="/taeng/manage_member.jsp">회원</a></li>
				<li class="one">재고</li>
				<li class="one"><a href="/taeng/sales/search_sales.jsp">매상</a></li>
			</ul>
		</div>
	</div>
</body>
</html>