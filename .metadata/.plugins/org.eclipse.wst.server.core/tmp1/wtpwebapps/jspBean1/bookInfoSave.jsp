<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean class = "product.Books" id= "pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property= "code" value="50001"/>
<jsp:setProperty name="pinfo" property= "name" value="의뢰인"/>
<jsp:setProperty name="pinfo" property= "price" value="9000"/>
<jsp:setProperty name="pinfo" property= "writer" value="존 그리샴"/>
<jsp:setProperty name="pinfo" property= "page" value="704"/>

<html>
<head>
<meta charset="UTF-8">
<title>책 정보 관리</title>
</head>
<body>
	책 정보가 저장되었습니다.<br>
	---------------------------<br>
	<h3>제품 개략 정보</h3>
	<jsp:include page="productinfo.jsp"/><br>

</body>
</html>