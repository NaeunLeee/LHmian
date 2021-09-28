<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
		${info.oiType} | <input id="oiTitle" type="text" value="${info.oiTitle}" readonly="readonly">&nbsp;
		작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" />
		<hr>
		<textarea id="oiContent" rows="5" cols="33" readonly="readonly">${info.oiContent}</textarea><br>
		
		<c:if test="${info.oiFileid != null}">
		첨부파일 | <a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>
		</c:if>
	</div>
	<br>
	<div align="center">
		<button type="button" onclick="location.href='../introduce/opeInfoList'">목 록</button>
	</div>
</div>
</body>

</html>