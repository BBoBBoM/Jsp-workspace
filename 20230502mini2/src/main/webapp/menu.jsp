<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
String sessionid = (String) session.getAttribute("sessionId");
%>
<style>
#navdiv {
	background-color: aquamarine;
}
 
nav {
	text-align: left;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin-left: 20px;
	list-style: none;
	padding: 20px;
}
</style>

<div id="navdiv">
	<nav>
	<div>
<div><a href = "${pageContext.request.contextPath} }"></a></div></div>
		<a href="welcome.jsp">Home</a> <a href="product.jsp">Product</a> <a
			href="addproduct.jsp">Add Product</a>
	</nav>
</div>