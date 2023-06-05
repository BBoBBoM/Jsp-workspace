<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<%@ page import="java.sql.*"%>
<%@ page import="jspDBselect.member"%>
<%@ page import="jspDBselect.MemberDao"%>

<!DOCTYPE html>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

member me = MemberDao.getInstance().logincheck(id);

String userid = me.getId();
String passw = me.getPwd();
String name = me.getName();
String url = "";


if(id.equals(userid) && pwd.equals(passw)){
	session.setAttribute("Name", name);
	url = "loginsuc.jsp";
}
else if(!id.equals(userid) || pwd.equals(passw)){
	url = "loginfault.jsp";
}
else if(id.equals(userid) || !pwd.equals(passw)){
	url = "loginfault.jsp";
}
else{url = "loginfault.jsp";}


%>
<jsp:include page = "<%=url%>"/>


</body>
</html>