<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "content-Type" content ="text/html" charset="UTF-8">
<title>include action</title>
</head>
<body>
	<h2>include_action.jsp에서 footer.jsp호출</h2>
	<hr>
	include_action.jsp에서 출력한 메시지입니다.<br>
	<!-- form action은 submit으로 실행, jsp:include는 실행때 결과 표시 -->
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="test@test.net"/>
		<jsp:param name="tel" value="123-4567-8910"/>
	</jsp:include>
</body>
</html>