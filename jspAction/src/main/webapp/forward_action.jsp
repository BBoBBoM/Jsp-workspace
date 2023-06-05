<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
</head>
<body>
	<h2>forward_action.jsp에서 호출</h2>
	<hr>
	forward_action.jsp에서 출력한 메시지입니다.
	<br>
	<!-- form action은 submit으로 실행, jsp:forward는 실행때 페이지 전환 -->
	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value ="test@test.net"/>
		<jsp:param name="tel" value="000-000-0000"/>
	</jsp:forward>
</body>
</html>