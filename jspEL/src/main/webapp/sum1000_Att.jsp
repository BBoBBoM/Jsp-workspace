<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	int sum =0;
	for(int cnt=1;cnt<=1000;cnt++)
	sum+=cnt;
	request.setAttribute("RESULT",new Integer(sum));
	RequestDispatcher dispatcher = request.getRequestDispatcher("sum1000_Result.jsp");
	dispatcher.forward(request,response);
	%>