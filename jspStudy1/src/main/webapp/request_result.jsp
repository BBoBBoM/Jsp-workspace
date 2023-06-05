<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        table {
            border: 1px solid;
            border-collapse: collapse;
        }

        td {
            border: 1px solid;
            padding: 5px;
        }
    </style>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String job= request.getParameter("job");
	String []favorite= request.getParameterValues("favorite");
	

	%>

</head>
<body>
	<h2>request 테스트결과 -1</h2>
	<table>
		<tr>
			<td>이름</td>
			<td><%=username %></td>
		
		</tr>
		<tr>
			<td>직업</td>
			<td><%=job %>
		</tr>
		
		<tr>
			<td>관심분야</td>
			<td><%if(favorite==null){out.print("취미없음");}
			else{ for(int i=0;i<favorite.length;i++){out.print(favorite[i]+" ");}}%>
			
			<!-- java5.0코드 for(String favorite:favorites){out.println(favorite+"<br>"} -->
			</td>
			
		</tr>
		
	</table>
	<hr>
	<h2>request 테스트결과 -2</h2>
		<table border=0>
			<tr>
				<td>
					1.클라이언트 IP 주소 : <%= request.getRemoteAddr()%><br>
					
					2.요청 메서드 : <%=request.getMethod() %>
					<% Cookie cookie[]=request.getCookies();%><br>
					
					3.<%= cookie[0].getName() %> 쿠키값 : <%=cookie[0].getValue() %><br>
					
					4. 프로토콜 : <%= request.getProtocol() %>
				</td>
				
			</tr>
		</table>
</body>
</html>