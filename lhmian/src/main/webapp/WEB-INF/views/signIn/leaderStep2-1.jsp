<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		세대주 회원 가입
		<br><br>
		<form action="" method="POST">
		아이디* <input type="text" id="userId" name="userId"><button type="button">중복확인</button>
		비밀번호* <input type="password" id="userPw" name="userPw">
		비밀번호 확인* <input type="password" id="userPwConfirm" name="userPwConfirm">
		이름 <input type="text" id="userId" name="userId" readonly>
		연락처 <input type="text" id="userId" name="userId" readonly>
		동 <input type="text" id="userId" name="userId" readonly>
		호수 <input type="text" id="userId" name="userId" readonly>
		<!-- 모달 -->
		차량번호 <input type="text" id="userId" name="userId"><button type="button">등록</button>
		<br><br>
		문자 수신 서비스 동의.체크박스.
		<br><br>
		<button type="submit">회원가입</button><button type="button">취소</button>
		</form>
	</div>
</body>
</html>