<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 민원 작성</title>
</head>
<body>
<div align="center">
	<form id="frm" name="frm" action="" method="post">
		<div>
			제목 : <input type="text" name="csTitle"><br>
			<hr>
			<textarea rows="20" cols="50" name="csContent"></textarea>
		</div>
		<!-- 아이디와 세대정보는 나중에 세션에서~ -->
		<input type="hidden" name="id" value="481">
		<input type="hidden" name="houseInfo" value="1156002">
		<div align="center">
			<button type="submit">등 록</button>
			<button type="reset">취 소</button>
			<button type="button" onclick="location.href='../office/csList'">목 록</button>
		</div>
	</form>
</div>
</body>
</html>