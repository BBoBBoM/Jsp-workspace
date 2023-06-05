<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="jspDBselect.member" %>
    <%@ page import="jspDBselect.MemberDao" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name= request.getParameter("name");
	
	member member = new member();
	member.setId(id);
	member.setPwd(pwd);
	member.setName(name);
	MemberDao.getInstance().insertMember(member);
	
	%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디   :<%=id %><br>
비밀번호 :<%=pwd %><br>
이름    :<%=name %><br>
<%=member.toString() %>
<%MemberDao.getInstance().selectMember(); %>
<form action="loginForm">
 <input type="submit" value="이전"/></form>
</body>
</html>