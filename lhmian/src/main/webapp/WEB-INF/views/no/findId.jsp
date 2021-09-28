<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 찾기</title>
</head>
<body>
	<c:if test="${empty member }">
		일치하는 회원정보가 없습니다.
	</c:if>
	
	<c:if test="${not empty member }">
		${member.name }님의 아이디는 ${member.id }입니당<br>
	</c:if>
	<br>
	<button type="button" id="closeBtn">닫기</button>
</body>
</html>