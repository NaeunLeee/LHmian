<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<section class="sec-padding" style="margin: 100px 0px 100px;">
		<div class="container">
			<div class="row">
				<div class="error_holder">
					<h1 class="uppercase title text-orange-2">접근 불가</h1>
					<br>
					<h2 class="uppercase">권한이 없습니다.</h2>
					<p>계정을 다시 확인해주세요.</p>
					<br> <br> <br>
				</div>
				<div align="center">
					<button type="button" class="btn btn-gyellow" onclick="location.href='${pageContext.request.contextPath}/'"><i class="bi bi-arrow-up-left-square"></i>&nbsp;&nbsp;메인으로 가기</button>
				</div>
			</div>
		</div>
	</section>
</body>
</html>