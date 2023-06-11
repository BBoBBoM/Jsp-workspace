<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>

<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#imgdiv {
	height: 500px;
	background: url(mars.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	font-size: 50px;
	line-height: 350px;
	text-align: center;
	Color: white;
}

#remaindiv {
	text-align: center;
}
</style>
<%
Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 a hh:mm:ss");
String today = "현재 접속 시각 : " + sf.format(now);

String welcome = "Welcome to Web Market!";
%>
<!-- calendar 로 받아오는 방법  -->
<%
Calendar calendar = Calendar.getInstance();
int hour = calendar.get(Calendar.HOUR_OF_DAY);
int minute = calendar.get(Calendar.MINUTE);
int second = calendar.get(Calendar.SECOND);
int ampm = calendar.get(Calendar.AM_PM);
String am_pm = null;
if (ampm == 0) {
	am_pm = "오전";
} else {
	am_pm = "오후";
}
%>


<body>
	<header><%@ include file="menu.jsp"%></header>
	<div id="imgdiv">KDC 쇼핑몰에 오신 것을 환영합니다.</div>
	<div id="remaindiv">
		<%=welcome%><br>
		<%=today%><br>
		<%@ include file="footer.jsp"%></div>
</body>
</html>