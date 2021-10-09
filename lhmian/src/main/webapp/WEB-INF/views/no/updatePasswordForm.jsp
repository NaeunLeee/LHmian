<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${result eq 0 }">
		일치하는 회원정보가 없습니다.
	</c:if>

	<c:if test="${result eq 1 }">
	새 비밀번호 설정
	<form action="updatePassword" method="POST">
		비밀번호 <input type="password" id="password" name="password"><br>
		비밀번호 확인 <input type="password" id="passwordConfirm" name="passwordConfirm"><br>
		<input type="hidden" id="id" name="id" value="${id }">
		<br><br>
		<button>변경</button><button type="button" id="closeBtn">닫기</button>
		<!-- CSRF 토큰 -->
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	 </form>
	 </c:if>
	 
	 
</body>
</html>