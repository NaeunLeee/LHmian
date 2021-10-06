<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myFac</title>
</head>
<body>
	<div class="container">
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이용시설</th>
					<th>예약 내역</th>
					<th>상태</th>
					<th>이용기간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="comm">
					<tr>
						<td>${comm.commNo}</td>
						<td>${comm.id}</td>
						<td><a class="move" href="${comm.commNo}">${comm.commTitle}</a></td>
						<td><fmt:formatDate value="${comm.commDate}" type="both"
								pattern="yy-MM-dd" /></td>
						<td>${comm.commHit}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>