<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("jangbaguni.jsp");
		return;
	} else {
		session.invalidate();
		response.sendRedirect("jangbaguni.jsp");
	}
	%>
</body>
</html>