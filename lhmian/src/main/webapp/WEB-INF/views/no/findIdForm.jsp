<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.input-1 {
width: 400px;
}
</style>
</head>
<body>
	<div class="container">
		<!-- 아이디 영역 -->
		<form id="frm" action="findId" method="POST" autocomplete="off">
			<div class="form-body text-center">
				<div class="sec-title-container-nopadding">
					<div class="gm-title-line-1 text-center"></div>
					<h4 class="uppercase font-weight-7 less-mar-1 text-center">아이디 찾기</h4>
					<div class="clearfix"></div>
					<br>
					<p class="by-sub-title">- 회원정보에 저장된 이름, 휴대폰 번호로 아이디를 찾을 수 있습니다.<br>
							- 카카오 로그인 및 회원가입으로 이용하는 회원은 아이디를 찾을 수 없습니다.</p>
				</div>
				<br>
				<div class="col-md-12">
				<div class="section">
					<label> <input type="text"
						name="name" id="name" class="input-1" placeholder="이름 입력">
					</label>
				</div>
				<!-- 비밀번호 영역 -->
				<div class="section">
					<label>  <input type="text"
						name="phone" id="phone" class="input-1"
						placeholder="휴대폰 번호 '-' 없이 입력"> 
					</label>
				</div>
				</div>
				<br>
				<div class="btn-area text-center">
					<a id="idFindBtn" class="btn btn-gyellow"> 찾기 </a>
					<a id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
				</div>
				<!-- CSRF 토큰 -->
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			</div>
		</form>
	</div>
</body>
<script>
	$('#idFindBtn').on('click', function() {
		if ($('#name').val() == "") {
			alert('이름을 입력하세요.');
			$('#name').focus();
			return;
		}
		if ($('#phone').val() == "") {
			alert('휴대폰 번호를 입력하세요.');
			$('#phone').focus();
			return;
		}
		
		$('#frm').submit();
	})
</script>
</html>