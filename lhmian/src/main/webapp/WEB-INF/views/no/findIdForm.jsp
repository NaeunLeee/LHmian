<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LHmian</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.input-1 {
	margin-bottom: 0;
}
</style>
</head>
<body>
	<div align="center">
		<!-- 아이디 영역 -->
		<form action="findId" method="POST" autocomplete="off">
			<div class="form-body">
				<div class="section">
					<label class="field prepend-icon"> 이름 <input type="text"
						name="name" id="name" class="input-1" placeholder="이름을 입력해주세요.">
					</label>
					<div class="id-error-msg" style="display: none"></div>
				</div>
				<!-- 비밀번호 영역 -->
				<div class="section">
					<label class="field prepend-icon"> <input type="text"
						name="phone" id="phone" class="input-1"
						placeholder="휴대폰 번호를 입력해주세요."> 
					</label>
					<div class="pw-error-msg" style="display: none"></div>
				</div>

			</div>
		</form>
	</div>
</body>
</html>