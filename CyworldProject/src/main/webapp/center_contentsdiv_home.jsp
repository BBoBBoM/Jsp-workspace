<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ include file="dbconn.jsp"%>

    <%
request.setCharacterEncoding("UTF-8");
String user_id = (String) session.getAttribute("sessionId");
PreparedStatement pstmt;
String user_miniroom_file ="";
try {

    String sql1 = "select * from profile where user_id=?";

    pstmt = conn.prepareStatement(sql1);
    pstmt.setString(1, user_id); // user_id 값을 설정해야 합니다.
    ResultSet rs1 = pstmt.executeQuery();
    while (rs1.next()) {
		user_miniroom_file =rs1.getString("user_miniroom_file");
	
    }

} catch (SQLException e) {
    e.printStackTrace();
}

%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="center_contentsdiv_home.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="center_contentsdiv1">
      
            <div id="center_contents">
                <div id="center_innerdiv1">
                    <div id="center_newupdate"></div>
                    <div id="center_contents_atag"></div>
                </div>
                 
                <div id="center_miniroom" style="background:url(userprofileimg/<%=user_miniroom_file%>) no-repeat center;background-size: contain;">

                </div>
                <div id="center_comment"></div>
            </div>
    </body>
    </html>