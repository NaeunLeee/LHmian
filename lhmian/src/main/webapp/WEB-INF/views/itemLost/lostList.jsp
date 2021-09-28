<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분실물보관소-사용자</title>
</head>
<body>
	<div>
		<table border="1">
			<tr>
				<th>분실물번호</th>
				<th>분실물내용</th>
				<th>작성날짜</th>
				<th>수정날짜</th>
				<th>분실물파일</th>
				<th>수령여부</th>
			</tr>
			<c:forEach items="${lost}" var="item">
			
			<tr>
				<td>${item.lostNo}</td>
				<td>${item.lostContent}</td>
				<td>${item.lostDate}</td>
				<td><c:if test="${not empty item.lostUpdate}">${item.lostUpdate}</c:if></td>
				<td><img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}"></td>
				<td>${item.lostStatus}</td>
			</tr>
	
			</c:forEach>
		</table>
	</div>
</body>
</html>