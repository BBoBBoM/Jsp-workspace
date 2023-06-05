<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>쿠키 데이터 읽기1</title>
</head>
<body>
	쿠키 데이터 읽기1
	<br> 
	이름:<%=getCookieValue(cookies, "name")%><br> 
	성별:<%=getCookieValue(cookies, "gender")%><br> 
	나이:<%=getCookieValue(cookies, "age")%><br>
</body>
</html>
<%!private String getCookieValue(Cookie[] cookies, String name) {
		String value = null;
		if (cookies == null)
			return null;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(name))
				return cookie.getValue();
		}
		return null;
	}%>