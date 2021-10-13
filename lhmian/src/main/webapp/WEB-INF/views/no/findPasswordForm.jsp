<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
.input-1 {
width: 380px;
}
#phone {
    width: 210px;
    margin-right: 5px;
}
#key {
    width: 278px;
    margin-right: 5px;
}
.time {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<!-- 아이디 영역 -->
		<form id="frm" action="findPassword" method="POST" autocomplete="off">
			<div class="form-body">
				<div class="sec-title-container-nopadding">
					<div class="gm-title-line-1 text-center"></div>
					<h4 class="uppercase font-weight-7 less-mar-1 text-center">비밀번호 찾기</h4>
					<div class="clearfix"></div>
					<br>
					<p class="by-sub-title">- 회원정보에 저장된 이름, 아이디와 휴대폰 인증으로 비밀번호를 찾을 수 있습니다.<br>
							- 카카오 로그인 및 회원가입으로 이용하는 회원은 비밀번호를 찾을 수 없습니다.</p>
				</div>
				<br>
				<div class="col-md-12">
				<div class="section">
					<label> 아이디 <br> <input type="text"
						name="id" id="id" class="input-1" placeholder="아이디 입력">
					</label>
				</div>
				<div class="section">
					<label> 이름 <br> <input type="text"
						name="name" id="name" class="input-1" placeholder="이름 입력">
					</label>
				</div>
				<!-- 비밀번호 영역 -->
				<div class="section">
					<label> 휴대폰 번호 <br> <input type="text"
						name="phone" id="phone" class="input-1"
						placeholder="휴대폰 번호 '-' 없이 입력" maxlength=11> 
										<button id="sendKey" name="sendKey"
					class="btn btn-gyellow btn-medium" type="button">인증번호 전송</button>
					</label>
				</div>	
				<div class="section">
					<label> 인증 번호 <span class="time"></span> <br> <input type="text"
						name="key" id="key" class="input-1"
						placeholder="인증 번호 입력"> 
					<button id="certificate" name="certificate"
					class="btn btn-gyellow btn-medium" type="button"> 인증 </button>
					</label>
				</div>	
				
				</div>
				<br>
				<div class="btn-area text-center">
					<a id="passwordFindBtn" class="btn btn-gyellow"> 찾기 </a>
					<a id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
				</div>
				<!-- CSRF 토큰 -->
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			</div>
		</form>
	</div>
</body>
<script>
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	
	//인증 성공 여부
	let success = false;
	let certificateSuccess = false;

	//숫자만 입력 가능
	onlyNumberFunc(document.getElementById("phone"));
	
	
	$('#sendKey').on('click', function() {

		const phone = $('#phone').val();
		const json = {
			"phone" : phone
		};

		//핸드폰 번호가 빈칸이거나, 11자리까지 입력하지 않은 경우 인증을 실행하지 않는다.
		if (phone == "" || phone.length !== 11) {
			alert('핸드폰 번호를 확인해주세요.');
			return; //onclick 함수 종료
		}

 		$.ajax({
			url : 'sendKey',
			type : 'POST',
			beforeSend: function(xhr) {
	            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	         },
			data : JSON.stringify(json),
			contentType : "application/json",
			success : function(data) { //문자 발송에 성공시 data: 인증번호, 실패시 data: "fail" 메세지
				if (data !== "fail") {
					success = true;
					alert('인증번호 발송에 성공했습니다.');

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
							alert('인증번호 시간이 지났습니다. 인증을 다시 진행해주세요.')
							return;
						}
						
						if ($('#key').val() == data) {
							alert('휴대폰 인증이 완료되었습니다.');
							certificateSuccess = true;
						} else {
							alert('인증번호가 일치하지 않습니다.');
						}
					})
				} else {
					alert('인증번호 발송에 실패했습니다.');
				}
			},
			error : function() {
				alert('AJAX 에러');
			}
		}) 

	})
	
	
	
	$('#passwordFindBtn').on('click', function() {
		if ($('#id').val() == "") {
			alert('아이디를 입력하세요.');
			$('#id').focus();
			return;
		}
		if ($('#name').val() == "") {
			alert('이름을 입력하세요.');
			$('#name').focus();
			return;
		}
		
		if (!certificateSuccess) {
			alert('휴대폰 인증을 진행해주세요.');
			$('#phone').focus();
			return;
		}
		
		$('#frm').submit();
	})
</script>
</html>