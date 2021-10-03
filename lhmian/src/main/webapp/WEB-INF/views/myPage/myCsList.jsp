<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
h4 {
	color: #727272;
}

tr {
	border-bottom: 1px solid lightgray;
	height : 50px;
}

.table-style-2 {
	width: 800px;
	text-align : center;
}

tr:hover {
		background-color: lightyellow;
	}
</style>
<div align="center">
	<h4>나의 민원 내역</h4>
	<hr>
	<section class="sec-padding-yj">
		<div class="container">
			<div class="row">
				<table class="table-style-2">
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>답변</th>
					</tr>
					<c:forEach items="${myList}" var="list">
						<tr onclick="location.href='../office/csSelect?csNo=${list.csNo}'">
							<td>${list.csNo}</td>
							<td>${list.csTitle}</td>
							<td>${list.csContent}</td>
							<td>${list.csAnswer}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</section>
</div>