<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align="center">
	<table border="1">
	<thead>
		<tr>
		<th>no</th>
		<th>제목</th>
		<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td>${notice.noticeNo}</td>
				<td><a class="move" href="${notice.noticeNo}">${notice.noticeTitle}</a></td>
				<td>${notice.noticeDate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<br>

<br>
<!-- 폼 -->
	<form id="actionForm" action="noticeList" method="get">
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
			<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>제목</option>
			<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>내용</option>
			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>제목+내용</option>
		</select>
		<input name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">Search</button>
	</form>
	
<div id="pageButton">
	<c:if test="${pageMaker.prev == true}"><a href="${pageMaker.startPage-1}" >이전</a></c:if>
	<c:forEach begin="${pageMaker.startPage}" 
				end="${pageMaker.endPage}" 
				var="num"><a href="${num}" >${num}</a></c:forEach>
	<c:if test="${pageMaker.next == true }"><a href="${pageMaker.endPage+1}" >다음</a></c:if>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	var actionForm = $("#actionForm")
	$(".move").on("click", function(e){
		e.preventDefault();				//a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="noticeNo" value="'+ noticeNo +'">')
		actionForm.attr("action", "noticeSelect");
		actionForm.submit();
	});
	
	$("#pageButton a").on("click", function(e){ //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault();		//a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});
</script>