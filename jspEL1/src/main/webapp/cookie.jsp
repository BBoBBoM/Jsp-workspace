<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%
	Cookie name = new Cookie("name","John");
	response.addCookie(name);
	
	Cookie gender= new Cookie("gender","Male");
	response.addCookie(gender);
	
	Cookie age = new Cookie("age","15");
	response.addCookie(age);
	
	
	
			 %>
</head>
<body>
	쿠키 데이터가 저장되었습니다.
</body>
</html>