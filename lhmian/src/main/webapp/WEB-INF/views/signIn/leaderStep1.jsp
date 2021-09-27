<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.error-msg {
		color: red;
	}
	
	.correct-msg {
		color: blue;
	}
</style>
<script>
	$(function() {
		//변경사항 : 인풋박스 userPhoneNumber -> phone으로 변경
		
		//input box 숫자만 입력 가능
		onlyNumberFunc(document.getElementById("phone"));
		onlyNumberFunc(document.getElementById("key"));

		//인증 성공 여부
		// let success;

		// $('#sendKey').on('click', function() {

		// 	const phone = $('#phone').val();
		// 	const json = {
		// 		"phone" : phone
		// 	};
			
		// 	//핸드폰 번호가 빈칸이거나, 11자리까지 입력하지 않은 경우 인증을 실행하지 않는다.
		// 	if (phone == "" || phone.length !== 11) {
		// 		$('.sendKey-msg').addClass('error-msg').text('휴대폰 번호를 확인해주세요.');
		// 		return; //onclick 함수 종료
		// 	}

		// 	$.ajax({
		// 		url : 'sendKey',
		// 		type : 'POST',
		// 		data : JSON.stringify(json),
		// 		contentType : "application/json",
		// 		success : function(data) { //문자 발송에 성공시 data: 인증번호, 실패시 data: "fail" 메세지
		// 			if (data !== "fail") {
		// 				success == "success";
		// 				$('.sendKey-msg').addClass('correct-msg').text('인증번호 발송에 성공했습니다.');

		// 				$('#certificate').on('click', function() {
		// 					if ($('#key').val() == data) {
		// 						alert('휴대폰 인증이 완료되었습니다.');
		// 						//다음 페이지로 넘어가기
		// 					}

		// 				})

		// 			} else {
		// 				$('.sendKey-msg').addClass('error-msg').text('인증번호 발송에 실패했습니다.');
		// 			}
		// 		},
		// 		error : function() {
		// 			alert('AJAX 에러');
		// 		}
		// 	})

		// })

		// $('#certificate').on('click', function() {
		// 	if (success == null) {
		// 		$('.certificate-msg').addClass('error-msg').text('먼저 인증번호를 발송해주세요.');
				
		// 	}
		// })

		//테스트용
		$('#certificate').on('click', function() {
			$('#frm').submit();
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

	<div align="center">
		회원 가입<br> 휴대폰 인증이 필요합니다. <br> <br> <br>
		<form id="frm" name="frm" action="leaderStep2-1" method="POST">
			<input type="text" id="id" name="id" value="${kakaoId }">
			휴대폰 번호 : <input type="text" id="phone"
				name="phone" maxlength=11 placeholder="'-'없이 입력">
			<button type="button" id="sendKey" name="sendKey">인증번호 전송</button>
		</form>
		<div class="sendKey-msg"></div>
		<!-- 프론트 : 휴대폰번호로 인증번호 전송이 되면 인풋박스가 뜨게 -->
		<br> 인증번호 입력 : <input type="text" id="key" name="key">
		<button type="button" id="certificate" name="certificate">인증</button>
		<div class="certificate-msg"></div>
	</div>

</body>
</html>