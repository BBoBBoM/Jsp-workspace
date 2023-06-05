<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	X= ${param.num1}, y=${param.num2}
	<br>
	X + Y =${param.num1+param.num2}<br>
	X - Y =${param.num1-param.num2}<br>
	X * Y =${param.num1*param.num2}<br>
	X / Y =${param.num1/param.num2}<br>
	X % Y =${param.num1%param.num2}<br>
	<br>
	<br>X가 더 큽니까?${param.num1 - param.num2>0}
	<br>Y가 더 큽니까?${param.num1 - param.num2<0}
	<br>
	<br> X화 Y가 모두 양수입니까? ${(param.num1>0)&&(param.num2>0)}
		<br>
	<br> X화 Y가 같습니까? ${param.num1==param.num2? "예":"아니오"}
		<br>${param.num1}을 ${param.num2 }로 나눈 몫은? ${param.num1 div param.num2 }
		<br>나머지는? ${param.num1 mod param.num2 }
		<br>
		<br>둘 다 양수입니까? ${(param.num1 gt 0) and (param.num2 gt 0) }
		<br>둘 다 음수입니까?${(param.num1 lt 0) and (param.num2 lt 0) }
</body>
</html>