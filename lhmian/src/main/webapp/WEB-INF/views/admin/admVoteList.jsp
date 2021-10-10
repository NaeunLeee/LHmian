<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	background-color: white;
}
a.link {
	pointer-events: none; !important /*이벤트를 막음*/
	cursor: default; !important /*마우스 커서를 포인트에서 디폴트로 변경*/
}
.btn.btn-medium {
	width: 98px;
    padding: 5px 20px;
    font-size: 14px;
}
</style>
</head>
<body>
	<section class="sec-padding section-light">
		<div class="container">
			<div class="text-box white padding-4 col-7">
				<table class="table">
					<thead>
						<tr>
							<th class="col-1">상태</th>
							<th class="col-7">제목</th>
							<th class="col-3">투표 기간</th>
							<th class="col-1">참여율</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list }">
							<tr>
								<td>
									<c:if test="${list.over eq '투표마감'}">
										<a class="btn btn-medium btn-grey xround-5 style="color:#727272;">${list.over }</a>
									</c:if>
									<c:if test="${list.over eq '진행중'}">
										<a class="btn btn-medium btn-yellow-dark xround-5">${list.over }</a>
									</c:if>	
								</td>
								<td>${list.voteTitle }</td>
								<td>
								<fmt:formatDate value="${list.voteStart }"
									pattern="yyyy-MM-dd" /> ~ 
								<fmt:formatDate value="${list.voteEnd }"
									pattern="yyyy-MM-dd" /></td>
								<td>${list.percent }%</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<button style="float: right; margin-right: 20px; padding: 4px 13px;"
					type="button" class="btn btn-border light"
					onclick="location.href='voteForm'">투표 등록</button>
				<br> <br> <br>
			</div>
		</div>

	</section>
</body>
</html>