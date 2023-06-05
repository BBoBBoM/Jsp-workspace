<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="jspDBselect.member"%>
<%@ page import="jspDBselect.MemberDao"%>
<!DOCTYPE html>
<!-- session.setAttribute("id", userid); session에 저장할때 -->
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("uid");

member me = MemberDao.getInstance().logincheck(id);
String userid = me.getId();

String passw = me.getPwd();
String name = me.getName();

;%>
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

<tr>
<td><%=userid %></td>
<td><%=passw %></td>
<td><form action="modifyuser.jsp">
<input type="text" name="Name" ><input type="submit" value="수정"></form>
</td></tr>

</table>


</body>
</html>