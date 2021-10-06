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
	.smart-forms .form-body {
		padding-bottom: 40px;
	}
	
	.time {
		color: red;
	}

	div .form-body .btn {
		height: 50px;
	}
</style>
<script>
	$(function() {

		//input box 숫자만 입력 가능
		onlyNumberFunc(document.getElementById("phone"));

		//인증 성공 여부
		let success = false;

		$('#sendKey').on('click', function() {

			const phone = $('#phone').val();
			const json = {
				"phone" : phone
			};

			//핸드폰 번호가 빈칸이거나, 11자리까지 입력하지 않은 경우 인증을 실행하지 않는다.
			if (phone == "" || phone.length !== 11) {
				$('.sendKey-msg').addClass('error-msg').text('핸드폰 번호를 확인해주세요.');
				return; //onclick 함수 종료
			}

			$.ajax({
				url : 'sendKey',
				type : 'POST',
				data : JSON.stringify(json),
				contentType : "application/json",
				success : function(data) { //문자 발송에 성공시 data: 인증번호, 실패시 data: "fail" 메세지
					if (data !== "fail") {
						success = true;
						$('.sendKey-msg').addClass('correct-msg').text('인증번호 발송에 성공했습니다.');

						//인증번호 인풋박스 생성
						const box = '<div class="section">'
								  + '	<label for="phone">'
								  +	'		<h6 class="less-mar-4">'
								  +	'			<span class="font-weight-5">인증 번호 </span>'
								  + '			<span class="icon-alarmclock"></span>&nbsp;'
								  + '			<span class="time"></span>'
								  + '       </h6>'
								  + '	</label>'
								  + '	<label class="field prepend-icon">'
								  + '	<input type="text" name="key" id="key" class="gui-input" placeholder="3분 내에 입력">'
								  + '	<span class="field-icon"><i class="fa fa-key"></i></span>'
								  + '	</label>'
								  + '	<p class="certificate-msg"></p>'
								  + '	</div>'
								  + '	<button id="certificate" name="certificate" class="btn btn-gyellow btn-fullwidth uppercase" type="button">인증번호 전송</button>';
						$('#sendKey').remove();
						$('#box').html(box);

						//3분 내에 입력
						let timeout = false;
						let time = 180;
						let min = "";
						let sec = "";

						const x = setInterval(function() {
							min = parseInt(time / 60);
							sec = parseInt(time % 60);
							//0초~9초 앞에 0 붙이기
							if (sec < 10 && sec >= 0) {
								sec = "0" + sec;
							} 

							$('.time').html(min + ":" + sec);
							time--;
							
							if (time < 0) {
								clearInterval(x);
								success = false;
								data = null;
								timeout = true;
							}
						}, 1000);
					
						$('#certificate').on('click', function() {
							
							if (timeout) {
								$('.certificate-msg').addClass('error-msg').text('인증번호 시간이 지났습니다.');
								return;
							}
							
							if ($('#key').val() == data) {
								alert('휴대폰 인증이 완료되었습니다.');
								//다음 페이지로 넘어가기
								$('#frm').submit();
							} else {
								$('.certificate-msg').addClass('error-msg').text('인증번호가 일치하지 않습니다.');
							}
						})
					} else {
						$('.certificate-msg').addClass('error-msg').text('인증번호 발송에 실패했습니다.');
					}
				},
				error : function() {
					alert('AJAX 에러');
				}
			})

		})

	})

	//숫자만 입력가능한 keyup 이벤트 함수
	function onlyNumberFunc(t) {
		var regexp = /[^0-9]/gi;
		t.onkeyup = function(e) {
			var v = this.value;
			this.value = v.replace(regexp, '');
		}
	}
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
						<h4 class="uppercase font-weight-7 less-mar-1">핸드폰 인증</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">회원 가입을 위해 핸드폰 인증이 필요합니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>

			<div class="smart-wrap">
				<div class="smart-forms smart-container wrap-3">
					<!-- 인증 폼 -->
					<div class="form-body bg-light">
						<form id="frm" name="frm" action="leaderStep2-1" method="POST"
							autocomplete="off">
							<!-- 카카오 로그인으로 넘어오면 고유 id 넘어옴 -->
							<input type="hidden" id="id" name="id" value="${kakaoId }">
							<!-- 휴대폰 번호 입력 폼 -->
							<div class="section">
								<label for="phone">
									<h6 class="less-mar-4">
										<span class="font-weight-5">핸드폰 번호</span>
									</h6>
								</label> <label class="field prepend-icon"> <input type="text"
									name="phone" id="phone" class="gui-input"
									placeholder="'-' 없이 입력" maxlength=11> <span
									class="field-icon"><i class="fa fa-phone"></i></span>
								</label>
								<p class="sendKey-msg"></p>
							</div>
							<button id="sendKey" name="sendKey" class="btn btn-gyellow btn-fullwidth uppercase"
								type="button">인증번호 전송</button>
						</form>
						<!-- 인증번호 입력 폼 생성 공간 -->
					<div id="box"></div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>