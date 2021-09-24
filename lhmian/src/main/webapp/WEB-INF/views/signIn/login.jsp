<!-- 작업일자 : 2021.09.24. 
     수정일자 :
     담당자 : 윤지민 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div>
		<form action="login" method="POST">
			아이디 <input type="text" id="userId" name="userId"><br>
			비밀번호 <input type="password" id="userPw" name="userPw"><br>

			<button type="button">로그인</button>
			<button type="button">카카오 로그인</button>
		</form>
		<br> <a href="">아이디 찾기</a> / <a href="">비밀번호 찾기</a><br> <a href="signUp">회원가입</a>
	</div>
</body>
</html>