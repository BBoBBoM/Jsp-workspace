<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- CalcBean 클래스를 calc라는 이름으로 인스턴스 생성 
    CalcBean calc = MEW CalcBean(); --%>
    <jsp:useBean id = "calc" class= "jspbook.CalcBean"/>
    <%--calc 객체의 setter 메서드 호출로 HTML폼 데이터 전달  --%>
    <jsp:setProperty name ="calc" property="*"/>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align= center>
	<h3>계산기 bean</h3>
	<hr>
	계산결과 12314214: ${Calc.calculate() }
	
	
	</div>
</body>
</html>