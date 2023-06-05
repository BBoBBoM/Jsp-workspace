<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
	String winners[] = new String[3];
	winners[0]="울트라맨";
	winners[1]="슈퍼맨";
	winners[2]="배트맨";
	request.setAttribute("WINNERS",winners);
	RequestDispatcher dispatcher = 
			request.getRequestDispatcher("winnersView.jsp");
	dispatcher.forward(request,response);
	

%>