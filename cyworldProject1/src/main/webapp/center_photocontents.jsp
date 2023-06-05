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
List<String> photo_url = new ArrayList<>();
List<String> photo_contents = new ArrayList<>();
List<String> photo_date = new ArrayList<>();
try {
	String sql = "select * from photo where user_id=? order by photo_date DESC; ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_id);
	ResultSet rs = pstmt.executeQuery();
	while (rs.next()) {
		String photo_url1 = rs.getString("photo_url");
		String photo_contents1 = rs.getString("photo_contents");
		String photo_date1 = rs.getString("photo_date");
		photo_url.add(photo_url1);
		photo_contents.add(photo_contents1);
		photo_date.add(photo_date1);
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
<style>
* {
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
}

#center_photocontentsdiv {
	box-sizing: border-box;
	width: 685px;
	float: left;
	height: 680px;
	border: 1px solid rgb(109, 30, 255);
	margin-left: 13px;
	margin-top: 15px;
}

#center_photocontentsdiv1 {
	box-sizing: border-box;
	width: 650px;
	float: right;
	height: 630px;
	border: 1px solid rgb(70, 144, 241);
	margin-left: 13px;
	margin-top: 20px;
	word-wrap: break-word;
	overflow-y: scroll;
}

#center_photo_contents {
	width: 550px;
	height: 300px;
	border: 1px solid red;
	margin-left: 45px;
	margin-top: 130px;
}


#wrap {
	width: 550px;
	height: 100px;
}
.center_photo_box{	width: 550px;
	height: 300px;}
</style>


</head>
<body>
	<div id="center_photocontentsdiv">
		<div id="center_photocontentsdiv1">
			<div id="center_photo_calendar">

			</div>
			<div id="center_photo_contents">

				<%if (!user_id.isEmpty()) {
				    for (int i =0; i<photo_date.size();i++) {
				        %>
				        <div class="center_photo_box">
				        <%=photo_date.get(i) %>
				       <img alt="" src="userprofileimg/<%=photo_url.get(i)%>">
				            <%= photo_contents.get(i) %>
				        </div><br><br>
				        <%
				    }
				} else {
				    %>
				    <div class="center_photo_box">사진이 없네요 업로드 해봐요 
				    </div>
				    <%
				}
		
				%>
			</div>




		</div>

	</div>
</body>
</html>