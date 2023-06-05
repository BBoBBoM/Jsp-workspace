<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% String dbURL = "jdbc:mysql://localhost:3306/unuversity";
String id = "root";
String password = "1111";	
Connection conn = null;
try {

	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println("드라이버 적재 성공");

	conn = DriverManager.getConnection(dbURL, id, password);
	out.println("데이터베이스 연결 성공");

} catch (ClassNotFoundException e) {
	out.println("JDBC 드라이브 검색 에러");

} catch (SQLException ee) {
	out.println("데이터베이스 연결 실패");
	out.println("에러: " + ee);
} %>

</body>
</html>