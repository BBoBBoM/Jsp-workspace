<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Productrepository"%>
<%@ page import="dto.Product"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8");
ArrayList<Product> list =  Productrepository.getInstance().getAllProducts();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#listdiv{font-size:40px;margin-left : 30px;}


div{border:1px solid;}
#boxdiv{width: 1000px;margin:0 auto;}
.productdiv{width: 300px;float: left;margin-left : 30px;}
.display{width:300px;height:300px;border-radius: 10px;background-repeat: no-repeat;background-position:center ;background-size: cover;}
</style>
<body>

<header><%@ include file = "menu.jsp" %></header>
<div id="listdiv"> 상품목록</div>
<div id="boxdiv">
    <%for(int i =0; i<list.size();i++){
        Product product = list.get(i);%>
     
    <div class="productdiv" >
        <div class="display" style="background: url(img/<%=product.getImageName()%>) center; background-size: cover;">
		</div>	
        <h3><%=product.getPname() %></h3>
        <%=product.getDescription() %><br>
        
        <%=product.getUnitprice() %> <a href="productinfo.jsp?id=<%=product.getProductId() %>">
        <input type="button" name="<%=product.getProductId() %>" value="상세정보"></a>
    </div>
<%}%>
</div>
<%@ include file = "footer.jsp" %>
</body>

</html>