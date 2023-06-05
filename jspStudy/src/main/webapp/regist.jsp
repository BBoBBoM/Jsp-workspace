<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action=registCheck.jsp method=post>
	<!-- table cellspacing 셀들의 간격, table cellpadding 데이터와 셀의 간격 조절. 콜렉스 이용 이웃하는 셀 경계선 합쳐서 단일선 표시 -->
    <table  border="1" cellpadding="7" style="border-collapse:collapse;">  
            <tr>
                <td width = "150" class="j-spot"><label for="user_id">아이디</label></td>
                <td width = "500"><input type="text" name="user_id"/></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw">비밀번호</label></td>
                <td><input type="password" name="user_pw"/></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_pw_chk">비밀번호 확인</label></td>
                <td><input type="text" name="user_pw_chk"/></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_name">이름</label></td>
                <td><input type="text" name="user_name"/></td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_nick">별명</label></td>
                <td><input type="text" name="user_nick"/></td>
            </tr>
            <tr>   
                <td class="j-spot"><label for="user_birth">생년월일</label></td>
                <td>생년월일 입력 
				    <input type="text" name="yy" id="yy" value="" />
					<input type="checkbox" name="user_lunar1" value="Y" checked/>&nbsp;양력
					<input type="checkbox" name="user_lunar2" value="YY"/>&nbsp;음력
				</td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_email_id">메일주소</label></td>
                <td>
                    <input type="text" name="user_email_id" id="user_email_id" value="" class="inp-b" style="width:100px;" maxlength="120" /> @
                    <input type="text" name="user_email_domain" id="user_email_domain" value="naver.com" class="inp-b" style="width:120px;" maxlength="130" />
                    <select name="sel_email_domain" id="sel_email_domain" class="seb-b">
                        <option value="">선택하세요</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="nate.com">nate.com</option>
                        <option value="paran.com">paran.com</option>
                        <option value="korea.com">korea.com</option>
                        <option value="hitel.net">hitel.net</option>
                        <option value="unitel.co.kr">unitel.co.kr</option>
                        <option value="kornet.net">kornet.net</option>
                        <option value="dreamwiz.com">dreamwiz.com</option>
                        <option value="chollian.net">chollian.net</option>
                        <option value="hotmail.com">hotmail.com</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="j-spot">성별</td>
                <td>성별 선택
					<!-- 하나의 단위로 묶기 <inpu id="user_sex_M">와 <label for="user_sex_M" 같게 -->
                    <input type="radio" name="user_sex" id="user_sex_M" value="M" checked/>
                    <label for="user_sex_M" class="hand">남자</label>
                    <input type="radio" name="user_sex" id="user_sex_F" value="F"/>
                    <label for="user_sex_F">여자</label>
                </td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_tel1">대표연락처</label></td>
                <td>
                    <input type="text" name="user_tel1" id="user_tel1" value="010" class="inp-b" style="width:40px;" maxlength="4"/> -
                    <input type="text" name="user_tel2" id="user_tel2" value="" class="inp-b" style="width:40px;" maxlength="4"/> -
                    <input type="text" name="user_tel3" id="user_tel3" value="" class="inp-b" style="width:40px;" maxlength="4"/>
                </td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_mobile1">추가연락처</label></td>
                <td>
                    <input type="text" name="user_mobile1" id="user_mobile1" value="" class="inp-b" style="width:40px;" maxlength="4"/> -
                    <input type="text" name="user_mobile2" id="user_mobile2" value="" class="inp-b" style="width:40px;" maxlength="4"/> -
                    <input type="text" name="user_mobile3" id="user_mobile3" value="" class="inp-b" style="width:40px;" maxlength="4"/>
                </td>
            </tr>
            <tr>
                <td td class="j-spot">주소</td>
                <td>우편번호 선택 <input type="text" name="user_zip" id="user_zip" value="" class="no-inp-b center" style="width:60px;" maxlength="7" readonly="readonly" /></dd>
                    <a href="" title="우편번호검색"><img src="btn_search.gif" align="center" class="hand" alt="우편번호검색"/></a><br>
                    <input type="text" name="user_addr1" id="user_addr1" value="" class="no-inp-b" style="width:300px;" maxlength="180" readonly="readonly"/></br>
                    <input type="text" name="user_addr2" id="user_addr2" value="" class="inp-b" style="width:200px;" maxlength="130" />
                </td>
            </tr>
            <tr>
                <td class="j-spot"><label for="user_memo">소개</label></td>
                <td>
                    <textarea name="user_memo" id="user_memo"  class="inp-b" style="width:99%; height:80px;" placeholder="글을 남겨주세요"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="pink"><input type="submit" value="회원가입">&nbsp;<input type="reset"/></td>
            </tr>
        </tbody>           
    </table> 
</form>	
</body>
</html>