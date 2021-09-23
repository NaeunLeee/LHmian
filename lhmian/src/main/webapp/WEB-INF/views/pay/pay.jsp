<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function() {
	$('#doPay').on('click', function() {

		window.open("", "popup_window", "width=500, height=700, scrollbars=yes");

		
		
	})
})


</script>
</head>
<body>
	<div>
		<input type="radio" id="kakaoPay" name="pay" value="HTML"><label for="kakaoPay" ></label>
		<img src="./resources/image/payment_icon_yellow_small.png">
		<input
			type="radio" id="accountPay" name="pay" value="accountPay" checked="checked">계좌이체
		<input type="radio" id="creditPay" name="pay" value="creditPay">신용카드
	</div>
	<div>
	<form method="post" action="kakaoPay" target="popup_window">
		<button type="submit" id="doPay">결제하기</button>
	</form>
	</div>
</body>
</html>