<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="dto.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
String id = session.getId();
DecimalFormat dFormat = new DecimalFormat("###,###");
%>
</head>

<body>
	<header><%@ include file="menu.jsp"%></header>
	<div>
		<h1>장바구니</h1>
	</div>
	<div>
		<div>
			<a href="deleteBaguniAll.jsp?id=<%=id%>">삭제하기</a>
		</div>
		<div>
			<a href="jangbaguniOrderProduct.jsp">주문하기</a>
		</div>
	</div>
	<div>
		<table>
			<tr>
				<th>상품</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
			</tr>
			<%
			int sum = 0;
			ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
			if (cartlist == null) {
				cartlist = new ArrayList<>();
			}
			for (int i = 0; i < cartlist.size(); i++) {
				Product product = cartlist.get(i);
				int total = product.getUnitprice() * product.getOrdernum();
				sum += total;
			%>
			<tr>
				<td><%=product.getProductId()%>-<%=product.getPname()%></td>
				<td><%=dFormat.format(product.getUnitprice())%></td>
				<td><%=product.getOrdernum()%></td>
				<td><%=dFormat.format(total)%></td>
				<td><a
					href="deletebaguniproduct.jsp?id=<%=product.getProductId()%>">삭제</a></td>
			</tr>
			<%
			}
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=dFormat.format(sum)%></th>
				<th></th>
			</tr>
		</table>
		<a href="product.jsp">쇼핑 계속하기</a>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>