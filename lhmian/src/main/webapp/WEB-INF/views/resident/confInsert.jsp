<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>
</head>
<body>

<div align="center">
	<form id="frm" name="frm" action="" method="post">
		<div>
			제목 : <input type="text" name="confTitle">&nbsp;
			<input type="hidden" name="confWriter" value="${name}">
			<hr>
			<textarea rows="20" cols="50" name="confContent"></textarea>
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		</div>
		<div align="center">
			<button type="submit">등 록</button>
			<button type="reset">취 소</button>
			<button type="button" onclick="loction.href='../resident/confList'">목 록</button>
		</div>
	</form>
</div>

</body>
</html>