<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style type="text/css">
            * {
                margin: 0;
                padding: 0;
                margin: 0 auto;
                text-align: center;
                padding:10px;
            }

            #alldiv {
                width: 500px;
                border: 1px solid;
            }

            .submitreset {margin-left: 20px;margin-right: 20px;
            
             
            }

            table {
    
            }
        </style>
    </head>

    <body>
        <div id="alldiv">
            <div style="text-align: center;border: 1px solid;">회원가입</div>
            <form method="post" name="form">
                <table>
                    <tr>
                        <td>아이디:</td>
                        <td><input width="300" type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>비밀번호:</td>
                        <td><input type="password" name="pwd"></td>

                    </tr>
                    <tr>
                        <td>이름:</td>
                        <td> <input type="text" name="name"></td>
                    </tr>
                    <tr id=submitreset style="column-span: all;" >
                        <td  colspan="2">
                        <input class="submitreset" type="submit" value="가입" formaction="append.jsp">
                        <input class="submitreset" type="reset" value="초기화">
                        <input class="submitreset" type = "submit" value="처음으로" formaction="logincheck.jsp"></td>
                    </tr>

                </table>
            </form>
        </div>
    </body>

    </html>
</body>

</html>