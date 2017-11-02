<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean scope="request" id="member" class="com.kosta.taeng.vo.Member"/>
<jsp:setProperty name="member" property="*"/>
<jsp:forward page="/addmember"/>