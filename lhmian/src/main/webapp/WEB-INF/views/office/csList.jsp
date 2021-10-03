<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<style>
h4 {
	color: #727272;
}

tr {
	border-bottom: 1px solid lightgray;
	height: 50px;
	cursor: pointer;
}

.table-style-2 {
	width: 800px;
	text-align: center;
}

tr:hover {
	background-color: lightyellow;
}

.btn-gyellow-yj {
	height : 30px;
	color: #fff;
	background-color: #ecae3d;
	padding : 0 30px;
}
</style>
<div align="center">
	<h4>민원 게시판</h4>
	<hr>
	<section class="sec-padding-yj">
		<div class="container">
			<div class="row">
				<table class="table-style-2">
					<tr>
						<th>글 번호</th>
						<th>상 태</th>
						<th>제 목</th>
						<th>작성자</th>
						<th>작성일자</th>
					</tr>
					<c:forEach items="${list}" var="cs">
						<tr>
							<td>${cs.csNo}</td>
							<c:if test="${cs.csAnswer != null}">
								<td>답변완료</td>
							</c:if>
							<c:if test="${cs.csAnswer == null}">
								<td>처리중</td>
							</c:if>
							<td onclick="location.href='../office/csSelect?csNo=${cs.csNo}'">${cs.csTitle}</td>
							<td>${cs.name}</td>
							<td><fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</section>
	<br>
	<div>
		<%-- <sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')"> --%>
		<button type="button" onclick="location.href='csInsert'" class="btn btn-gyellow">글 쓰기</button>
		<%-- </sec:authorize> --%>
	</div>
	<br>
	<div id="pageBtn">
		<c:if test="${pageMaker.prev == true}">
			<a href="${pageMaker.startPage-1}">이전</a>
		</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
			var="num">
			<a href="${num}">${num}</a>
		</c:forEach>
		<c:if test="${pageMaker.next == true}">
			<a href="${pageMaker.endPage+1}">다음</a>
		</c:if>
	</div>

	<div>
		<form id="actionForm" action="csList" method="get">
			<select name="type">
				<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
				<option value="T" ${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
				<option value="C" ${empty pageMaker.cri.type == 'C' ? selected : ""}>내용</option>
				<option value="TC"
					<c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>전체</option>
			</select> <input name="keyword" value="${pageMaker.cri.keyword}"> <input
				type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<button type="submit" class="btn btn-gyellow-yj">검색</button>
		</form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(function() {

		var actionForm = $('#actionForm');
		$('.move')
				.on(
						"click",
						function(e) {
							e.preventDefault();
							var csNo = $(this).attr("href");
							actionForm
									.append('<input type="hidden" name="csNo" value="' + csNo + '">');
							actionForm.attr("action", "csSelect");
							actionForm.submit();
						});

		$('#pageBtn a').on("click", function(e) {
			e.preventDefault();
			var p = $(this).attr('href');
			$('[name="pageNum"]').val(p);
			actionForm.submit();
		});

	});

	$(document).ready(function() {
		var result = '<c:out value="${message}"/>';

		if (result === '') {
			return;
		} else {
			alert(result);
		}
	});
</script>
</html>