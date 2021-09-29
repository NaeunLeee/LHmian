<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>

.dropbtn {
	background-color: yellowgreen;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}
.dropbtn:hover {
	background-color: #3e8e41;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>

<div style="background: yellowgreen">

	<div class="dropdown">
		<button type="button" class="dropbtn">우리 아파트</button>
		<div class="dropdown-content">
			<a href="#">아파트 소개</a>
			<a href="#">배치도</a>
			<a href="#">평형도</a>
			<a href="${pageContext.request.contextPath}/introduce/opeInfoList">운영정보공개</a>
			<a href="#">오시는 길</a>
  		</div>
	</div>
	
	<div class="dropdown">
		<button type="button" class="dropbtn">관리 사무소</button>
		<div class="dropdown-content">
			<a href="${pageContext.request.contextPath}/office/noticeList">공지사항</a>
			<a href="#">민원</a>
			<a href="#">일정</a>
			<a href="#">분실물 보관소</a>
  		</div>
	</div>
	
	<div class="dropdown">
		<button type="button" class="dropbtn">입주민 공간</button>
		<div class="dropdown-content">
			<a href="${pageContext.request.contextPath}/resident/confList">입주자 대표회의</a>
			<a href="#">투표</a>
			<a href="${pageContext.request.contextPath}/commlist">커뮤니티</a>
  		</div>
	</div>

	<div class="dropdown">
		<button type="button" class="dropbtn" onclick="location.href='${pageContext.request.contextPath}/facility/facilityList'">편의 시설</button>
		<div class="dropdown-content">
			<a href="${pageContext.request.contextPath}/facility/library">독서실</a>
			<a href="${pageContext.request.contextPath}/facility/gym">헬스장</a>
  		</div>
	</div>
	
	<sec:authorize access="isAnonymous()">
		<button type="button" class="dropbtn" onclick="location.href='${pageContext.request.contextPath}/login'">로그인</button>
	</sec:authorize>
	
<!-- 	<div class="dropdown">
		<button type="button" class="dropbtn">마이 페이지</button>
		<div class="dropdown-content">
			<a href="#">내 정보</a>
			<a href="#">관리비</a>
			<a href="#">에너지 사용량</a>
			<a href="#">투표 내역</a>
			<a href="#">작성글 조회</a>
			<a href="#">시설 이용</a>
  		</div>
	</div> -->

</div>

<div>

	<sec:authorize access="isAuthenticated()">
		<a href="logout">로그아웃</a>
		<p>
			<sec:authentication property="principal.username"/>
			님, 반갑습니다.
		</p>
	</sec:authorize>
</div>