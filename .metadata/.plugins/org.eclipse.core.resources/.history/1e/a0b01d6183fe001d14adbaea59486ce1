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
		border: 1px solid rgb(255, 0, 0);
		background: url(outer.png) no-repeat center;
		background-size: cover;
		background-size: 100% 100%;
	}

	#all_contentsdiv {
		width: 1243px;
		height: 730px;
		margin-top: 37px;
		border: 1px solid rgb(255, 115, 0);
	}


	#left_divborder {
		float: left;
		margin-top: 10px;
		width: 355px;
		border: 1px solid;
		height: 710px;

	}

	#center_divborder {
		margin-top: 10px;
		box-sizing: border-box;
		margin-right: 0px;
		width: 700px;
		float: left;
		height: 710px;
		border: 1px solid rgb(63, 231, 236);
	}

	#right_divborder {
		width: 175px;
		height: 710px;
		float: left;
		margin: 10px 0px;
		padding: 0px;
		position: relative;
		border: 1px solid brown;
	}
	#left_contents_border{width: 90%;height: 95%;margin-top: 10px; border: 1px solid purple;}
   #center_contents_border{width: 95%;height:95%;border: 1px solid purple;margin-top: 10px;}
   #right_contents_border{border: 1px solid purple;width: 95%;float: left;margin-top: 10px;height: 95%;}
</style>
  
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

    $(document).ready(function() {
  
        $("#left_diarymenu").load("left_contentsdiv_home1.jsp");

        $("#center_contents").load("center_diarycontents.jsp");
        $("#right_contentsdiv_border").load("right_contentsdiv.html");
    });
</script>
</head>
<body>
    <div id="mini_container">
        <div id="mini_background1">
            <div id="mini_background2">
                <div id="all_contentsdiv">
                    <div id="left_divborder">
                        <div id="left_contents_border">
                        <div id="left_contents_visitrate">
                            <label>Today 38 || Total 1000</label>
                        </div>
                        <div>링크페이지</div>
                    </div></div>

                    <div id="center_divborder">
                        
                        <div id="center_contents_border">
                        <div id="center_subject">
                            <p>
                            </p>
                            <p>
                            
                            </p>
                        </div>
                        <div>콘텐츠</div>
                    </div></div>
                    <div id="right_divborder">
                        <div id="right_contents_border"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

