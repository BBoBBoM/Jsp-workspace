<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- request로받은 character를  utf-8로 encoding
getparameter로 가져올때 이전 페이지 name id 등등 대소문자 구별받은 id password name 값을 String 값에 저장
저장 값을 session 에 setting  -->
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name= request.getParameter("name");
	session.setAttribute("id",id);
	session.setAttribute("password",password);
	session.setAttribute("name",name);%>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<!-- 기본약관 동의시 subscribe로 넘어감 post방식  name인 agree -->
<body><h3>약관</h3>
	---------------------------------------------------------------<br>
	<br>1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.
	<br>2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.
<br>----------------------------------------------------------------
<br>
<form action = subscribe1.jsp method= post>
	위의 약관에 동의하십니까?
	<input type = radio name=agree value = yes>동의함
	<input type = radio name=agree value = no> 동의하지 않음<br>
	<br><input type = submit value = "확인">
</form>

</body>
</html>