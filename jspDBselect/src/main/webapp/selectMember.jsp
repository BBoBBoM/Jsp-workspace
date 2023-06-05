<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="jspDBselect.member"%>
<%@ page import="jspDBselect.MemberDao"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td>아이디</td>
	<td>비밀번호</td>
	<td>이름</td>
</tr>

<% request.setCharacterEncoding("utf-8");
List<member> list = MemberDao.getInstance().selectAll();
for(int i=0; i <list.size();i++){%>
<tr>
		<td><a href ="modifyMember.jsp?uid=<%=list.get(i).getId()%>" ><%=list.get(i).getId() %></td>

		<td><%= list.get(i).getPwd() %></td>
		<td><%= list.get(i).getName() %></td>
		<td><input type = "button" value = "댓글" 
		onclick ="location.herf='replyForm.jsp?uid=<%= list.get(i).getId() %>'"></td>
</tr>
<br>
<%
}
%></table>
</body>
</html>