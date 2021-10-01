<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 민원글 조회</title>
</head>
<body>
	<div>
		<table border="1">
			<tr>
				<th>글 번호</th>
				<th>아이디</th>
				<th>세대정보</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성일자</th>
				<th>수정일자</th>
				<th>답변</th>
				<th>답변일자</th>
			</tr>
			<c:forEach items="${myList}" var="list">
				<tr>
					<td>${list.csNo}</td>
					<td>${list.houseInfo}</td>
					<td>${list.csTitle}</td>
					<td>${list.csContent}</td>
					<td>${list.csDate}</td>
					<td>${list.csUpdate}</td>
					<td>${list.csAnswer}</td>
					<td>${list.csAnsdate}</td>
				</tr>
			</c:forEach>
		</table>
		${myList }
	</div>
</body>
</html>