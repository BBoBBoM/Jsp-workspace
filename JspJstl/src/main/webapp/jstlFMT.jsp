<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %><!-- date객체를 쓰기 위해 import -->
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var = "date" value = "<%=new Date() %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재의 시각</title>
</head>
<body>
	[오늘의 날짜]<fmt:formatDate value = "${date}"/><br>
	[현재의 시각]<fmt:formatDate value = "${date}" type = "time"/>
	<br><br>	
	[ShortV]<fmt:formatDate value = "${date}" type = "both" dateStyle="short" timeStyle = "short"/><br>
	[MediumV]<fmt:formatDate value = "${date}"  type = "both" dateStyle="medium" timeStyle = "medium"/><br>
	[LongV]<fmt:formatDate value = "${date}" type = "both" dateStyle="long" timeStyle = "long"/><br>
	[FullV]<fmt:formatDate value = "${date}" type = "both" dateStyle="full" timeStyle = "full"/><br>
	<br>
	[오늘의 날짜]<fmt:formatDate value="${date}" type="time" pattern = "yyyy/MM/dd(E)"/><br>
	[현재의 시각]<fmt:formatDate value="${date}" type="time" pattern = "(a)hh:mm:ss"/><br>
	<br>
	첫번째 수 : <fmt:formatNumber value="123400" groupingUsed="true"/><br>
	두번째 수 : <fmt:formatNumber value="3.14158" pattern = "#.##"/><br>
	세번째 수  : <fmt:formatNumber value="10.5" pattern ="#.00"/><br>		
	<br>
	금액: <fmt:formatNumber value="1000000" type="currency" currencySymbol="￦"/><br>
	퍼센트:<fmt:formatNumber value="0.99" type ="percent"/>		

</body>
</html>