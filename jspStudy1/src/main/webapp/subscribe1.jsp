<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.io.*" %>
     <%
     String agree= request.getParameter("agree");
     String result = null;
     String id,password,name;
     id = (String)session.getAttribute("id");
     password = (String)session.getAttribute("password");
     name = (String)session.getAttribute("name");
	
     if(agree.equals("yes")){
    	 id=(String)session.getAttribute("id");
    	 password= (String)session.getAttribute("password");
    	 name= (String)session.getAttribute("name");
    	 PrintWriter writer=null;
    	try{
    		String filePath = application.getRealPath("/WEB-INF/"+id+".text");
    		writer = new PrintWriter(filePath);
    		writer.println("아이디"+id);
    		writer.println("비밀번호"+password);
    		writer.println("이름"+name);
    		result = "success";
    		System.out.println(filePath);
    	}catch(IOException ioe){result = "fail";}
    	finally{try{writer.close();
    	}catch(Exception e){}
    	}
    	}else{result="fail";}
     response.sendRedirect("result.jsp?result="+result);
     %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>