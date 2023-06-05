<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
	Cookie c_name = new Cookie("name","John")
	response.addCookie(c_name);
--%>
<%--cookie(쿠키이름, 쿠키값) 
response 웹 브라우저의 요청에 응답하는것 정보를 가지고 있는 객체를 response객체 
new cookie --%>
<%
	response.addCookie(new Cookie("name","John"));
	response.addCookie(new Cookie("gender","male"));
	response.addCookie(new Cookie("age","15"));
%>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 데이터 저장하기</title>
</head>
<body>
		쿠키 데이터가 저장되었습니다.<br><br>
</body>
</html>