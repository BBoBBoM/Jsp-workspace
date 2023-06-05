
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
String cyworld_url = "";
String user_mini_subject = "";
String user_miniroom_file ="";
try {
    String sql = "select * from user where user_id=?";
    String sql1 = "select * from profile where user_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, user_id);
    ResultSet rs = pstmt.executeQuery();
    while (rs.next()) {
    	cyworld_url = rs.getString("cyworld_url");
    }
    pstmt = conn.prepareStatement(sql1);
    pstmt.setString(1, user_id); // user_id 값을 설정해야 합니다.
    ResultSet rs1 = pstmt.executeQuery();
    while (rs1.next()) {
    	user_mini_subject = rs1.getString("user_mini_subject");
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
</head>
<body>
	<style>
		* {
			margin: 0 auto;
			box-sizing: border-box;
			list-style: none;
		}
		
		#mini_container {
			width: 1400px;
			height: 850px;
			border: 1px solid;
			position: relative;
		}
		
		#mini_background1 {
			width: 100%;
			height: 100%;
			background: url(background/background.png) no-repeat center;
			background-size: cover;
			position: absolute;
		}
		
		#mini_background2 {
			width: 95%;
			height: 95%;
			margin-top: 25px;
			border: 1px solid blue;
			background: url(background/outer.png) no-repeat center;
			background-size: cover;
			background-size: 100% 100%;
		}
		
		#all_contentsdiv {
			width: 1300px;
			height: 800px;
			border: 1px solid red;
		}
		
		#left_contentsborderdiv {
			float: left;
			margin-top: 10px;
			width: 375px;
			border: 1px solid;
			height: 760px;
		}
		
		#center_contentsdiv {
			margin-top: 10px;
			box-sizing: border-box;
			margin-right: 0px;
			width: 700px;
			float: left;
			height: 760px;
			border: 1px solid rgb(63, 231, 236);
		}
		
		#center_subject {
			margin-left: 23px;
			height: 6%;
			border: 1px solid;
			margin-top: 30px;
		}
		
		#left_contents_visitrate {
			margin-left: 48px;
			margin-top: 35px;
			margin-bottom: 0px;
			width: 80%;
			height: 5%;
			border: 1px solid rgb(6, 243, 38);
		} 
		
		#right_contentsdiv_border {
			width: 200px;
			height: 760px;
			float: left;
			margin: 10px 0px;
			padding: 0px;
			position: relative;
			border: 1px solid brown;
		}
		</style>
</head>

<body>
	<div id="mini_container">
		<div id="mini_background1">
			<div id="mini_background2">
				<div id="all_contentsdiv">
					<div id="left_contentsborderdiv">
						<div id="left_contents_visitrate">
						<label>Today 38 || Total 1000</label></div>
						<iframe src="left_contentsdiv_home1.jsp" name="iframehome"
							frameborder="0" style="width: 100%; height: 100%;" scrolling="no"></iframe>


					</div>

					<div id="center_contentsdiv">
						<div id="center_subject">
							<p><%=user_mini_subject%></p>
							<p><%=cyworld_url%></p>
						</div>
						<iframe src="center_contentsdiv_home.jsp" name="iframehome"
							frameborder="0" style="width: 100%; height: 100%;" scrolling="no"></iframe>

					</div>
					<div id="right_contentsdiv_border">
						<iframe src="right_contentsdiv2.html" frameborder="0"
							style="width: 100%; height: 100%;" scrolling="no"></iframe>
					</div>

				</div>
			</div>
		</div>


	</div>


	</div>


</body>
</html>