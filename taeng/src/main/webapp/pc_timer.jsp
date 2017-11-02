<%@page import="com.kosta.taeng.service.impl.MemberServiceImpl"%>
<%@page import="com.kosta.taeng.service.MemberService"%>
<%@page import="com.kosta.taeng.service.impl.PCServiceImpl"%>
<%@page import="com.kosta.taeng.service.PCService"%>
<%@page import="com.kosta.taeng.vo.PC"%>
<%@page import="com.kosta.taeng.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.12.3.js"></script>
<script type="text/javascript">
	
<%Member member = new Member("id1", "123-1234-1234", 987654, "1234", "파파", 60);
			PC pc = new PC(1, 2000, "id1");
			int time = member.getPcTime();
			session.setAttribute("pc", pc);
			%>
	var time = <%=time%>
	function pcTimer() {
		if(time == 0 ){
			document.getElementById("form").submit();
			return;
		}
		time -= 1;
		document.getElementById("timeid").innerHTML = "<b>" + time + "</b>";
		document.getElementById("pcTime").value = time;
	}
	$(document).ready(function() {
		var pcTime = setInterval(pcTimer, 100);
	});
</script>
</head>
<body>
<form id="form" method="post" action="/taeng/pctimer">
	<span id="timeid"><%=time%></span>
	<input type="text" id="pcTime" name="pcTime" value="">
</form>
</body>
</html>