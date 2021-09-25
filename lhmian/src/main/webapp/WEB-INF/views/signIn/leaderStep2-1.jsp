<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	//프론트에서 해야할 것
	//id는 영어대소문자+숫자 조합 12자리까지만 가능, 한글 및 특수문자 입력 안되게
	//비밀번호는 영어대소문자+숫자+특수문자 조합 12자리까지만 가능
	
	$(function() {
		$('#id').on('blur', function() {
			
			const id = $('#id').val();
			
			if (id == "") {
				$('.idCheck-msg').addClass('error-msg').text('아이디를 입력하세요.');
				return;
			}
			$.ajax({
				url: 'idCheck',
				type: 'POST',
				data: {id : id},
				success: function(data) {
					data == 1 ? $('.idCheck-msg').addClass('error-msg').text('중복된 아이디입니다.') : $('.idCheck-msg').addClass('correct-msg').text('사용 가능한 아이디입니다.')
				},
				error: function() {
					alert('AJAX 에러');
				}
			})
		})
		
        let newValue;
        // 모든 텍스트의 변경에 반응합니다.
        $("#id").on("propertychange change keyup paste input", function() {
           
           // 현재 변경된 데이터 셋팅
           newValue = $(this).val();
           
           // 현재 실시간 데이터 표츌
           $('.idCheck-msg').text('오오오');
        });
		
		
		
	})
	
</script>

<body>
	<div align="center">
		세대주 회원 가입
		<br><br>
		<form action="" method="POST">
		세대 인증번호 : 
		아이디* <input type="text" id="id" name="id">
		<div class="idCheck-msg"></div>
		비밀번호* <input type="password" id="password" name="password"><br>
		비밀번호 확인* <input type="password" id="passwordConfirm" name="passwordConfirm"><br>
		이름 <input type="text" id="name" name="name" readonly><br>
		연락처 <input type="text" id="phone" name="phone" value="${phone }" readonly><br>
		동 <input type="text" id="dong" name="dong" readonly><br>
		호수 <input type="text" id="hosu" name="hosu" readonly><br>
		<!-- 모달 -->
		차량번호 <input type="text" id="carCode" name="carCode"><button type="button">등록</button>
		<br><br>
		문자 수신 서비스 동의.체크박스.
		<br><br>
		<button type="submit">회원가입</button><button type="button">취소</button>
		</form>
	</div>
</body>
</html>