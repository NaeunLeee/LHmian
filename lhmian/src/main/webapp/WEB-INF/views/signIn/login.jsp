<!-- 작업일자 : 2021.09.24. 
     수정일자 :
     담당자 : 윤지민 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script>
	$(
			function() {
				$('#findId').on(
						'click',
						function() {
							window.open("findIdForm", "아이디 찾기",
									"width=500, height=400");

						})

				$('#findPassword').on(
						'click',
						function() {
							window.open("findPasswordForm", "비밀번호 찾기",
									"width=500, height=400");

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
			<img src="./resources/images/kakao_login_medium_narrow.png"
				onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=5986adbc56a3444841aed3bd67e4976d&redirect_uri=http://localhost:8091/app/kakaoLogin&response_type=code'">

		</form>
		<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
			<p>
				<font color="red"> 
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</font>
			<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
			<p>
		</c:if>
		<br> <a id="findId">아이디 찾기</a> / <a id="findPassword">비밀번호 찾기</a><br>
		<a href="leaderStep1">회원가입</a>
	</div>
</body>
</html>