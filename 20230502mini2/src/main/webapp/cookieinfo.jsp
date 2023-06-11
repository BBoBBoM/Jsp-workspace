<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder"%>

<%
request.setCharacterEncoding("utf-8");
Cookie id = new Cookie("id", URLEncoder.encode(request.getParameter("id"), "utf-8"));
Cookie name = new Cookie("name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
Cookie deliverdate = new Cookie("deliverdate", URLEncoder.encode(request.getParameter("deliverdate"), "utf-8"));
Cookie country = new Cookie("country", URLEncoder.encode(request.getParameter("country"), "utf-8"));
Cookie addressnum = new Cookie("addressnum", URLEncoder.encode(request.getParameter("addressnum"), "utf-8"));
Cookie addressname = new Cookie("addressname", URLEncoder.encode(request.getParameter("addressname"), "utf-8"));

id.setMaxAge(60 * 60 * 24);
name.setMaxAge(60 * 60 * 24);
deliverdate.setMaxAge(60 * 60 * 24);
country.setMaxAge(60 * 60 * 24);
addressnum.setMaxAge(60 * 60 * 24);
addressname.setMaxAge(60 * 60 * 24);

response.addCookie(id);
response.addCookie(name);
response.addCookie(deliverdate);
response.addCookie(country);
response.addCookie(addressnum);
response.addCookie(addressname);

response.sendRedirect("ordercheck.jsp");
%>