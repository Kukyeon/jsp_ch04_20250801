<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		// 클라이언트가 입력한 아이디값 가져오기
		String memberid = request.getParameter("loginid");
	
		// 클라이언트가 입력한 비밀번호 가져오기
		String memberpw = request.getParameter("loginpw");
	
	%>
		<h2>로그인 하신 아이디는 <b><%= memberid %></b> 이고, 비밀번호는 <b><%= memberpw %></b> 입니다. </h2>
</body>
</html>