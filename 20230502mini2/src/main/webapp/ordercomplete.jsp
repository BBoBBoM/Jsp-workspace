<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLDecoder"%>
<%
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
		if (str.equals("deliverdate")) {
	deliverdate = URLDecoder.decode(thisCookie.getValue(), "utf-8");
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ֹ� �Ϸ�</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div>
		<div>
			<h1>�ֹ� �Ϸ�</h1>
		</div>
	</div>
	<div>
		<h2>�ֹ��� �ּż� �����մϴ�.</h2>
	</div>
	<div>
		<p>
			�ֹ���
			<%
		out.println(deliverdate);
		%>�� ��۵� �����Դϴ�.
		</p>
		<p>
			�ֹ���ȣ :
			<%
		out.println(id);
		%>
		</p>
	</div>
	<div>
		<p>
			<a href="product.jsp">��ǰ ���</a>
		</p>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>

<%
session.invalidate();
for (int i = 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];
	String str = thisCookie.getName();
	if (str.equals("id")) {
		thisCookie.setMaxAge(0);
	}
	if (str.equals("name")) {
		thisCookie.setMaxAge(0);
	}
	if (str.equals("deliverdate")) {
		thisCookie.setMaxAge(0);
	}
	if (str.equals("country")) {
		thisCookie.setMaxAge(0);
	}
	if (str.equals("addressnum")) {
		thisCookie.setMaxAge(0);
	}
	if (str.equals("addressname")) {
		thisCookie.setMaxAge(0);
	}
	response.addCookie(thisCookie);

}
%>