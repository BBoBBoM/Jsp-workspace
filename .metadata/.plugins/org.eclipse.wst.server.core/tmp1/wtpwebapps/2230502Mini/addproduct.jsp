<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#listdiv{font-size:40px;margin-left : 30px;}
</style>
<body>
<header><%@ include file = "menu.jsp" %></header>
<div id="listdiv"> 상품목록</div>
<form action="appendproduct.jsp" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>상품코드</td>
<td><input type="text" name ="productId"></td>
</tr>
<tr>
<td>상품명</td>
<td><input type="text" name ="pname"></td>
</tr>
<tr>
<td>가격</td>
<td><input type="text" name ="unitPrice"></td>
</tr>
<tr>
<td>상세정보</td>
<td><input type="text" name ="description"></td>
</tr>
<tr>
<td>제조사</td>
<td><input type="text" name ="maker"></td>
</tr>
<tr>
<td>분류</td>
<td><input type="text" name ="category"></td>
</tr>
<tr>
<td>재고수</td>
<td><input type="text" name ="unitsinstock"></td>
</tr>
<tr>
<td>상태</td>
<td><input type="radio" name="condition" value="신규제품">신규제품
<input type="radio" name="condition" value="중고제품">중고제품
<input type="radio" name="condition" value="재생제품">재생제품</td>

</tr>
<tr>
<td>이미지</td>
<td><input name="imgname" type="file" /></td>
</tr>

</table>
<input type="submit">
</form>
</body>
</html>