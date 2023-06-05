<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
response.addCookie(new Cookie("AGE", "16"));
// response.addCookie(new Cookie("name","jackson"));
// response.addCookie(new Cookie("gender","female"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키데이터수정하기</title>
</head>
<body>
	AGE쿠키에 새로운 값이 저장되었습니다.
	<Br>
	<br>
</body>
</html>