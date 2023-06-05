<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
#<%= session.getAttribute("Name") %>님 환영합니다.!!!

<form action="loginForm.jsp" ><input type= "submit" value= "처음으로">
</form>
</body>
</html>