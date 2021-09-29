<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>

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

<div align="center">
	<div>
		<table border="1">
			<tr>
				<th>글 번호</th>
				<th>제 목</th>
				<th>작성자</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${list}" var="conf">
				<tr>
					<td>${conf.confNo}</td>
					<td><a class="move" href="${conf.confNo}">${conf.confTitle}</a></td>
					<td>${conf.confWriter}</td>
					<td><fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
		<button type="button" onclick="location.href='confInsert'">글 쓰기</button>
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
		<form id="actionForm" action="confList" method="get">
			<select name="type">
				<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
				<option value="T" ${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
				<option value="W" ${empty pageMaker.cri.type == 'W' ? selected : ""}>작성자</option>
				<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : ''}"/>>전체</option>
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

	var actionForm = $('#actionForm');
	$('.move').on("click", function(e) {
		e.preventDefault();
		var confNo = $(this).attr("href");
		actionForm.append('<input type="hidden" name="confNo" value="' + confNo + '">');
		actionForm.attr("action", "confSelect");
		actionForm.submit();
	});
	
	$('#pageBtn a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	$(document).ready (function() {
		var result = '<c:out value="${message}"/>';
		
		if (result === '') {
			return;
		} else {
			alert(result);
		}
	});
	
</script>

</html>