<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{box-sizing: border-box; margin: 0px;padding:0px;}
#center_profilecontentsdiv {
   
    box-sizing: border-box;

    width: 685px;
    float: left;
    height: 680px;
    border: 1px solid rgb(109, 30, 255);
    margin-left: 13px;
    margin-top: 15px;
    
}
#center_profilecontentsdiv1 {
   
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
#center_profilephotodiv{
    width: 550px;
height: 400px;
border:1px solid red;
margin-left: 45px;
margin-top: 30px;
}
#center_profileinfo{
    width: 550px;
height: 400px;
border:1px solid rgb(233, 19, 161);
margin-left: 45px;
margin-top: 30px;
}

</style>
</head>
<body>
    <div id="center_profilecontentsdiv">
        <div id="center_profilecontentsdiv1">
            <div id="center_profilephotodiv" style="background:url();"></div>
            <div id="center_profileinfo"></div>
        </div>

    </div>
</body>
</html>