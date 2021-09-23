<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 운영 정보 공개</title>

<style>
	tr {
		cursor: pointer;
	}
	tr:hover {
		background-color: lightyellow;
	}
</style>

</head>
<body>
<br><br>
<div align="center">
	<div>
		<table border="1">
			<tr>
				<th>글 번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${list}" var="info">
				<tr onclick="location.href='opeInfoSelect?oiNo=${info.oiNo}'">
					<td>${info.oiNo}</td>
					<td>${info.oiType}</td>
					<td>${info.oiTitle}</td>
					<td><fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<div>
		<form id="search" name="search">
			<select>
				<option value="T">제목</option>
				<option value="C">카테고리</option>
			</select>
			&nbsp; 
			<input type="text" id="oiTitle" name="oiTitle">
			&nbsp; 
			<button>검색</button>
		</form>
	</div>
	<br><br>
</div>

</body>
</html>