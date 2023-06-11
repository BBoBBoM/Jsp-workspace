<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
request.setCharacterEncoding("utf-8");
DecimalFormat dFormat = new DecimalFormat("###,###");
String cartid = session.getId();

String id = "";
String name = "";

String deliverdate = "";
String country = "";

String addressnum = "";
String addressname = "";

Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String str = thisCookie.getName();
		if (str.equals("id")) {
	id = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}

		if (str.equals("name")) {
	name = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}
		if (str.equals("deliverdate")) {
	deliverdate = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}
		if (str.equals("country")) {
	country = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}
		if (str.equals("addressnum")) {
	addressnum = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}
		if (str.equals("addressname")) {
	addressname = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}

	}
}
%>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div>
		<div>
			<h1>주문 정보</h1>
		</div>
	</div>
	<div>
		<div>
			<h1>영수증</h1>
		</div>
		<div>
			<div>
				<strong>배송주소</strong><br> 성명 :
				<%
				out.println(name);
				%><br> 우편번호 :
				<%
				out.println(addressnum);
				%><br> 주소 :
				<%
				out.println(addressname);
				%><br>
			</div>
			<div>
				<p>
					<em>배송일 : <%
					out.println(deliverdate);
					%></em>
				</p>
			</div>
		</div>
		<div>
			<table>
				<tr>
					<th>물품</th>
					<th>수량</th>
					<th>가격</th>
					<th>소계</th>

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
					<th><em><%=product.getPname()%></em></th>
					<th><em><%=product.getOrdernum()%></em></th>
					<th><em><%=dFormat.format(product.getUnitprice())%></em></th>
					<th><em><%=dFormat.format(total)%>원</em></th>
				</tr>
				<%
				}
				%>
				<tr>
					<td><em></em></td>
					<td><em></em></td>
					<td><strong>총액 : </strong></td>
					<td><strong><%=dFormat.format(sum)%>원</strong></td>
				</tr>





			</table>
			<a href="jangbaguniOrderProduct.jsp?id=<%=id%>"> 이전</a> <a
				href="ordercomplete.jsp"> 주문완료</a> <a href="cancelinordercheck.jsp">취소</a>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>