<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 운영 정보 등록</title>
</head>
<body>
<div align="center">
	<form id="frm" name="frm" action="${pageContext.request.contextPath}/admin/admOpeInfoInsert" method="post">
	<div>
		<select name="oiType">
			<option value="관리규약">관리규약</option>
			<option value="재무제표">재무제표</option>
			<option value="안전관리">안전관리</option>
		</select>
		&nbsp;&nbsp;
		<input type="text" name="oiTitle" placeholder="제목을 입력하세요.">
		<hr>
	</div>
	<div>
		<textarea rows="20" cols="50" name="oiContent"></textarea>
	</div>
	<div>
		<input type="file" name="oiFile">
	</div>
	<div align="center">
		<button type="submit">등 록</button>
		<button type="reset">취 소</button>
		<button type="button" onclick="location.href='../introduce/opeInfoList'">목 록</button>
	</div>
	</form>
</div>
</body>
</html>