<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 문법 설명</title>
</head>
<body>
	<h3>FONT 태그에 대하여</h3>
	<c:out value="<FONT size = 7>커다란 글씨</FONT>는 다음과 같은 출력을 합니다."/><br>
	
	<c:out value = "<FONT size=7>커다란 글씨</FONT>" escapeXml = "false"/><br>
	<br>
	
	안녕하세요, <c:out value="${param.ID}" default="뽀뽀맨"/>님
	<!-- default 넘어 오는 값이 없을때 자동으로 id값에 default설정 -->
	<!-- get방식 http://localhost:9010/JspJstl/jstlOut.jsp?ID=%EC%A0%95%EC%84%B1%EC%9A%A9-->
</body>
</html>