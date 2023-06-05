<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            background: url(background.png) no-repeat center;
            background-size: cover;

            position: absolute;
        }

        #mini_background2 {

            width: 95%;
            height: 95%;
            margin-top: 25px;
            border: 1px solid blue;
          
            background: url(outer.png) no-repeat center;
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
            margin-left: 45px;
            margin-top: 35px;
            margin-bottom: 0px;
            width: 80%;
            height: 5%;
            border: 1px solid rgb(6, 243, 38);
        }

        #right_contentsdiv_border {
            width: 200px;
            height: 800px;
            float: left;
            margin: 10px 0px;
            padding: 0px;
            position: relative;
            border: 1px solid brown;
        }
    </style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

    $(document).ready(function() {
  
        $("#left_profilemenu1").load("left_profilemenu.jsp");

        $("#center_contents").load("center_profilecontents.jsp");
        $("#right_contentsdiv_border").load("right_contentsdiv2.html");
    });
</script>
</head>

<body>
    <div id="mini_container">
        <div id="mini_background1">
            <div id="mini_background2">
                <div id="all_contentsdiv">
                    <div id="left_contentsborderdiv">
                        <div id="left_contents_visitrate">
                        </div>
                        <div id="left_profilemenu1"></div>


                            
                    </div>

                    <div id="center_contentsdiv">
                        <div id="center_subject"></div>
                      
                        <div id="center_contents"></div>


                    </div>
                    <div id="right_contentsdiv_border">

                    </div>

                </div>
            </div>
        </div>


    </div>


    </div>

</body>
</html>