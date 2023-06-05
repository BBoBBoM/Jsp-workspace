<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "content-Type" content ="text/html" charset="UTF-8">
<title>footer.jsp</title>
</head>
<body>
<hr>
	footer.jsp에서 표현식(Expression)을 출력한 메시지입니다.
	<br>
	<!-- 표현식(Expression) -->
	<%=request.getParameter("email") %>
	<%= request.getParameter("tel") %>
	<hr>

	footer.jsp에서 스크립트릿(Scriptlet)을 출력한 메시지입니다.
	<!-- 스크립트릿(Scriptlet) --><br>
	<% out.println(request.getParameter("email")); %>
	<% out.println(request.getParameter("tel")); %>
</body>
</html>