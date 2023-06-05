<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String result= request.getParameter("success");
    String id,password,name;
    id = (String)session.getAttribute("user_id");
    password = (String)session.getAttribute("user_pw");
    name = (String)session.getAttribute("user_name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table  border="1" cellpadding="7" style="border-collapse:collapse;">  
            <tr>
                <td width = "150" class="j-spot"><label for="user_id">아이디</label></td>
                <td width = "500"><%=id %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw">비밀번호</label></td>
                <td><%=password %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw_chk">이름</label></td>
                <td><%=name %></td>
            </tr>
             <tr>
                <td colspan="2" align="center" bgcolor="pink">회원등록이 완료되었습니다.</td>
            </tr>
            </table>
            
            
</body>
</html>