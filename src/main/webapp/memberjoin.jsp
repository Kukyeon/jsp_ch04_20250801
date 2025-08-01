<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>

	<h2>회원 가입 양식</h2>
	 <hr>
	 
	 <form action="memberjoinok.jsp" method="get"> <!--   method "get" 은 주소창에 표시 , "post" 는 미표시 -->
	 	
	 	아이디 : <br> <input type="text" name="memberid"><br>
	 	비밀번호 : <br> <input type="password" name="memberpw"><br>
	 	이름 : <br> <input type="text" name="membername"><br>
	 	나이 : <br> <input type="text" name="memberage"><br>
	 	성별 : <br> <input type="radio" name="gender" value="male" checked="checked">남자 
	 		<input type="radio" name="gender" value="female">여자 <br>
	 	이메일 : <br> <input type="text" name="email1"> @
	 	<select name="email2">
	 		<option value="naver.com">naver.com</option>
	 		<option value="daum.net">daum.net</option>
	 		<option value="gmail.com">gmail.com</option>
	 	</select>
	 	<br>
	 	
	 	취미 : <br>
	 	<input type="checkbox" name="hobby" value="game"> 게임	
	 	<input type="checkbox" name="hobby" value="sports"> 운동
	 	<input type="checkbox" name="hobby" value="book"> 독서
	 	<input type="checkbox" name="hobby" value="movie"> 영화
	 	<br> <!-- 체크박스 다중선택시 문자열 배열로 전송됨 -->
	 	
	 	자기소개 : <br> <textarea rows="5" cols="50" name="imtro"></textarea><br><br>
	 	
	 	<input type="submit" value="회원가입">
 		<input type="reset" value="취소">
	 
		
	 	<!-- r -->
	 
	 
	 </form>
	 
	 
</body>
</html>