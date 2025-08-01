<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 연습</title>
</head>
<body>

<%!
String memberid;
String memberpw;
String membername;


%>
<%
	memberid = request.getParameter("memberid"); // 회원아이디
	memberpw = request.getParameter("memberpw"); // 회원 비밀번호
	membername = request.getParameter("membername"); // 회원 이름
String gender = request.getParameter("gender"); // 회원 성별
if(gender.equals("male")){
	gender = "남성";
}else { // 들어오는값을 바꿔주...기 인데 그냥 멤버조인에서 한글로바꾸는게 나을수도
	gender = "여성";
}
String memberage = request.getParameter("memberage"); // 회원 나이
String memberemail1 = request.getParameter("email1"); //회원 이메일 아이디
String memberemail2 = request.getParameter("email2"); // 회원 이메일 도메인
String[] memberhobby = request.getParameterValues("hobby"); // 회원 취미 string 배열로 받아주기
String memberimtro = request.getParameter("imtro"); // 회원 자기소개


%>






</body>
</html>