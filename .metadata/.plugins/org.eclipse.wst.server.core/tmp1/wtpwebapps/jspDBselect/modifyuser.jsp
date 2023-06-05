<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
<%@ page import="jspDBselect.member"%>
<%@ page import="jspDBselect.MemberDao"%>

<!DOCTYPE html>
<!--  Object id = session.getAttribute("id");
    String id1 = (String)id; -->
<%  request.setCharacterEncoding("utf-8");


   
    String id = request.getParameter("userid");
    String name = request.getParameter("Name");
    member me = MemberDao.getInstance().updateInfo(id,name);
    String userid = me.getPwd();
    String passw = me.getPwd();
    String username = me.getName();

%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
수정에 성공하였습니다.<br>
아이디 : <%=userid %>
<br>
비밀번호 : <%=passw %>
<br>
이름 : <%=username %>
<form action="selectMember.jsp"><input type="submit" value="댓글페이지로">
</form>
</body>
</html>