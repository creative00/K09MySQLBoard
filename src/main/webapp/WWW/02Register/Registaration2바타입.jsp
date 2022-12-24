<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">

<head>
	<style>
		@charset "UTF-8";

/* 기본 설정: 페이지 전체 */
		* {	
			font-family: Verdana;
		    margin: 0;
		    padding: 0;
		}
		
		.join_container {
		    display: block;
		    margin: 50px auto;
		    text-align: center;
		}
		
		.join_container h2 {
		    font-size: 50px;
		    margin-bottom: 50px;
		}
		
		.join_container h3 {
		    font-size: 25px;
		}
		
		.joinID,
		.joinPassword,
		.joinName,
		.joinDate,
		.joinGender {
		    margin-top: 20px;
		    margin-bottom: 30px;
		}
		.input {
		    padding: 5px;
		    width: 300px;
		    line-height: 30px;
		    font-size: 10px;
		    border: none;
		    border-bottom: solid 1px rgba(0, 0, 0, 1);
		}
		
		.bt_join {
		    font-size: 20px;
		    padding: 5px;
		    background-color: rgba(255, 255, 255, 1);
		    border: none;
		    border: solid 1px rgba(0, 0, 0, 1);
		    cursor: pointer;
		}
	</style>

    <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_join.css">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="../js/script.js"></script>

    <title>
        Jo's
    </title>
</head>

<body>
    <div class="join_container">
        <h2>
            회원 가입
        </h2>
        <form method="post" action="./join_Action.jsp">
            <h3>아이디</h3>
            <div class="joinID">
                <input type="text" class="input" style="ime-mode:disabled;" placeholder="아이디" name="userID" title="아이디" maxlength="20">
            </div>
            <h3>비밀번호</h3>
            <div class="joinPassword">
                <input type="password" class="input" placeholder="비밀번호" name="userPassword" title="비밀번호" maxlength="20">
            </div>
            <h3>이름</h3>
            <div class="joinName">
                <input type="text" class="input" placeholder="이름" name="userName" title="이름" maxlength="20">
            </div>
            <h3>생년월일</h3>
            <div class="joinDate">
                <input type="date" class="input" placeholder="생년월일" name="userDate">
            </div>
            <h3>성별</h3>
            <div class="joinGender">
                <input type="radio" name="userGender" value="M" title="성별"> 남자
                <input type="radio" name="userGender" value="F" title="성별"> 여자
            </div>
            <input type="submit" class="bt_join" value="회원가입">
        </form>
    </div>

    <footer>
        <div class="footer_container">
            <div class="footA">
                Jo's
            </div>
            <div class="footB">
                Copyright © Jo's All Rights Reserved.
            </div>
        </div>
    </footer>
</body>

</html>