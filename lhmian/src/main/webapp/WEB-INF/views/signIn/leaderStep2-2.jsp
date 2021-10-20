<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.error-msg {
	padding: 7px 0;
	color: red;
}

.correct-msg {
	padding: 7px 0;
	color: green;
}

.gubun-msg {
	padding-top: 12px;
}

.smart-forms .section {
	margin-bottom: 5px;
}

.smart-forms .section-gubun {
	margin: 15px 0;
}

.gubun {
	font-size: 16px !important;
}

.btn-fullwidth {
	margin-top: 18px !important;
	height: 50px;
}
</style>
</head>
<script>
	//비밀번호 유효성 검사는 완료됨.
	//아이디 유효성 검사가 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 덜됐네요!!!!!!!!!!!!!!!
	
	//전역변수
	//세대 인증 성공여부
	let success;
	//아이디, 비밀번호 검증 성공여부
	let idToken;
	let passwordToken;
	
	//CSRF
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	
	$(function() {

		$('#key').on('blur', function() {
			const key = $('#key').val();
			
			if (key == "") {
				$('.key-msg').empty();
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('세대 인증번호를 입력하세요.');
				return;
			}
		})
		
		$('#name').on('blur', function() {
			const name = $('#name').val();
			
			if (name == "") {
				$('.name-msg').empty();
				$('.name-msg').css('display', 'block');
				$('.name-msg').addClass('error-msg').text('이름을 입력하세요.');
				return;
			}
		})
		
		//--------------------------------- blur 끝 ---------------------------------

        //세대 인증 버튼 클릭시
		$('#authKeyBtn').on('click', function() {
			const authKey = $('#key').val();

			$.ajax({
				url: 'authKey',
				type: 'POST',
				beforeSend: function(xhr) {
		            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		         },
				data: {authKey : authKey},
				success: function(data) {
					$('.name-msg').css('display', 'block');
					
					//인증번호가 일치하지 않으면
					if (!data) {
						$('.key-msg').empty();
						$('.key-msg').addClass('error-msg').text('일치하는 세대가 없습니다.');
						return;
					}
					
					//인증번호가 일치하면
					$('.key-msg').empty();
					$('.key-msg').removeClass().addClass('correct-msg').text('세대 인증이 완료되었습니다.');
					
					success = true;
					
					const donghosu = String(data.houseInfo);
					const dong = donghosu.substring(0, 3);
					const hosu = donghosu.substring(3, 7);
					//프론트에서 인증하자마자 동호수 인풋박스가 뜨도록 하기
					
					$('.donghosu').css('display', 'block');
					const box = '<div class="section">'
							  + '<h6 class="less-mar-4">'
							  + '<span class="font-weight-5">동</span>'
							  + '</h6>'
							  + '<label class="field prepend-icon">'
							  + '<input type="text" name="dong" id="dong" class="gui-input" readonly>'
							  + '<span class="field-icon"><i class="fa fa-home"></i></span></label>'
							  + '</div>'
							  + '<div class="section">'
							  + '<h6 class="less-mar-4">'
							  + '<span class="font-weight-5">호수</span>'
							  + '</h6>'
							  + '<label class="field prepend-icon">'
							  + '<input type="text" name="hosu" id="hosu" class="gui-input" readonly>'
							  + '<span class="field-icon"><i class="fa fa-home"></i></span>'
							  + '</label>'
							  + '</div>';
							  
					$('.gubun').css('display', 'block');
					const box2 = '<div class="section">'
								+ '<h6 class="less-mar-4">'
								+ '<span class="font-weight-5">구분</span>'
								+ '</h6>'
								+ '<label class="field prepend-icon">'
								+ '<input type="text" name="gubunPretty" id="gubunPretty" class="gui-input" readonly>'
								+ '<span class="field-icon"><i class="fa fa-home"></i></span></label>'
								+ '</div>';
							  
					$('.donghosu').addClass('margin-top-1')
					$('.donghosu').html(box);
					$('.gubun').html(box2);
					
					//넘어온 값 생성된 box에 세팅
					$('#dong').val(dong);
					$('#hosu').val(hosu);
					$('#houseInfo').val(data.houseInfo);
					
					if (data.gubun == 'OWNER') {
						$('#gubunPretty').val('세대주');
					} else {
						$('#gubunPretty').val('세대원');
					}
					$('#gubun').val(data.gubun);
					
				},
				error: () => alert('AJAX 에러')
			})
		})
		
		//회원 가입 버튼 클릭시, 빈 칸 검사
		$('#signUp').on('click', function() {
			//메시지 박스 클리어
			$('.key-msg').empty();
			$('.gubun-msg').empty();
			$('.name-msg').empty();
			$('.key-msg').empty();

			const key = $('#key').val();
 			const name = $('#name').val();

			if (key == "") {
				
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('인증번호를 입력하세요.');
				$('#key').focus();
				return;
			}
			if (name == "") {
				
				$('.name-msg').css('display', 'block');
				$('.name-msg').addClass('error-msg').text('이름을 입력하세요.');
				$('#name').focus();
				return;
			}
			if (!success) {
				
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('세대 인증을 해주세요.');
				$('#key').focus(); //이것도 ㅠ
				return;
			}
			
			$('#frm').submit();
			
		})
		
		
		
	})

</script>

</head>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="#">홈</a></li>
							<li class="current"><a href="">회원가입</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="sec-title-container-padding-top text-center">
						<div class="gm-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">회원 정보 입력</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">추가 회원 정보를 입력해주세요.</p>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>

			<div class="smart-wrap">
				<div class="smart-forms smart-container wrap-3">
					<!-- 정보 입력 폼 -->
					<div class="form-body bg-light">
						<form id="frm" name="frm" action="memberSignUp" method="POST"
							autocomplete="off">
							<!-- CSRF 토큰 -->
							<input type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token }">
							<!-- 카카오 아이디 -->
							<input type="hidden" id="id" name="id" value="${kakaoId }"><br>
							<!-- 이름 입력 -->
							<div class="section">
								<label for="name">
									<h6 class="less-mar-4">
										<span class="font-weight-5">이름</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="name" id="name" class="gui-input" placeholder="이름">
									<span class="field-icon"><i class="fa fa-smile-o"></i></span>
								</label>
								<div class="name-msg" style="display: none"></div>
							</div>
							<!-- 세대 인증번호 입력 -->
							<div class="section">
								<label for="key">
									<h6 class="less-mar-4">
										세대 인증번호 <span
											class="font-weight-5 hint--bottom-right hint--medium"
											data-hint="세대를 인증하기 위한 키로, 관리사무소에서 문자로 받을 수 있습니다. 문자가 오지 않았다면 관리사무소로 문의해주세요.">
											<i class="fa fa-question-circle"></i>
										</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="key" id="key" class="gui-input" placeholder="세대 인증번호"
									style="width: 253px; margin-right: 5px;"> <span
									class="field-icon"><i class="fa fa-key"></i></span>
									<button type="button" style="display: inline" id="authKeyBtn"
										name="authKeyBtn" class="btn btn-dark btn-medium">세대
										인증</button>
								</label>
								<div class="key-msg" style="display: none"></div>
							</div>
							<!-- 동, 호수 인풋박스가 나타나는 곳 -->
							<div class="donghosu" style="display: none"></div>
							<!-- 동호수 히든 -->
							<input type="hidden" id="houseInfo" name="houseInfo">
							<!-- 구분 인풋박스가 나타나는 곳 -->
							<div class="gubun" style="display: none"></div>
							<!-- 구분 히든 -->
							<input type="hidden" id="gubun" name="gubun">
							<!-- 핸드폰 번호 입력 -->
							<div class="section">
								<label for="phone">
									<h6 class="less-mar-4">
										<span class="font-weight-5">핸드폰 번호</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="phone" id="phone" class="gui-input" value="${phone }"
									readonly> <span class="field-icon"><i
										class="fa fa-phone"></i></span>
								</label>
							</div>
							<button type="button" id="signUp" name="signUp"
								class="btn btn-gyellow btn-fullwidth">회원가입</button>
							<button type="button" onclick="location.href='login'"
								class="btn btn-dark-3 btn-fullwidth">취소</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>