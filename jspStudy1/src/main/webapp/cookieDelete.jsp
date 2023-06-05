<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--gender쿠키 새로 생성 
생성시간 maxage(0초)-->
<% Cookie cookie = new Cookie("Gender","");
cookie.setMaxAge(0);
response.addCookie(cookie);%>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제하기</title>
</head>
<body>
	GENDER 쿠키를 삭제했습니다.
</body>
</html>

