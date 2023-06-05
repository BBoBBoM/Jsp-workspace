<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--CalcBean 클래스를 calc라는 이름으로 인스턴스 생성 --%>
<%--CalcBean calc = new CalcBean(); --%>
<jsp:useBean id="calc" class="jspbook.CalcBean1"/>
<%--calc객체의 setter 메서드 호출로 HTML폼 데이터 전달  --%>
<jsp:setProperty name="calc" property="*"/>
 
<%--계산 메서드 호출 --%>
<%--if(request.getMethod().equals("post")){calc.calculate();} --%>
<% calc.calculate(); %> 
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>

<body>
<%--name 값을 가지고 CalcBean으로  --%>
	<div align=center>
		<h3>계산기 bean</h3>
		<hr>
		<%--method 방식이 get 기본값 주소 표시줄에 전송 정보가 노출 되고, 전송되는 데이터 양에 제한
		보안이 요구 단순한 페이지 연결이 목적이거나 페이지 번호 등으 ㅣ간단한 파라미터를 전송하는 경우에 사용된다.
		post 방식 
		주소 표시줄에 전송 정보가 노출되지 않으며, 전송되는 데이터 양에 제한이 없다. 특정 페이지로 많은 양의 파라미터를
		 전송하는 경우에 사용  회원가입이나 게시글 작성등 데이터 전송에 목적이 있다.--%>
		<form name=form1 method=post>
			<input type="text" name="num1" width=200 size="5">
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2" width=200 size="5">
			<input type="submit" value="계산" name = "B1">
			<input type ="reset" value="다시입력" name="B2">
		</form>
		<%--submit 결과 제출 무조건 action을 찾아감 여기서는 useBean으로 num1 num2 operator값 가지고 ?? 
		reset type가 모든 폼 form 요소의 값을 초기값으로 되돌림 --%>
		<hr>
		계산결과 : 
		<jsp:getProperty name = "calc" property="result"/>
	</div>
</body>
</html>