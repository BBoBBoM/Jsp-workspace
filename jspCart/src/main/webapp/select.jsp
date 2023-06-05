<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("username");

	session.setAttribute("name",name); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인확인</title>
</head>
<body>

	<div align="center">
	<h1>로그인확인</h1>
	${name}님 환영합니다.<br>
	상품을 선택하세요<br>
	<form  method="post" action="add.jsp">
	<select name="selfruit" >
              
                        <option value="사과">사과</option>
                        <option value="귤">귤</option>
                        <option value="복숭아">복숭아</option>
                        <option value="천혜향">천혜향</option>
                        <option value="배">배</option>

	  </select>
	  
	  <input type="submit" value="추가">
	</form>
	<a href="calculate.jsp">계산</a>
	</div>
	<!--  -->
</body>
</html>