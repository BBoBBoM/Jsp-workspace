<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String name= (String)session.getAttribute("name");%> 
   <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>상품확인</h1>
<%=name %>님 선택한 상품 목록<hr>
<%//application 객체의 속성인 fruitsList를 arraylist class인 list에 저장
ArrayList list = (ArrayList)session.getAttribute("fruitsList");
if(list ==null){out.println("선택한 상품이 없습니다.!!!");}else{for(Object fruitsList:list){out.println(fruitsList+"<br>");}}

%>
</div>
</body>
</html>