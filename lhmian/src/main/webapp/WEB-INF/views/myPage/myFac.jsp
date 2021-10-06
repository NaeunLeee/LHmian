<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container">
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이용시설</th>
				<th>예약 일자</th>
				<th>기간</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="fac">
				<tr>
					<td>${fac.rm}</td>
					<td>${fac.payCat}</td>
					<td><fmt:formatDate value="${fac.payDate}" type="both"
							pattern="yy-MM-dd" /></td>
					<td>${fac.period}</td>
					<td>${fac.price}</td>
			</c:forEach>
		</tbody>
	</table>
 	<form id="actionForm" action="myFac" method="get">
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
			<option value="T" ${empty pageMaker.cri.type =='T' ? selected : ""}>제목검색</option>
			<option value="C" ${empty pageMaker.cri.type =='C' ? selected : ""}>번호</option>
			<option value="W"
				<c:out value="${pageMaker.cri.type eq 'W' ? 'selected':''}"/>>작성자</option>
			<option value="TC"
				<c:out value="${pageMaker.cri.type eq 'TC' ? 'selected':''}"/>>제목
				or 내용</option>
			<option value="TW"
				<c:out value="${pageMaker.cri.type eq 'TW' ? 'selected':''}"/>>제목
				or 작성자</option>
			<option value="TWC"
				<c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected':''}"/>>제목
				or 작성자 or 내용</option>
		</select> <input name="keyword" value="${pageMaker.cri.keyword}"> <input
			type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">Search</button>
		<button type="button" onclick="location.href='register'"
			class="btn btn-default">글작성</button>
	</form> 
	<div id="pageButton">
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
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var actionForm = $("#actionForm");

	$("#pageButton a").on("click", function(e) {
		e.preventDefault(); //a, submit
		var p = $(this).attr("href") //클릭한 값
		$('[name="pageNum"]').val(p)
		actionForm.submit();
	})
</script>