<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<div class="container">
		<div class="form-body">
			<div class="sec-title-container-nopadding">
				<div class="gm-title-line-1 text-center"></div>
				<h4 class="uppercase font-weight-7 less-mar-1 text-center">아이디
					찾기 결과</h4>
				<div class="clearfix"></div>
				<br>
				<br>
				<br>
			</div>
				<c:if test="${empty member }">
					<h2>
					일치하는 회원정보가 없습니다.
					</h2>
				</c:if>
				
				<c:if test="${member.id eq 'kakao' }">
				<h2>
					카카오 계정으로 가입된 회원입니다.<br>
				</h2>
				<p class="by-sub-title">- 카카오 계정으로 가입된 회원은 아이디를 찾을 수 없습니다.<br>
					 - 카카오 로그인으로 진행해주세요.</p>
					
				</c:if>

				<c:if test="${member.id ne 'kakao' }">
					<c:if test="${not empty member }">
						<h2>
							${member.name } 님의 아이디는 ${member.id } 입니다.<br>
						</h2>
					</c:if>
				</c:if>
				<br>
			<div class="btn-area text-center">
				<a id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
			</div>

		</div>

	</div>

</body>
</html>