<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration.html</title>

</head>
<body>
	
	<style>
        *{font-family: Verdana, Geneva, Tahoma, sans-serif;  font-size: 12px; margin: 0px auto;}
        form{background-color:yellow;  margin-top: 100px;}
        input, select, button {border: 1px solid #afafaf;}
        input.userInput{padding:3px 2px;}
        select.userSelect{padding:2px 0;}
        .c_imp{color: red;}
        .userTable{border: none; border-collapse: collapse; width: 670px;}
        .userTable td{padding:10px; border: 1px solid #b9babb;}
        .userTable td.userTit{background-color: #E4E6E9; font-weight: bold;}
        .btn_search{background-color: #3d3d3d; color: #4cef7d; width: 70px; height: 23px; padding:1px 0 2px;}
        .btn_search:hover{background-color: #6d6d6d;}        
        .btn_submit{width:120px;height:28px;font-weight:bold;cursor:pointer;background-color: #E70E16;color:white;font-size: 14px;}
        .btn_cancel{width:120px;height:28px;font-weight:bold;cursor:pointer;background-color: #464646;color:white;font-size: 14px;}
        .w20{width:20px;} .w30{width:30px;} .w40{width:40px;} .w50{width:50px;} .w100{width:100px;} 
        .w300{width:300px;} .w510{width:510px;} .w410{width:410px;} 
        #id_loading{position:absolute;top:530px;z-index:10;width:100%;text-align:center;display:block;}
    </style>
    <form name="myform" action="" method="POST" onsubmit="return formValidate();">
        <table class="userTable">
            <colgroup>
                <col width="130px" />
                <col width="540px" />
            </colgroup>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> ID</td>
                <td class="userVal">
                    <input type="text" name="id" value="" maxlength="15" class="userInput"
                        style="width:120px;" />                    
                    <button type="button" class="btn_search" onClick="">중복확인</button>
                    <span style="margin-left:10px;"></span>
                    <span style="color:#888888;">+ 4~15자, 첫 영문자, 영문자와 숫자 조합</span>
                </td>
            </tr>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> PASSWORD</td>
                <td class="userVal">
                    <input type="password" name="pass1" value="" style="width:100px;" class="userInput"
                        maxlength="25" />
                </td>
            </tr>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> 비밀번호 확인</td>
                <td class="userVal">
                    <input type="password" name="pass2" value="" style="width:100px;" class="userInput"
                        maxlength="25" />
                    <span style="margin:0 0 0 3px;color:#888888;">(확인을 위해 다시 입력해 주세요.)</span>
                </td>
            </tr>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> 이름</td>
                <td class="userVal">
                    <input type="text" name="name" value="" style="width:120px;" class="userInput" maxlength="10" />
                </td>
            </tr>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> 성별</td>
                <td class="userVal">
                    <label><input type="radio" name="sex" value="male" checked />남자</label>
                    <label><input type="radio" name="sex" value="female" />여자</label>
                    <span style="margin-left:20px;"></span>
                    
                </td>
            </tr>
            <tr>
                <td class="userTit" rowspan="2"><span class="c_imp">*</span> 이메일</td>
                <td class="userVal">
                    <input type="text" name="email1" value="" class="userInput w100" />
                    <span style="font-size:16px;">＠</span>
                    <input type="text" name="email2" value="" class="userInput w100" />
                    <select name="email_domain" onchange="" class="userSelect w100">
                        <option value=""> -- 선택 --</option>
                        <option value="naver.com">naver.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="직접입력" selected>직접 입력</option>
                    </select>
                    <label><input type="radio" name="mailing" value="yes" checked />수신 허용</label>
                    <label><input type="radio" name="mailing" value="no" />수신 불가</label>
                </td>
            </tr>
            <tr>
                <td class="userVal" style="height:25px;color:#888888;">
                	※ hanmail.net은 메일 수신이 어려울 수 있으니 가급적 다른 메일을 이용하시기 바랍니다.
                </td>
            </tr>
            <tr>
                <td class="userTit"><span class="c_imp">*</span> 휴대전화</td>
                <td class="userVal">
                    <input type="text" name="mobile1" value="" class="userInput w30" maxlength="3" /> -
                    <input type="text" name="mobile2" value="" class="userInput w40" maxlength="4" /> -
                    <input type="text" name="mobile3" value="" class="userInput w40" maxlength="4" />
                    <span style="margin-left:20px;"></span>
                    <label><input type="radio" name="sms" value="yes" checked />SMS 수신허용</label>
                    <label><input type="radio" name="sms" value="no" />SMS 수신불가</label>
                </td>
            </tr>
        </table>
        <table style="width:670px; margin-top:20px;">
            <tr>
                <td align="center">                    
                    <input type="submit"  value="등록하기" class="btn_cancel" style="background-color:#4cef7d;"/>
                    &nbsp;&nbsp;
                    <input type="reset" value="새로쓰기" class="btn_cancel"  style="background-color:#9da09e;" />
                </td>
            </tr>
        </table>       
    </form>
</body>
</html>