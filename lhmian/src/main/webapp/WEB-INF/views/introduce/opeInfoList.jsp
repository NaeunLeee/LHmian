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
				<tr>
					<td>${info.oiNo}</td>
					<td>${info.oiType}</td>
					<td><a class="move" href="${info.oiNo}">${info.oiTitle}</a></td>
					<td><fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
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
		<form id="actionForm" action="opeInfoList" method="get">
			<select name="type">
				<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
				<option value="T" ${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
				<option value="C" ${empty pageMaker.cri.type == 'C' ? selected : ""}>카테고리</option>
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

	var actionForm = $('#actionForm');
	$('.move').on("click", function(e) {
		e.preventDefault();
		var oiNo = $(this).attr("href");
		actionForm.append('<input type="hidden" name="oiNo" value="' + oiNo + '">');
		actionForm.attr("action", "get");
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