<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	    crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">    
	<title>main page layouts</title>
	<style>
	.header {
		 background-color:lightgrey;
		 height:80px;
	}
	.nav {
		 background-color:#393939;
		 color: white;
		 height:50px;
		 /* float: left; */
	}
	.section {
		width: 1290px;
		height: 400px;
		text-align: left;
		float: right;
		background-color:yellow;
		padding: 10px;
	} 
	.footer {
		background-color:lightgrey;
		height:120px;
		clear:both;
	}
	.header,.nav, .section,.footer { text-align:center; }
	.header, .footer { line-height : 20px; }
	.nav, .section {line-height : 240px;}
	}
	</style>
</head>
<body>
	<h1></h1>
	<div class="header">
		<%@ include file="../00Main/inc/top.jsp" %>
	</div>
		
         
            
		
	<div class="nav">난들 너를 알겠느냐</div>
	
	<div class="section">
		<!-- <a href="http://www.naver.com/" target="_blank">
				<img src="../image/cloud.jpg" />
		</a>	 -->
	</div>
	
	<div class="footer">내 판권</div>
	

</body>
</html>