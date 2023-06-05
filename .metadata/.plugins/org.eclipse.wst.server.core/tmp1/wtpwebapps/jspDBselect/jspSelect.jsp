<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String dbURL = "jdbc:mysql://localhost:3306/friend";
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
}
%>
<body>
	<br><br> 이름 등급 나이 직업
	<br><br>
<%
out.println("statement로 출력한결과");%><br><%
Statement stmt = conn.createStatement();// 이미 완성된 query문 사용할때
String sql1 = "SELECT * FROM friend_info";// sql내url 이후 세부 검색조건
ResultSet rs1 = stmt.executeQuery(sql1);

while (rs1.next()) {
	String name = rs1.getString("name");
	String grade = rs1.getString("grade");// rs값에 든 1번째 값 를 가져와서 name에 저장하고 출력하시오
	String age = rs1.getString("age");
	String job = rs1.getString("job");


	out.println(name + "\t\t" + grade + "\t\t" + age + "\t\t" + job );%><br><% }

%><br><br>
	<%
	out.println("PreparedStatement 출력한결과");%><br><%
	String sql = "Select * from friend_info";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String name = rs.getString("name");
			String grade = rs.getString("grade");
			String age = rs.getString("age");
			String job = rs.getString("job");
			out.println(name + "\t\t" + grade + "\t\t" + age + "\t\t" + job  );%><br><% }
		

	} catch (SQLException e) {
		e.printStackTrace();
	}
	%><br><br><%
	try{conn.close(); out.println("db를 종료.");}catch (SQLException e) {
		e.printStackTrace();out.println("db를 종료실패.");
	}
	%>




</body>
</html>