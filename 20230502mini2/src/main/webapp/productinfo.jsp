<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Productrepository"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#proinfodiv {
	float: left;
}

}
#proimgdiv {
	width: 500px;
	height: 500px;
	float: left;
}

img {
	width: 450px;
	height: 450px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	box-sizing: border-box;
}

#proinfoAll {
	float: left;
}
</style>
</head>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
Productrepository dao = Productrepository.getInstance();
Product product = dao.getProductByID(id);
ArrayList<Product> list = Productrepository.getInstance().getAllProducts();

String productId = null;
Integer unitPrice = 0;
String pname = null;
String description = null;
String maker = null;
String category = null;
long unitsinstock = 0;
String condition = null;
String imageName = null;

for (int i = 0; i < list.size(); i++) {
	if (id.equals(list.get(i).getProductId())) {
		productId = id;
		unitPrice = list.get(i).getUnitprice();
		pname = list.get(i).getPname();
		description = list.get(i).getDescription();
		maker = list.get(i).getMaker();
		category = list.get(i).getCategory();
		unitsinstock = list.get(i).getUnitsinstock();
		condition = list.get(i).getCondition();
		imageName = list.get(i).getImageName();
	}
}
%>
<body>
	<header><%@ include file="menu.jsp"%></header>
	<div id="listdiv">상품상세정보</div>
	<div id="proinfoAll">
		<div id="proimgdiv">
			<img src="img/<%=imageName%>">
		</div>
		<div id="proinfodiv">
			제품코드:
			<%=productId%><br> 제품이름:<%=pname%><br> 제품가격:<%=unitPrice%><br>
			상세서명:<%=description%><br> 제조사:<%=maker%><br> 제품분류:<%=category%><br>
			제품재고:<%=unitsinstock%><br> 제품상태:<%=condition%><br>
		</div>
	</div>
	<form action="addjangbaguni.jsp?id=<%product.getProductId();%>"
		method="post">
		<a href="#" onclick="baguni()">상품 주문</a> <a href="jangbaguni.jsp"
			onclick="baguni()">장바구니</a> <a href="product.jsp">상품목록</a>
	</form>
	<script type="text/javascript">
		function baguni() {
			if (confirm('해당상품을 장바구니에 추가하실래요')) {
				document.addForm.submit();
			} else {
				document.addForm.reset();
			}
		}
	</script>
</body>
</html>