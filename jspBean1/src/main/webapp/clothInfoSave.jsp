<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean class = "product.Clothing" id= "pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property= "code" value="7002"/>
<jsp:setProperty name="pinfo" property= "name" value="반팔 티셔츠"/>
<jsp:setProperty name="pinfo" property= "price" value="15000"/>
<jsp:setProperty name="pinfo" property= "size" value="M"/>
<jsp:setProperty name="pinfo" property= "color" value="베이지"/>

<html>
<head>
<meta charset="UTF-8">
<title>의류 정보관리</title>
</head>
<body>
	의류 정보가 저장되었습니다.<br>
	---------------------------<br>
	<h3>제품 개략 정보</h3>
	<jsp:include page="productinfo.jsp"/><br>
</body>
</html>