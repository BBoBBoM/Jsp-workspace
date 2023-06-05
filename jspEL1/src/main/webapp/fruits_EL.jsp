<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<%
	ArrayList<String> items = new ArrayList<String>();
items.add("딸기");
items.add("천혜향");
items.add("복숭아");
request.setAttribute("FRUITS",items);
RequestDispatcher dispatcher = request.getRequestDispatcher("fruitsView.jsp");
dispatcher.forward(request,response);




%>