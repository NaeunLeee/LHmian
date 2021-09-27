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
<script>
	$(function() {
		$('#findId').on('click', function() {
			window.open("findIdForm", "아이디 찾기", "width=500, height=700, resizable=no");
			
		})
		
	})

</script>
</head>
<body>
	<div>
		<form action="loginDo" method="POST">
			아이디 <input type="text" id="id" name="id"><br> 비밀번호 <input
				type="password" id="password" name="password"><br>

			<button>로그인</button>
			<img src="../resources/image/kakao_login_medium_narrow.png"
				onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=5986adbc56a3444841aed3bd67e4976d&redirect_uri=http://localhost:8091/app/kakaoLogin&response_type=code'">

		</form>
		<br> <a id="findId">아이디 찾기</a> / <a href="">비밀번호 찾기</a><br> <a
			href="leaderStep1">회원가입</a>
	</div>
</body>
</html>