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
	let success = false;
	//아이디, 비밀번호 검증 성공여부
	let idToken = false;
	let passwordToken = false;
	
	//CSRF
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	
	$(function() {
		//유효성 검사^^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		let textId; //실시간으로 변하는 아이디
		let textPw; //실시간으로 변하는 비밀번호
		let textPwcf; //실시간으로 변하는 비밀번호 확인
		
        //아이디 실시간 검증
        $("#id").on("propertychange change keyup paste input", function() {
        	$('.idCheck-msg').empty();
        	
            //실시간데이터 셋팅
            textId = $(this).val();
            
         });
        
        //비밀번호 실시간 검증
        $("#password").on("propertychange change keyup paste input", function() {
        	passwordToken = false;
        	
            // 실시간 데이터 셋팅
            textPw = $(this).val();

            $('.pw-msg').css('display', 'block');
            //비밀번호 정규식 함수에 따른 메시지 출력
            $('.pw-msg').addClass('error-msg').text(checkPwd(textPw));
            
         });
        
        //비밀번호 실시간 검증
        $("#passwordConfirm").on("propertychange change keyup paste input", function() {
        	passwordToken = false;

            // 실시간 데이터 셋팅
            textPwcf = $(this).val();

            if (textPw !== textPwcf) {
            	$('.pwcf-msg').css('display', 'block');
            	$('.pwcf-msg').addClass('error-msg').text('비밀번호가 일치하지 않습니다.');
            } else {
            	$('.pwcf-msg').text('');
            	passwordToken = true;
            }
         });
		
        
		$('#id').on('blur', function() {
			$('.idCheck-msg').empty();
			idToken = false;
			
			textId = $(this).val();
			
			if (textId == "" || textId == null) {
				$('.idCheck-msg').css('display', 'block');
				$('.idCheck-msg').removeClass().addClass('error-msg').text('아이디를 입력하세요.');
				return;
			}
			
			//아이디 유효성 검사가 통과되었으면 ajax로 아이디 중복 검사
			if (checkID(textId) == '') {
				$('.idCheck-msg').empty();
				$.ajax({
					url: 'idCheck',
					type: 'POST',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			         },
					data: {id : textId},
					success: function(data) {
							$('.idCheck-msg').css('display', 'block');
						if (data == 1) {
							$('.idCheck-msg').empty();
							$('.idCheck-msg').removeClass().addClass('error-msg').text('중복된 아이디입니다.');
						} else {
							$('.idCheck-msg').empty();
							$('.idCheck-msg').removeClass().addClass('correct-msg').text('사용 가능한 아이디입니다.');
							idToken = true;
						}
					},
					error: function() {
						alert('AJAX 에러');
					}
				})
			//통과되지 않으면 그에 따른 메세지 출력
			} else {
			   $('.idCheck-msg').empty();
		       $('.idCheck-msg').css('display', 'block');
		       $('.idCheck-msg').addClass('error-msg').text(checkID(textId));
			}
		})
		
		$('#password').on('blur', function() {
			const password = $('#password').val();
			
			if (password == "") {
				$('.pw-msg').empty();
				$('.pw-msg').css('display', 'block');
				$('.pw-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		})
		
		$('#passwordConfirm').on('blur', function() {
			const passwordConfirm = $('#passwordConfirm').val();
			
			if (passwordConfirm == "") {
				$('.pwcf-msg').empty();
				$('.pwcf-msg').css('display', 'block');
				$('.pwcf-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		})
		
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
		
		//차량 등록 버튼
		$('#carBtn').on('click', function() {
			$('#carModal').show();
		})
		
   
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
					$('.key-msg').css('display', 'block');
					
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
					$('#author').val(data.gubun);
					
				},
				error: () => alert('AJAX 에러')
			})
		})
		
		//회원 가입 버튼 클릭시, 빈 칸 검사
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
			if (name == "") {
				
				$('.name-msg').css('display', 'block');
				$('.name-msg').addClass('error-msg').text('이름을 입력하세요.');
				$('#name').focus();
				return;
			}
			if (!success) {
				$('.key-msg').css('display', 'block');
				$('.key-msg').addClass('error-msg').text('세대 인증을 해주세요.');
				$('#key').focus(); 
				return;
			}
			if (!idToken) {
				$('.idCheck-msg').css('display', 'block');
				$('.idCheck-msg').addClass('error-msg').text('아이디 중복확인을 해주세요.');
				$('#id').focus(); 
				return;
			}
			if (!passwordToken) {
				$('.pw-msg').css('display', 'block');
				$('.pw-msg').addClass('error-msg').text('비밀번호가 일치하지 않습니다.');
				$('#password').focus(); //이것도 ㅠ
				return;
			}
			
			$('#frm').submit();
		})
		
		
		
	})
	
	
	//비밀번호 유효성 검사 함수
	function checkPwd(password) {
		let check = /(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{8,20}$/.test(password);
		
		if (!check) {
			return "영문자, 숫자, 특수문자를 모두 포함하여 8~12자로 입력해주세요."
		}
		
		if(/(\w)\1\1/.test(password)){
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
	
	//아이디 유효성 검사 함수
	function checkID(value) {
		let check = /^[a-zA-z0-9]{4,20}$/.test(value);

		if (!check) {
			return "영문 대소문자, 숫자를 조합하여 4~20자리로 입력해주세요."
		}
		
		return '';
	}
	
	
</script>

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
						<p class="by-sub-title">회원 정보를 입력해주세요.</p>
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
							<!-- 아이디 입력 -->
							<div class="section">
								<label for="id">
									<h6 class="less-mar-4">
										<span class="font-weight-5">아이디</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="id" id="id" class="gui-input" placeholder="아이디"
									style="IME-MODE: inactive"> <span class="field-icon"><i
										class="fa fa-user"></i></span>
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
									placeholder="비밀번호"> <span class="field-icon"><i
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
								</label> <label class="field prepend-icon"> <input
									type="password" name="passwordConfirm" id="passwordConfirm"
									class="gui-input" placeholder="비밀번호 확인"> <span
									class="field-icon"><i class="fa fa-unlock-alt"></i></span>
								</label>
								<div class="pwcf-msg" style="display: none"></div>
							</div>
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
											data-hint="세대를 인증하기 위한 키로, 관리사무소에서 문자로 발급받을 수 있습니다. 문자가 오지 않았다면 관리사무소로 문의해주세요.">
											<i class="fa fa-question-circle"></i>
										</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="key" id="key" class="gui-input" placeholder="세대 인증번호"
									style="width: 253px; margin-right: 5px;">
									<span class="field-icon"><i class="fa fa-key"></i></span>
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
							<input type="hidden" id="author" name="author">
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