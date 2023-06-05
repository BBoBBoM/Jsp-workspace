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
            }

            div {
                width: 500px;
                border: 1px solid;
            }

            #submitreset {
            
                border: 1px solid violet;
            }

            table {
                border: 1px solid;
            }
        </style>
    </head>

    <body>
        <div>
            <div style="text-align: center;">회원가입</div>
            <form action="append.jsp">
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
                    <tr style="column-span: all;" >
                        <td id=submitreset colspan="2"><input type="submit" value="가입"> <input type="reset" value="초기화"></td>
                    </tr>

                </table>
            </form>
        </div>
    </body>

    </html>
</body>

</html>