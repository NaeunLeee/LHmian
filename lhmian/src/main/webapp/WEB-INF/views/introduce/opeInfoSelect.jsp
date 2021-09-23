<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 운영 정보 공개</title>
</head>
<body>
<div align="center">
	<h3>운영 정보</h3>
	<hr>
	<div>
		${info.oiType} | <input type="text" value="${info.oiTitle}" readonly="readonly">
		<hr>
		<textarea rows="5" cols="33" readonly="readonly">${info.oiContent}</textarea><br>
		첨부파일 | <input type="text" value="${info.oiFile}" readonly="readonly">
	</div>
	<br>
	<div align="center">
		<button type="button" onclick="location.href='../introduce/opeInfoList'">목 록</button>
	</div>
</div>
</body>
</html>