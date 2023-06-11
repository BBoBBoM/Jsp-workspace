<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="dto.Productrepository"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");

	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product.jsp");
	}
	ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
	Product procnt = new Product();
	for (int i = 0; i < cartlist.size(); i++) {
		procnt = cartlist.get(i);
		if (procnt.getProductId().equals(id)) {
			cartlist.remove(procnt);
		}
	}
	response.sendRedirect("jangbaguni.jsp");
	%>
</body>
</html>
