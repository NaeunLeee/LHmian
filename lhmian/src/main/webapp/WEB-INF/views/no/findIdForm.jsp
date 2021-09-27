<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 찾기</title>
<script>
	$(function() {
		$('#closeBtn').on('click', function() {
			window.close();
		})

	})
</script>
</head>
<body>
	<div align="center">
		<form action="" method="POST">
			이름 <input type="text" id="name" name="name"><br> 휴대폰 번호
			<input type="text" id="phone" name="phone"> <br>
			<br>
			<button>찾기</button>
			<button type="button" id="closeBtn">닫기</button>
		</form>
	</div>
</body>
</html>