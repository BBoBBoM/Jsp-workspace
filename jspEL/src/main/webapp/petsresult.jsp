<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%request.setCharacterEncoding("utf-8"); %>
<body>
	아이디: ${param.ID }<br>
	선택한 동물:<br>
	${paramValues.animal[0] }<br>
	${paramValues.animal[1] }<br>
	${paramValues.animal[2] }<br>
</body>
</html>