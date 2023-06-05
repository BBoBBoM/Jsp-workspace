<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean class="member.Memberinfo" id="pinfo"/>
<jsp:setProperty name="pinfo" property="name" value="정성용"/>
<jsp:setProperty name="pinfo" property="gender" value="남"/>
<jsp:setProperty name="pinfo" property="age" value="50"/>

<br> 이름 : <jsp:getProperty name = "pinfo" property="name"/>
<Br>성별 : <jsp:getProperty name = "pinfo" property="gender"/><BR>나이 : <jsp:getProperty name = "pinfo" property="age"/>
</body>
</html>