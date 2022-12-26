<%@page import="java.io.PrintWriter"%>
<%@page import="www.join.mvcboard.WwwjoinBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//사용자가 보낸 데이터를 한글을 사용할 수 있는 형식으로 변환
	request.setCharacterEncoding("UTF-8");
	String user_id = null;
	String user_pass = null;

	if (request.getParameter("user_id") != null) {
		user_id = (String) request.getParameter("user_id");
	}

	if (request.getParameter("user_pass") != null) {
		user_pass = (String) request.getParameter("user_pass");
	}

	if (user_id == null || user_pass == null || pass2 == null || name == null || gender == null || mobile1 == null || mobile2 == null || mobile3 == null || email_id == null || email_domain == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("</script>");
		script.close();
		return;
	}

	WwwjoinBoardDAO userDAO = new WwwjoinBoardDAO();
	int result = WwwjoinBoardDAO.join(user_id, user_pass, email_id, email_domain, email_domainselected, user_id, user_pass, name, gender, phone1, phone2, phone3));
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.')");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>