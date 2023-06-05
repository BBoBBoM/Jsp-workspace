<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!-- Arraylist를 사용하기 위한 java.util.* import Date사용을 위해 SimpleDateFormat import -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String message = request.getParameter("message");
	//twitterlist에서 session형태로 저장한 message를 message에 저장
	Object username = session.getAttribute("username");
	//Object형태로 저장이 되는지 
	ArrayList<String> messages = (ArrayList<String>) application.getAttribute("messages");
	//application 객체는 웹 어플리케이션이 실행되는 서버의 설정 정보 및 자원에 대한 정보를 얻어내거나 어플리케이션이 실행되고 있는 동안에 발생할 수 있는 이벤트 로그 정보와 관련된 기능들을 제공
	//javax.servlet.ServletContext객체 타입
	if (messages == null) {
		messages = new ArrayList<String>();
		application.setAttribute("messages", messages);
	}//message 내용을 담고 추가 할 messages Arraylist 생성 messages가 없으면 새로 생성 
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
	messages.add(username + "::" + message + "," + f.format(date));//username과 message date형태의 문자열을 messages에 추가 
	application.log(message + "추가됨");//간단한 알림 
	response.sendRedirect("twitterlist.jsp");//response.sendRedirect 쉡 서버가 웹 브라우저에게 다른 페이지로 이동하라고 응답하는기능
	%>
	<script>
		alert("내용이(가) 추가 되었습니다!!")
		history.go(-1)//이전 페이지로 이동 
	</script>
</body>
</html>