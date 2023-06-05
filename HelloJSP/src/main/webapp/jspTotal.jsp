<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h3>
		1.JSP주석
		<!-- HTML주석:화면에서는 안보이고 소스 보기에는 보임 -->
		<%--JSP주석 --%>
	</h3>
	
	<%--<%!선언 String member배열선언 변수선언 계산method 변수선언 method 선언--%>
		<%--선언은 javacode로 --%>
	<%!String[] members = { "김길동", "홍길동", "김사랑", "박사랑" };
	int num1 = 10;

	int calc(int num2) {
		return num1 + num2;
	}%>
	
	<%--<%=expression 선언된 <%!내 메서드 실행  --%>
	<h3>2. calc(10)메서드 실행 결과 : 
	<%=calc(10) %></h3>
	
	<%--<@ include 지시어 hello파일이 전부 들어 있어 --%>
	<h3>3. include : hello.jsp</h3>
	<%@ include file = "..//hello.jsp" %>
	
	<h3>4.스크립트(배열 데이터 출력)</h3>
		<ul>
			<% for(String name : members){ %>
			<li><%=name %></li>
			<% } %>
		</ul>
</body>
</html>