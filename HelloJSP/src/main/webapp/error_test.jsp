<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ page errorPage = "error_OK.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-type" content="text/html; charset="UTF-8">
<title>Error Test</title>
</head>
<body>
	<H2>Error 테스트 페이지</H2>
	<% 
	//String str = "100";
	String str = "test";
	int i = Integer.parseInt(str);
	//out. out 객체는 JSP페이지가 생성한 결과를 웹 브라우저에 전송해 주는 출력 스트림
	out.println(i+"<br>");
	out.println(str.toString()+"**");
	%>
</body>
</html>