<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<div style="background: yellowgreen">
	<a href="commlist">커뮤니티</a>
</div>
<div>
	<sec:authorize access="isAnonymous()">
		<a href="login">로그인</a>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="logout">로그아웃</a>
		<p>
			아이디 <sec:authentication property="principal.username"/><br>
			이름 <sec:authentication property="principal.NAME"/><br>
			폰번호 <sec:authentication property="principal.PHONE"/><br>
			권한(ADMIN, OWNER, MEMBER) <sec:authentication property="principal.AUTHOR"/><br>
			세대정보 <sec:authentication property="principal.HOUSEINFO"/><br>
		</p>
	</sec:authorize>
</div>