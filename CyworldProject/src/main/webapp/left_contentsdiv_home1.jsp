<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ include file="dbconn.jsp"%>
    
    
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
String user_id = (String) session.getAttribute("sessionId");
PreparedStatement pstmt;
String user_name = "";
String email = "";
String user_profile_photo = "";
String user_hello_word = "";
try {
    String sql = "select * from user where user_id=?";
    String sql1 = "select * from profile where user_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, user_id);
    ResultSet rs = pstmt.executeQuery();
    while (rs.next()) {
        user_name = rs.getString("user_name");
        email = rs.getString("email");
    }
    pstmt = conn.prepareStatement(sql1);
    pstmt.setString(1, user_id); // user_id 값을 설정해야 합니다.
    ResultSet rs1 = pstmt.executeQuery();
    while (rs1.next()) {
        user_profile_photo = rs1.getString("user_profile_photo");
        user_hello_word = rs1.getString("user_hello_word");
    }
} catch (SQLException e) {
    e.printStackTrace();
}

%>
<html>
<head>
<meta charset="UTF-8">
<link href="left_contentsdiv_home.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>

</head>
<body>

<div id="left_contentsdiv">
		<div id="left_contentsdiv1">

			<div id="left_contents_userinfo">
				<div id="user_profileimg" style="background:url(userprofileimg/<%=user_profile_photo%>) no-repeat center;background-size: contain;">

				</div>
				<div id="today_feeling"> 오늘의 기분은 우울</div>
				<div id="myself_introduce" ><%=user_hello_word %></div>
				<div id="user_name_email">
                    <%=user_name %>
					<br><%=email %></div>
				<div id="cousin_select"></div>

			</div>
		</div> 


	 </div> 
</body>
</html>