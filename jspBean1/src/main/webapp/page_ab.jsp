<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String param = request.getParameter("param");
		if(param.equals("A")){out.print("파라미터 A로 페이지 실행");}
		else{out.print("파라미터 B로 페이지 실행");}
		%>
</body>
</html>