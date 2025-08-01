<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 확인</title>
</head>
<body>
	<%
		
	String memberid = request.getParameter("memberid"); // 회원아이디
	String memberpw = request.getParameter("memberpw"); // 회원 비밀번호
	String membername = request.getParameter("membername"); // 회원 이름
	String gender = request.getParameter("gender"); // 회원 성별
	if(gender.equals("male")){
		gender = "남성";
	}else { // 들어오는값을 바꿔주...기 인데 그냥 멤버조인에서 한글로바꾸는게 나을수도
		gender = "여성";
	}
	String memberage = request.getParameter("memberage"); // 회원 나이
	String memberemail1 = request.getParameter("email1"); //회원 이메일 아이디
	String memberemail2 = request.getParameter("email2"); // 회원 이메일 도메인
	
	//String[] memberhobby = request.getParameterValues("hobby"); // 회원 취미 string 배열로 받아주기
	Map<String, String[]> hobbymap = request.getParameterMap();  // 취미체크박스 map 구조로 받기
	Enumeration<String> hobbyenum = request.getParameterNames(); // 취미 체크박스 열거형으로 받기 
	// 모든 파라미터의 이름만 가져옴;;
	String memberimtro = request.getParameter("imtro"); // 회원 자기소개
	%>



	<h2> 회원 가입 정보 </h2>
	<hr>
		<ul>
			<li>아이디 : <%= memberid %></li>
			<li>비밀번호 : <%= memberpw %></li>
			<li>이름 : <%= membername %></li>
			<li>성별 : <%= gender %></li>
			<li>나이 : <%= memberage %></li>
			<li>이메일 : <%= memberemail1 %>@<%= memberemail2 %></li>
			<li>취미 map :
			<%
				if(hobbymap.get("hobby") == null) {
					out.println("취미없음");
				} else {
					for(String hobby : hobbymap.get("hobby")) { //hobbyMap의 key값만 가져오기
							out.println(hobby);						
						}
				}
				
			%>
			</li>
			<li>
			<%
				String[] hobbies = null;
				if(!hobbyenum.hasMoreElements()) {
					out.println("취미없음");
				} else {
					while(hobbyenum.hasMoreElements()) {
						String hobby = hobbyenum.nextElement();
						//System.out.println(hobby);
						if(hobby.equals("hobby")) {							 
							hobbies = request.getParameterValues(hobby);
						}							
					}
					if(hobbies != null) {
						for(String hobby :hobbies) {
							out.print(hobby +  " / ");
						}
					}	
				}
				
			%>
			</li>
			<li>자기소개 : <%= memberimtro %></li>
		
		</ul>


</body>
</html>