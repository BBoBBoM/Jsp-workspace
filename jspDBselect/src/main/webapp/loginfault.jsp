<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 out.println("<script>");

    out.println("alert('jsp에서 경고창 띄우기.');");

    out.println("</script>"); 


    
    %>
아이디와 비밀번호를 확인해주세요.
<form action="loginForm.jsp" ><input type= "submit" value= "처음으로">
</body>
</html>