<%@ page langu liage="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.*"%>
<%@ page import="dto.Productrepository"%>
<%@ page import="dto.Product"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품주문</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	Productrepository dao = Productrepository.getInstance();
	Product product = dao.getProductByID(id);
	ArrayList<Product> productlist = dao.getAllProducts();
	Product pro = new Product();
	for (int i = 0; i < productlist.size(); i++) {
		pro = productlist.get(i);
		if (pro.getProductId().equals(id)) {
			break;
		}
	}
	ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartlist");
	if (list == null) {
		list = new ArrayList<>();
		session.setAttribute("cartlist", list);
	}
	int cnt = 0;
	Product procnt = new Product();
	for (int i = 0; i < list.size(); i++) {
		procnt = list.get(i);
		if (procnt.getProductId().equals(id)) {
			cnt++;
			int ordercnt = procnt.getOrdernum() + 1;
			procnt.setOrdernum(ordercnt);
		}
	}
	if (cnt == 0) {
		pro.setOrdernum(1);
		list.add(pro);
	}
	response.sendRedirect("product.jsp?id=" + id);
	%>
</body>
</html>