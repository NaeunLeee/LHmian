<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<div align="center">
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="cmt">
				<tr>
					<td>${cmt.rownum}</td>
					<td><a class="move" href="${cmt.commNo}">${cmt.cmtContent}</a></td>
					<td><fmt:formatDate value="${cmt.cmtDate}" type="both"
							pattern="yy-MM-dd" /></td>
			</c:forEach>
		</tbody>
	</table>
	<form id="actionForm" action="getComment" method="get"> <!-- 메소드 생략시 자동으로 get로 전환 -->
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
			<option value="T" ${empty pageMaker.cri.type =='T' ? selected : ""}>제목검색</option>
			<option value="C" ${empty pageMaker.cri.type =='C' ? selected : ""}>번호</option>
			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected':''}"/>>제목 or 내용</option>
		</select>
		<input name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">		
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">Search</button>		
	</form>
	<div id="pageButton">
	<c:if test="${pageMaker.prev == true}"><a href="${pageMaker.startPage-1}">이전</a></c:if>
	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num"><a href="${num}">${num}</a></c:forEach>
	<c:if test="${pageMaker.next == true}"><a href="${pageMaker.endPage+1}">다음</a></c:if>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
		var actionForm = $("#actionForm");
		
		$(".move").on("click",function(e){
			e.preventDefault();
			var commno = $(this).attr("href")
			console.log(commno);
			actionForm.append('<input type="hidden" name="commNo" value="'+commno+'">')
			actionForm.attr("action","get")
			actionForm.submit();
		});
		
		$("#pageButton a").on("click",function(e){
			e.preventDefault();	//a, submit
			var p = $(this).attr("href") //클릭한 값
			$('[name="pageNum"]').val(p)
			actionForm.submit();
		})
	
</script>
