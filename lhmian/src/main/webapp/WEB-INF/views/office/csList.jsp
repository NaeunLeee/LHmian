<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 민원</title>

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
					<td><a class="move" href="${cs.csNo}">${cs.csTitle}</a></td>
					<td>${cs.name}</td>
					<td><fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<div>
		<%-- <sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')"> --%>
			<button type="button" onclick="location.href='csInsert'">글 쓰기</button>
		<%-- </sec:authorize> --%>
	</div>
	<br>
	<div id="pageBtn">
		<c:if test="${pageMaker.prev == true}">
			<a href="${pageMaker.startPage-1}">이전</a>
		</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
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
				<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>전체</option>		
			</select>
			<input name="keyword" value="${pageMaker.cri.keyword}">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">		
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<button type="submit">검색</button>
		</form>
	</div>
	<br><br>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(function() {
	
	var actionForm = $('#actionForm');
	$('.move').on("click", function(e) {
		e.preventDefault();
		var csNo = $(this).attr("href");
		actionForm.append('<input type="hidden" name="csNo" value="' + csNo + '">');
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