<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<style>
.input-1 {
	width: 400px;
}
</style>
<body>

	<div class="container">
		<c:if test="${result eq 0}">
			<div class="form-body">
				<div class="sec-title-container-nopadding">
					<div class="gm-title-line-1 text-center"></div>
					<h4 class="uppercase font-weight-7 less-mar-1 text-center">비밀번호
						찾기 결과</h4>
					<div class="clearfix"></div>
					<br> <br> <br>
					<h3>일치하는 회원정보가 없습니다.</h3>
				</div>
				<br>
				<div class="btn-area text-center">
					<a id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
				</div>
			</div>
		</c:if>
		<c:if test="${result eq 1}">
			<form id="frm" action="updatePassword" method="POST"
				autocomplete="off">
				<div class="form-body">
					<div class="sec-title-container-nopadding">
						<div class="gm-title-line-1 text-center"></div>
						<h4 class="uppercase font-weight-7 less-mar-1 text-center">새
							비밀번호 설정</h4>
						<div class="clearfix"></div>
						<br>
						<p class="by-sub-title">
							- 영문자, 숫자, 특수문자를 모두 포함하여 8~12자로 입력해주세요.<br> - 같은 문자를 3번 이상
							사용하실 수 없습니다.<br> - 연속된 문자를 3번 이상 사용하실 수 없습니다.
						</p>
					</div>
					<br>
					<div class="col-md-12">
						<div class="section">
							<label> 비밀번호 <br> <input type="password"
								name="password" id="password" class="input-1"
								placeholder="비밀번호 입력">
							</label>
						</div>
						<div class="section">
							<label> 비밀번호 확인 <br> <input type="password"
								name="passwordConfirm" id="passwordConfirm" class="input-1"
								placeholder="비밀번호 한번 더 입력">
							</label>
						</div>
						<input type="hidden" id="id" name="id" value="${id }">
					</div>
					<br>
					<div class="btn-area text-center">
						<a id="passwordUpdateBtn" class="btn btn-gyellow"> 변경 </a> <a
							id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
					</div>
					<!-- CSRF 토큰 -->
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }">
				</div>
			</form>
		</c:if>
	</div>
</body>
<script>
	$('#passwordUpdateBtn').on('click', function() {

		const pw = $('#password').val();
		const pwcf = $('#passwordConfirm').val();

		if (pw == "") {
			alert('비밀번호를 입력하세요.');
			$('#password').focus();
			return;
		}
		if (pwcf == "") {
			alert('비밀번호를 한번 더 입력하세요.');
			$('#passwordConfirm').focus();
			return;
		}

		if (pw != pwcf) {
			alert('비밀번호가 일치하지 않습니다.')
			$('#password').focus();
			return;
		}

		if (checkPwd(pw) != "") {
			alert(checkPwd(pw));
			$('#password').focus();
			return;
		}

		$('#frm').submit();
	})

	//비밀번호 유효성 검사 함수
	function checkPwd(password) {
		let check = /(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{8,20}$/
				.test(password);

		if (!check) {
			return "영문자, 숫자, 특수문자를 모두 포함하여 8~12자로 입력해주세요."
		}

		if (/(\w)\1\1/.test(password)) {
			return '같은 문자를 3번 이상 사용하실 수 없습니다.';
		}

		var cnt = 0;
		var cnt2 = 0;
		var tmp = "";
		var tmp2 = "";
		var tmp3 = "";
		for (var i = 0; i < password.length; i++) {
			tmp = password.charAt(i);
			tmp2 = password.charAt(i + 1);
			tmp3 = password.charAt(i + 2);

			if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == 1
					&& tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == 1) {
				cnt = cnt + 1;
			}
			if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == -1
					&& tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == -1) {
				cnt2 = cnt2 + 1;
			}
		}
		if (cnt > 0 || cnt2 > 0) {
			return '연속된 문자를 3번 이상 사용하실 수 없습니다.';
		}

		return '';

	}
</script>
</html>