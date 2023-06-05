<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="mall.ProductInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%ProductInfo product = new ProductInfo();
product.setName("초코케이크3호");
product.setPrice(20000);
request.setAttribute("PRODUCT",product);
RequestDispatcher dispatcher = request.getRequestDispatcher("productView.jsp");
dispatcher.forward(request,response);%>

<body>
	
</body>
</html>