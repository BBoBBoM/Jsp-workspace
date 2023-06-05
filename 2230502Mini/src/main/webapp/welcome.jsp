<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Date" %>

<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


#imgdiv{height:500px;
background: url(mars.jpg);
background-position: center;
background-repeat: no-repeat;
background-size: cover;
font-size: 50px;line-height: 350px;text-align:center;Color:white;}


   
#remaindiv{text-align:center;}

</style>
<body>
<header><%@ include file = "menu.jsp" %></header>
<div id="imgdiv">KDC 쇼핑몰에 오신 것을 환영합니다.</div>
<div id="remaindiv">
<%
Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년MM월dd일 E요일 a hh:mm:ss");
String today = sf.format(now);
%>
<%=today %><br>
<%@ include file = "footer.jsp" %></div>
</body>
</html>