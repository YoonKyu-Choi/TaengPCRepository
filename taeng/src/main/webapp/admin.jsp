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
<style>
	@font-face {
		font-family:"INTERPARKGOTHICLIGHT";
		src:url("font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
	}

	* {
		margin:0 auto;
		padding:0;
		list-style:none;
		text-decoration:none;
		font-family:"INTERPARKGOTHICLIGHT";
		text-align:center;
	}

	body {
		background-color:#100e0e;
		width:100%;
	}

	.contents {
		width:100%;
		height:0%;
	}
	
	.sit {
		width:90%;
		height:550px;
		margin-left:120px;
		line-height:90px;
		font-size:30px;
	}
	
	.box { <%-- 사람 없을때 --%>
		width:90px;
		height:90px;
		margin:10px;
		float:left;
		border:1px solid #a499ca;
		border-radius:10px;
		background-color:#a499ca;
		box-shadow:0px 0px 10px #a499ca;
		cursor:pointer;
		text-align:center;
		color:#f0fabc;
	}
	.box2 { <%-- 사람 있을 때 --%>
		color:#3A3343;
		width:90px;
		height:90px;
		margin:10px;
		float:left;
		border:1px solid #f0fabc;
		border-radius:10px;
		background-color:#f0fabc;
		box-shadow:0px 0px 10px #f0fabc;
		cursor:pointer;
		line-height:90px;
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
	
	a:visited {
		color:#3A3343;
	}

	.one {
		font-weight:bold;
		color:#3A3343;
		width:100px;
		height:50px;
		margin:10px;
		float:left;
		border:1px solid #f0fabc;
		text-align:center;
		line-height:50px;
		background-color:#FFF9A2;
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
				<li class="one"><a href="/taeng/login.jsp">메인화면</a></li>
				<li class="one"><a href="/taeng/manage_member.jsp">회원관리</a></li>
				<li class="one"><a href="/taeng/item_test.jsp">상품관리</a></li>
				<li class="one"><a href="/taeng/sales/search_sales.jsp">매상관리
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>