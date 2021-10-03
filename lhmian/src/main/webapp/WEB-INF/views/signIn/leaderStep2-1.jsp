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
	
	.btn {
		margin-top: 18px !important;
	}

</style>
</head>
<script>
	//프론트에서 해야할 것
	//id는 영어대소문자+숫자 조합 12자리까지만 가능, 한글 및 특수문자 입력 안되게
	//const regExpPw = /(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{8,20}$/;
	//비밀번호는 영어대소문자+숫자+특수문자 조합 12자리까지만 가능
	//*이 붙은 것은 반드시 입력하고 넘어가도록 해야한다. (완료)
	
	$(function() {
		
		let success;
		
		$('#id').on('blur', function() {
			
			const id = $('#id').val();
			
			if (id == "") {
				$('.idCheck-msg').empty();
				$('.idCheck-msg').css('display', 'block');
				$('.idCheck-msg').removeClass('correct-msg').addClass('error-msg').text('아이디를 입력하세요.');
				return;
			}
	
			$.ajax({
				url: 'idCheck',
				type: 'POST',
				data: {id : id},
				success: function(data) {
						$('.idCheck-msg').css('display', 'block');
					if (data == 1) {
						$('.idCheck-msg').toggleClass('correct-msg error-msg').text('중복된 아이디입니다.');
					} else {
						$('.idCheck-msg').toggleClass('correct-msg error-msg').text('사용 가능한 아이디입니다.');
					}
				},
				error: function() {
					alert('AJAX 에러');
				}
			})
		})
		
		$('#password').on('blur', function() {
			$('.pw-msg').empty();
			const password = $('#password').val();
			
			if (password == "") {
				$('.pw-msg').css('display', 'block');
				$('.pw-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		})
		
		$('#passwordConfirm').on('blur', function() {
			$('.pwcf-msg').empty();
			const passwordConfirm = $('#passwordConfirm').val();
			
			if (passwordConfirm == "") {
				$('.pwcf-msg').css('display', 'block');
				$('.pwcf-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		})
		
		$('#key').on('blur', function() {
			$('.key-msg').empty();
			const key = $('#key').val();
			
			if (key == "") {
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('세대 인증번호를 입력하세요.');
				return;
			}
		})
		
		$('#name').on('blur', function() {
			$('.name-msg').empty();
			const name = $('#name').val();
			
			if (name == "") {
				$('.name-msg').css('display', 'block');
				$('.name-msg').addClass('error-msg').text('이름을 입력하세요.');
				return;
			}
		})
		
		
		//유효성 검사^^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
        let newValue;
        // 모든 텍스트의 변경에 반응합니다.
        $("#id").on("propertychange change keyup paste input", function() {
           
           // 현재 변경된 데이터 셋팅
           newValue = $(this).val();
           
           // 현재 실시간 데이터 표츌
           $('.idCheck-msg').text('오오오');
        });
		
		$('#authKeyBtn').on('click', function() {
			const authKey = $('#key').val();

			$.ajax({
				url: 'authKey',
				type: 'POST',
				data: {authKey : authKey},
				success: function(data) {
					
					//인증번호가 일치하지 않으면
					if (!data) {
						alert('일치하는 세대가 없습니다.');
						return;
					}
					
					//인증번호가 일치하면
					alert('세대 인증이 완료되었습니다.');
					
					success = 1;
					
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
							  
					$('.donghosu').addClass('margin-top-1')
					$('.donghosu').html(box);
					
					//넘어온 값 생성된 box에 세팅
					$('#dong').val(dong);
					$('#hosu').val(hosu);
					$('#houseInfo').val(data.houseInfo);
				},
				error: () => alert('AJAX 에러')
			})
		})
		
		$('#signUp').on('click', function() {
			//메시지 박스 클리어
			$('.idCheck-msg').empty();
			$('.pw-msg').empty();
			$('.pwcf-msg').empty();
			$('.key-msg').empty();
			$('.gubun-msg').empty();
			$('.name-msg').empty();
			$('.key-msg').empty();
			
			const id = $('#id').val();
			const password = $('#password').val();
			const passwordConfirm = $('#passwordConfirm').val();
			const key = $('#key').val();
 			const name = $('#name').val();

			if (id == "") {
				
				$('.idCheck-msg').css('display', 'block');
				$('.idCheck-msg').addClass('error-msg').text('아이디를 입력하세요.');
				$('#id').focus();
				return;
			}
			if (password == "") {
				
				$('.pw-msg').css('display', 'block');
				$('.pw-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				$('#password').focus();
				return;
			}
			if (passwordConfirm == "") {
				
				$('.pwcf-msg').css('display', 'block');
				$('.pwcf-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				$('#passwordConfirm').focus();
				return;
			}
			if (key == "") {
				
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('인증번호를 입력하세요.');
				$('#key').focus();
				return;
			}
			if (!$(':radio[name="author"]').is(":checked")) {
				
				$('.gubun-msg').css('display', 'block');
				$('.gubun-msg').addClass('error-msg').text('세대주 세대원 여부를 선택해주세요.');
				$('#gubun').focus(); //이거 맞냐????
				return;
			}
			if (name == "") {
				
				$('.name-msg').css('display', 'block');
				$('.name-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				$(':radio[name="author"]').focus();
				return;
			}
			if (success !== 1) {
				
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('세대 인증을 해주세요.');
				$('#key').focus(); //이것도 ㅠ
				return;
			}
			
			alert('가입');
		})
		
		
		
	})
	
</script>

<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="#">홈</a></li>
							<li class="current"><a href="leaderStep1">회원가입</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="sec-title-container-padding-top text-center">
						<div class="gm-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">회원 정보 입력</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">.</p>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>

			<div class="smart-wrap">
				<div class="smart-forms smart-container wrap-3">
					<!-- 정보 입력 폼 -->
					<div class="form-body bg-light">
						<form action="memberSignUp" method="POST" autocomplete="off">
							<!-- 아이디 입력 -->
							<div class="section">
								<label for="id">
									<h6 class="less-mar-4">
										<span class="font-weight-5">아이디 <span
											class="font-weight-3">*</span></span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="id" id="id" class="gui-input" placeholder="몇자리 이상 웅앵">
									<span class="field-icon"><i class="fa fa-user"></i></span>
								</label>
								<div class="idCheck-msg" style="display: none"></div>
							</div>
							<!-- 비밀번호 입력 -->
							<div class="section">
								<label for="password">
									<h6 class="less-mar-4">
										<span class="font-weight-5">비밀번호</span>
									</h6>
								</label> <label class="field prepend-icon"> <input
									type="password" name="password" id="password" class="gui-input"
									placeholder="영문자+숫자+특수문자 8자리 이상 20자리 이하 입력"> <span class="field-icon"><i
										class="fa fa-lock"></i></span>
								</label>
								<div class="pw-msg" style="display: none"></div>
							</div>
							<!-- 비밀번호 확인 입력 -->
							<div class="section">
								<label for="passwordConfirm">
									<h6 class="less-mar-4">
										<span class="font-weight-5">비밀번호 확인</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="password"
									name="passwordConfirm" id="passwordConfirm" class="gui-input"
									placeholder="영문자+숫자+특수문자 8자리 이상 20자리 이하 입력"> <span class="field-icon"><i
										class="fa fa-unlock-alt"></i></span>
								</label>
								<div class="pwcf-msg" style="display: none"></div>
							</div>
							<!-- 세대 인증번호 입력 -->
							<div class="section">
								<label for="key">
									<h6 class="less-mar-4">
										<span class="font-weight-5">세대 인증번호</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="key" id="key" class="gui-input"> <span class="field-icon"><i
										class="fa fa-key"></i></span>
								</label>
								<div class="key-msg" style="display: none"></div>
							</div>
								<button type="button" style="display:inline" id="authKeyBtn" name="authKeyBtn" class="btn btn-dark btn-fullwidth">세대 인증</button>
							<!-- 동, 호수 인풋박스가 나타나는 곳 -->
							<div class="donghosu" style="display:none"></div>
							<!-- 동호수 히든 -->
							<input type="hidden" id="houseInfo" name="houseInfo">
							<!-- 구분 라디오박스 -->
							<div class="section-gubun">
							<div>
									<h6 class="less-mar-4">
										<span class="font-weight-5">구분</span>
									</h6>

								</div>

								<label class="control control--radio gubun" style="display:inline">세대주
									<input type="radio" name="author" value="OWNER">
									<div class="control__indicator dark"></div>
								</label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label class="control control--radio gubun" style="display:inline">세대원
									<input type="radio" name="author" value="MEMBER">
									<div class="control__indicator dark"></div>
								</label>
								<div class="gubun-msg" style="display: none"></div>
							</div>
							<!-- 이름 입력 -->
							<div class="section">
								<label for="name">
									<h6 class="less-mar-4">
										<span class="font-weight-5">이름</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="name" id="name" class="gui-input"
									placeholder=""> <span class="field-icon"><i
										class="fa fa-smile-o"></i></span>
								</label>
								<div class="name-msg" style="display: none"></div>
							</div>
							<!-- 핸드폰 번호 입력 -->
							<div class="section">
								<label for="phone">
									<h6 class="less-mar-4">
										<span class="font-weight-5">핸드폰 번호</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="phone" id="phone" class="gui-input"
									value="${phone }" readonly> <span class="field-icon"><i
										class="fa fa-phone"></i></span>
								</label>
							</div>
							<!-- 차량번호 -->
							<div class="section">
								<!--  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ아악ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ carCode로 해라 -->
							</div>
							<button type="button" id="signUp" name="signUp" class="btn btn-gyellow btn-fullwidth">회원가입</button>
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