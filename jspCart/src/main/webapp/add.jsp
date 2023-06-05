<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%
	request.setCharacterEncoding("utf-8");//요청한 값을 utf-8로 인코딩
	String fruits = request.getParameter("selfruit");//selfruit 값을 fruits에 저장
	//ArrayList class로 list(자료구조) object를 생성(null이면 생성, 아니면 setAttribute)
	//selfruit는 application 객체에 list를 저장하는 속성(session객체와 유사한 용도로 사용_)
	ArrayList<String> list =(ArrayList)session.getAttribute("fruitsList");//ArrayList
	if(list==null){list=new ArrayList<String>();
	session.setAttribute("fruitsList",list);
	}
	//list object에 선택한 과일을 추가 )
	list.add(fruits);

	
	
	 %>
	 <script>
	 alert("<%=fruits %>이(가) 추가 되었습니다!!")
	 history.go(-1)</script></div>
</body>
</html>