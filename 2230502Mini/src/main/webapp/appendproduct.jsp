<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Productrepository"%>
<%@ page import="dto.Product"%>
<%@page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");

String uploadPath = request.getRealPath("img");
int size = 10 * 1024 * 1024;
String name = "";
String subject = "";
String filename1 = "";


	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf8", new DefaultFileRenamePolicy());



	Enumeration files = multi.getFileNames();
	String file1 = (String) files.nextElement();
	filename1 = multi.getFilesystemName(file1);

	    
String productId = multi.getParameter("productId");
Integer unitPrice = Integer.parseInt(multi.getParameter("unitPrice"));
String pname = multi.getParameter("pname");
String description = multi.getParameter("description");
String maker = multi.getParameter("maker");
String category = multi.getParameter("category");
long unitsinstock = Long.parseLong(multi.getParameter("unitsinstock"));
String condition = multi.getParameter("condition");

Productrepository dao = Productrepository.getInstance();
Product newproduct = new Product();

newproduct.setProductId(productId);
newproduct.setUnitprice(unitPrice);
newproduct.setPname(pname);
newproduct.setDescription(description);
newproduct.setMaker(maker);
newproduct.setCategory(category);
newproduct.setUnitsinstock(unitsinstock);
newproduct.setCondition(condition);
newproduct.setImageName(filename1);

dao.addproduct(newproduct);

response.sendRedirect("product.jsp");
%>