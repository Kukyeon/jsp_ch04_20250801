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
		
	request.setCharacterEncoding("UTF-8"); // 언어가 깨지지 않도록 방지해주는것 가장 먼저 실행
	
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
	String[] memberhobby = request.getParameterValues("hobby"); // 회원 취미 string 배열로 받아주기
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
			<li>취미 :
			 <% 
			 
			 if(memberhobby != null){// 취미 체크박스 선택이 하나도 되지않고 넘어왔을경우
			 
			 for(String hobby : memberhobby){
				    out.print(hobby + "/ ");
				} 
			 }else {
					out.print("선택된 취미 없음");
				}
			//for(int i=0 ; i < memberhobby.length ; i++){
		 	//	out.println(memberhobby[i] + "/");
		 //	}

			
			 %>
			</li>
			<li>자기소개 : <%= memberimtro %></li>
		
		</ul>


</body>
</html>