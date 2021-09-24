<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script>
	$(function() {
		$('#certificate').on('click', function() {
			const IMP = window.IMP; // 생략 가능
			IMP.init("imp57655457"); 

			IMP.certification(
				{}, 
				function(rsp) {
				//인증 성공시
				if (rsp.success) {
					// jQuery로 본인 웹서버로 요청
					$.ajax({
						type : 'POST',
						url : 'certificate',
						dataType : 'json',
						data : {
							'imp_uid' : rsp.imp_uid
						},
					});
				} else {
					alert("인증에 실패하였습니다. 에러 내용: " + rsp.error_msg);
				}
			});
		});

	})
</script>
</head>
<body>

	<div align="center">
		세대주 회원 가입<br> 본인 명의 휴대폰 또는 아이핀 인증이 필요합니다. <br> <br> <br>
		<button type="button" id="certificate" name="certificate">휴대폰
			본인인증</button>
		<button type="button">아이핀 인증</button>
	</div>

</body>
</html>