<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String email_id = request.getParameter("email_id");
	String email_domain = request.getParameter("email_domain");
	String email_domainselected = request.getParameter("email_domainselected");
	String user_id = request.getParameter("user_id");
	String user_pass = request.getParameter("user_pass");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	
	// 1.변수선언
	String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	String uid = "JSP";
	String upw = "JSP";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into members values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	try{
		// 1. 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// 3. pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email_id);
		pstmt.setString(2, email_domain);
		pstmt.setString(3, email_domainselected);
		
		pstmt.setString(4, user_id);
		pstmt.setString(5, user_pass);
		pstmt.setString(6, name);
		pstmt.setString(7, gender);
		pstmt.setString(8, phone1);
		pstmt.setString(9, phone2);
		pstmt.setString(10, phone3);
	
		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			response.sendRedirect("join_succes.jsp");
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>