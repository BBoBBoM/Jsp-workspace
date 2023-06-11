<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>배송정보</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp"></jsp:include></div>
	<div>
		<form action="cookieinfo.jsp">
			<input type="hidden" name="id"
				value="<%=request.getParameter("id")%>" />
			<div>
				<label>성명</label>
				<div>
					<input type="text" name="name" placeholder="성명" />
				</div>
			</div>
			<div>
				<label>배송일</label> <input type="text" name="deliverdate"
					placeholder="yyyy/mm/dd" />
			</div>

			<div>
				<label>국가명</label> <input type="text" name="country"
					placeholder="국가명" />
			</div>

			<div>
				<label>우편번호</label> <input type="text" name="addressnum"
					placeholder="우편번호" />
			</div>
			<div>
				<label>주소</label> <input type="text" name="addressname"
					placeholder="주소" />
			</div>
			<div>
				<div>
					<a href="jangbaguni.jsp?id=<%=request.getParameter("id")%>"></a> <input
						type="submit" value="등록" /> <a href="ordercancel.jsp"> 취소</a>


				</div>

			</div>
		</form>
	</div>
</body>
</html>