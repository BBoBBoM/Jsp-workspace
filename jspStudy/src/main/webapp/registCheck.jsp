<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String user_name= request.getParameter("user_name");
	String user_nick= request.getParameter("user_nick");
	String yy= request.getParameter("yy");
	String email= request.getParameter("user_email_id")+"@"+request.getParameter("user_email_domain");
	
	session.setAttribute("user_id",user_id);
	session.setAttribute("user_pw",user_pw);
	session.setAttribute("user_name",user_name);
	
	%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action=registCondition.jsp method=post>
<h1>입력한 회원 정보가 맞습니까?</h1>
<br>
	<!-- table cellspacing 셀들의 간격, table cellpadding 데이터와 셀의 간격 조절. 콜렉스 이용 이웃하는 셀 경계선 합쳐서 단일선 표시 -->
    <table  border="1" cellpadding="7" style="border-collapse:collapse;">  
            <tr>
                <td width = "150" class="j-spot"><label for="user_id">아이디</label></td>
                <td width = "500"><%=user_id %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw">비밀번호</label></td>
                <td><%=user_pw %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw_chk">이름</label></td>
                <td><%=user_name %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_name">별명</label></td>
                <td><%=user_nick %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_nick">생년월일</label></td>
                <td><%=yy %></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw">메일주소</label></td>
                <td><%=email %></td>
            </tr>
          
          <tr>
                <td colspan="2" align="center" bgcolor="pink"><input type="submit" value="입력확인"></td>
            </tr>
         </table>
         </form>
</body>
</html>