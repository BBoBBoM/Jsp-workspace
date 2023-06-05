<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
//utf으로 인코딩
String username = request.getParameter("username");
//username값을 받아와서 username에 저장 
if (username != null) {
	session.setAttribute("username", username);
}
//username에 값이 null이 아니면 세션에 추가하세요
%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>트위터</h1>
		<form method="post" action="twitter.jsp">
			@<%=session.getAttribute("username")%>
			<!-- session username에 있는 값을 가져와서 넣으시오  -->
			<input type="text" name="message" /> <input type="submit"
				value="twitt" />

		</form>

		<hr>
		<br>
		<%
		ArrayList<String> messages = (ArrayList<String>) application.getAttribute("messages");
		//messages에 들어있는 값을 arraylist<String> type의 messages에 넣으시오
		if (messages != null) {
			for (Object message : messages) {
				out.println("<li>" + message + "</li>");
			}
			//messages안에 있는 값이 null이 아니면 for문으로 화면에 출력하시오 
			//for(A:B)B에서 차례대로 객체를 꺼내 Object A에 저장 for(Object obj : files) for(DrawObject obj:list)형태
		}
		%>

	</div>
</body>
</html>