<%@ page contentType="text/html; charset=utf-8"%>

<%@ page errorPage="exceptionNoProductId.jsp"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 페이지 디렉티브 -->
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) { //확인
			document.addForm.submit(); //이 이름(addForm)을 가진 폼 태그를 서버에 전송하겠다는 것(폼 태그의 action으로 이동하겠다는 것)
		} else { //취소
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">상품 정보</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>	
	<div class="container">
		<%
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		String sql = "select * from product where p_id=?";	
		pstmt = conn.prepareStatement(sql);
		String productId = request.getParameter("id");	
		pstmt.setString(1, productId);	
		rs = pstmt.executeQuery();	
		if(rs.next()){	
		
		%>
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>"
					style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p>
					<b>상품 코드: </b><span class="badge badge-danger"><%=rs.getString("p_id")%></span>
				<p>
					<b>제조사: </b><%=rs.getString("p_manufacturer")%>
				<p>
					<b>분류: </b><%=rs.getString("p_category")%>
				<p>
					<b>재고 수: </b><%=rs.getString("p_unitsInStock")%>
				<h4>
					<fmt:formatNumber value="<%=rs.getString(\"p_unitPrice\")%>" pattern="#,###" />원</h4>
				<p>
				<form name="addForm" method="post"
					action="./addCart.jsp?id=<%=rs.getString("p_id")%>">
					<!-- id를 가지고 addCart.jsp파일로 이동 -->
					<a href="#" class="btn btn-info" onclick="addToCart()">상품
						주문&raquo;</a> <a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
				</form>
			</div>
		</div>
		<%
		}
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		if(rs != null)
			rs.close();
		%>
	</div>
	<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>