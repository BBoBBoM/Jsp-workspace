<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메아리</title>
</head>
<body>
	<c:forEach var= "cnt" begin="1" end="5">
		<font size = ${cnt }>야~호~</font><br>
	
	</c:forEach>
</body>
</html>
<!-- for( int i=1; i<=5;i++){
		 -->