<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String result= request.getParameter("result");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h3>회원 가입 결과</h3>
	<%
	String id, password,name;
	if(result.equals("success")){
		id = (String)session.getAttribute("id");
    	password = (String)session.getAttribute("password");
    	name = (String)session.getAttribute("name");
		out.println("아이디: "+id);
    	out.println("비밀번호: "+password);
    	out.println("이름: "+name);
    	out.println("가입되었습니다.");}
    else{out.println("가입되지 않았습니다");}%>
</body>
</html>