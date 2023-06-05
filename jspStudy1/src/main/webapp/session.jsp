<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h2>session 예제</h2>
	<hr>
	<%//isNew()메서드를 이용해 최초세션 설정을 확인하고 있다.
		if(session.isNew()){out.println("<script> alert('세션이 해제되어 다시 설정합니다.')</script>");
		session.setAttribute("login","홍길동");}%>
		#<%= session.getAttribute("login") %>님 환영합니다.!!!</div>
		
		<body>

<hr/>
<%
    // 고유한 세션 객체의 ID를 되돌려준다.
    String id_str = session.getId();

    // 세션에 마지막으로 엑세스한 시간을 되돌려 준다.
    long lasttime = session.getLastAccessedTime();
   
    // 세션이 생성된 시간을 되돌려 준다.
    long createdtime = session.getCreationTime();
   
    // 세션에 마지막으로 액세스한 시간에서 세션이 생성된 시간을 빼면 웹 사이트에 머문 시간이 계산된다.
    long time_used = (lasttime - createdtime) / 60000;
   
    // 세션의 유효 시간 얻어오기
    int inactive = session.getMaxInactiveInterval() / 60;
   
    // 세션이 새로 만들어졌는지를 알려준다.
    boolean b_new = session.isNew();
%>
[1] 세션 ID는 [ <%= session.getId() %> ] 입니다.<br/><hr/>
[2] 당시이 웹 사이트에 머문 시간은 <%= time_used %> 분입니다.<br/><hr/>
[3] 세션의 유효 시간은 <%= inactive %> 분입니다.<br/><hr/>
[4] 세션이 새로 만드어 졌나요???<br/>
<%
    if (b_new) {
       
        out.print("예!! 새로운 세션을 만들었습니다.");
    }

    else {
       
        out.println("아니오!! 새로운 세션을 만들지 않았습니다");
    }
%>
		
		
		
</body>
</html>