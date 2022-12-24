<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//페이지 실행 시 loginId라는 쿠키를 읽어온다.
String loginId = CookieManager.readCookies(request, "loginId");
//아이디 저장 체크박스에 체크 위한 변수 생성
String cookieCheck = "";
//앞에서 읽은 쿠키값이 있다면 체크박스에 checked 속성을
//부여하기 위해 값을 설정한다.
if(!loginId.equals("")) {
	cookieCheck = "checked";
}
%>
    
    
<!DOCTYPE html>

<html lang="ko">

<head>
	<style>
		@charset "UTF-8";

/* 기본 설정: 페이지 전체 */
		#section {
			
			text-align: left;
			float: right;
			background-color:yellow;
			padding: 10px;
		} 
		
		* {	
			font-family: Verdana;
		    margin: 100;
		    padding: 1000;
		    
		}
		
		
		.join_blank {
			display: block;
		    padding: 100px;
		    height: 500px;
		    background-color:yellow;
		    text-align: left;
		}
		.join_container {
		    display: block;
		    margin: 200px auto;
		    text-align: left;
		    
		}
		
		
		.join_container h3 {
			color: deep-grey;
		    font-size: 30px;
		    text-align: center;
		}
		
		.login_id,
		.user_pw,
		.joinName,
		.joinDate,
		.joinGender {
		    margin-top: 20px;
		    margin-bottom: 30px;
		}
		.input {
		    padding: 5px;
		    width: 220px;
		    line-height: 30px;
		    font-size: 15px;
		    border: none;
		    border-bottom: solid 1px rgba(0, 0, 0, 1);
		}
		
		.btn-join {
		 	class:d-grid gap-2 col-6 mx-auto;
		    font-size: 15px;
		    padding: 9px;
		    color: rgb(240, 240, 240);
		    background-color: rgb(60, 60, 60, 1);
		    border: none;
		    border: solid 1px rgba(0, 0, 0, 0);
		    cursor: pointer;
		    text-align: center;
		}
		.information {
			padding: 5px;
		    width: 380px;
		    font-size: 10px;
		    border: none;
		    text-align: left;
		}
	</style>


    <title>로그인 기능</title>
</head>

<body>
	<table border="0">
		<tr>
			<td>
				<div class="join_blank"/>
			</td>
			<td>
				<div class="join_container">
			        <form method="post" action="IdSaveProcess.jsp" >
			            <h3>로그인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
			            <div class="login_id">
			                <input type="text" class="input" style="ime-mode:disabled;" placeholder="아이디" name="user_id" value="<%= loginId %>" title="이메일을 입력해주세요" maxlength="20">
			            	&nbsp;&nbsp;
			            	<input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> tabindex="3"/>
						ID 저장하기
						<br />
			            </div>
			            <!--비번  -->
			            <div class="user_pw">
			                <input type="password" class="input" placeholder="비밀번호를 잊으셨습니까?" name="user_pw" title="비밀번호" maxlength="20">
			            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			            </div>			
						<button class="btn-join" type="submit" value="로그인"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
			            <!-- <input type="submit" class="bt_join;" value="로그인"> -->
			        </form>
    			</div>
			</td>
			<td>
				<div class="join_blank"/>
			</td>
			<td>
				<div class="join_container">
			        <form method="post" action="IdSaveProcess.jsp" >
			            <h3>등록&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
			            <div class="information" >
			                 <br/>Vert의 회원으로 가입하시면 빠르고 편리하게 이용하실 수 있습니다.<br/><br/><br /><br/>아직 회원이 아니시라면 이메일로 간편 가입하실 수 있습니다.<br/>
			            </div>
			            <br/><br/><br/>
			           		
						<button class="btn-join" style="background-color:#4cef7d; color:#666666" type="submit" value="회원가입" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원가입
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
						
						
			        </form>
    			</div>
			</td>
			
		
		</tr>
		
	
	
	</table>
    
</body>

</html>