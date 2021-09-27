<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>분실물보관소-관리자</title>
</head>
<body>
	<div>
		<button id="register">등록</button>&nbsp;&nbsp;&nbsp;<button id="modify">수정</button>
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
				<td><fmt:formatDate value="${item.lostDate}" pattern="yyyy/MM/dd"/></td>
				<td>
				<c:if test="${not empty item.lostUpdate}">
				<fmt:formatDate value="${item.lostUpdate}" pattern="yyyy/MM/dd"/></c:if></td>
				<td><img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}"></td>
				<td>${item.lostStatus}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
<script>
$(function() {
	$('#register').on('click', function() {
		$(location).attr('href', 'admLostInsert');
	})
})
</script>
</html>