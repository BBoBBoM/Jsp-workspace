<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        html{width:500px; margin: auto;}
     	#agreebutton{width:100px; margin: auto;}
        </style>
</head>
<body>
<form action = registComplete.jsp method= post>
	<h1>서비스 약관에 동의해 주세요</h1>
	<br>
	<br>
		<input type="checkbox" name="check" >
			모두 동의합니다
			<br><br><br>
		<input type="checkbox" class="check" name="age_value" >
			만 14세 이상입니다.<br><br>
		<input type="checkbox" class="check" name="condition1" >
			[필수]카카오계정 약관<br><br>
		<input type="checkbox" class="check" name="condition2" >
			[필수]카카오 통합 서비스 약관<br><br>
		<input type="checkbox" class="check"  >
			[선택]카카오알림 채널 추가 및 광고메시지 수신<br><br>
		<input type="checkbox" class="check" name="condition3" >
			[필수]개인정보 수집 및 이용 동의<br><br>
		<input type="checkbox" class="check"  >
			[선택]위치정보수집 및 이용 동의<br><br>
		<input type="checkbox" class="check" >
			[선택]프로필 정보 추가 수집 동의<br><br>

	

	
		위의 약관에 동의하십니까?
		<br>
		<br>
		<input type = radio name=agree value = yes>동의함
	<input type = radio name=agree value = no> 동의하지 않음<br>
		<input type = submit id ="agreebutton" value = "동의">
		
	</form>
</body>
</html>