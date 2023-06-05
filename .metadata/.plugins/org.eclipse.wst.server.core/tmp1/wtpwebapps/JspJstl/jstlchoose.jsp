<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사하기</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.NUM==0}">처음뵙겠습니다</c:when>
		<c:when test="${param.NUM==1}">반갑습니다</c:when>
		<c:otherwise>안녕하세요</c:otherwise>
	
	
	
	</c:choose>
</body>
</html>
<!-- http://localhost:9010/JspJstl/jstlchoose.jsp?NUM=0,1 -->