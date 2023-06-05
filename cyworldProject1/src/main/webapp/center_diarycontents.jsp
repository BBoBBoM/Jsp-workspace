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
List<String> diary_contents = new ArrayList<>();
List<String> diary_date = new ArrayList<>();
try {
	String sql = "select * from diary where user_id=? order by diary_date DESC; ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_id);
	ResultSet rs = pstmt.executeQuery();
	while (rs.next()) {
		String diary_contents1 = rs.getString("diary_content");
		String diary_date1 = rs.getString("diary_date");
		diary_contents.add(diary_contents1);
		diary_date.add(diary_date1);
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

#center_diarycontentsdiv {
	box-sizing: border-box;
	width: 685px;
	float: left;
	height: 680px;
	border: 1px solid rgb(109, 30, 255);
	margin-left: 13px;
	margin-top: 15px;
}

#center_diarycontentsdiv1 {
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

#center_diary_contents {
	width: 550px;
	height: 300px;
	border: 1px solid red;
	margin-left: 45px;
	margin-top: 130px;
}

#center_diary_calendar {
	width: 550px;
	height: 100px;
	border: 1px solid rgb(233, 19, 161);
	margin-left: 45px;
	position: fixed;
}

table {
	border-collapse: collapse;
}

td {
	border: 1px solid black;
	line-height: 23px;
	text-align: center;
}

#calendar {
	width: 550px;
	height: 100px;
	border: 1px solid;
}

input {
	height: 20px;
	font-size: 15px;
	margin-bottom: 3px;
}

#wrap {
	width: 550px;
	height: 100px;
}
.center_diary_box{	width: 550px;
	height: 300px;}
</style>


</head>
<body>
	<div id="center_diarycontentsdiv">
		<div id="center_diarycontentsdiv1">
			<div id="center_diary_calendar">
				<div id="calendar">
					<div id="wrap">


						<script>
							let date = new Date();
							let currentMonth = date.getMonth();

							function prev() {
								date.setMonth(date.getMonth() - 1);
								cal();
							}

							function next() {
								date.setMonth(date.getMonth() + 1);
								cal();
							}
							function cal() {
								let month = date.getMonth();
								let year = date.getFullYear();

								let str = "";

								str += "<table>";

								str += "<tr >";
								str += "<th colspan='21' style='width:550px;'>"
										+ "<input type='button' value='<<' onclick='prev()'>"
										+ "&nbsp;"
										+ "&nbsp;"
										+ year
										+ "년 "
										+ (month + 1)
										+ "월"
										+ "&nbsp;"
										+ "&nbsp;"
										+ "<input type='button' value='>>' onclick='next()'>"
										+ "</th>";
								str += "</tr>";

								str += "<tr>";
								str += "<td>일</td>";
								str += "<td>월</td>";
								str += "<td>화</td>";
								str += "<td>수</td>";
								str += "<td>목</td>";
								str += "<td>금</td>";
								str += "<td>토</td>";
								str += "<td>일</td>";
								str += "<td>월</td>";
								str += "<td>화</td>";
								str += "<td>수</td>";
								str += "<td>목</td>";
								str += "<td>금</td>";
								str += "<td>토</td>";
								str += "<td>일</td>";
								str += "<td>월</td>";
								str += "<td>화</td>";
								str += "<td>수</td>";
								str += "<td>목</td>";
								str += "<td>금</td>";
								str += "<td>토</td>";
								str += "</tr>";

								// 이전 달의 마지막 날짜
								let prevMonthLastDate = new Date(year, month, 0)
										.getDate();

								// 현재 달의 첫 번째 요일
								let firstDay = new Date(year, month, 1)
										.getDay();

								// 현재 달의 마지막 날짜
								let lastDate = new Date(year, month + 1, 0)
										.getDate();

								let cnt = 1;

								for (let i = 0; i < 2; i++) {
									str += "<tr >";

									for (let j = 0; j < 21; j++) {
										if (i === 0 && j < firstDay) {
											let prevDate = prevMonthLastDate
													- firstDay + j + 1;
											str += "<td >" + " " + "</td>";
										} else if (cnt <= lastDate) {
											str += "<td >" + cnt + "</td>";
											cnt++;
										} else {
											str += "<td >&nbsp;</td>";
										}
									}

									str += "</tr>";
								}

								str += "</table>";

								document.getElementById("wrap").innerHTML = str;
							}
							cal();
						</script>
					</div>
				</div>
			</div>
			<div id="center_diary_contents">

				<%if (!diary_contents.isEmpty()) {
				    for (int i =0; i<diary_contents.size();i++) {
				        %>
				        <div class="center_diary_box">
				        <%=diary_date.get(i) %>
				            <%= diary_contents.get(i) %>
				        </div><br><br>
				        <%
				    }
				} else {
				    %>
				    <div class="center_diary_box">일기를 열심히 쓰지 않았군요 일기를 씁시다
				    </div>
				    <%
				}
		
				%>
			</div>




		</div>

	</div>
</body>
</html>