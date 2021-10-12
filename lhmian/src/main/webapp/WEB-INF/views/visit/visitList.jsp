<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
<button class="insert">등록</button>
	<table border="1">
		<tr>
			<th>방명록번호</th>
			<th>세대정보</th>
			<th>방명록내용</th>
			<th>방명록작성일</th>
			<th>방명록수정일</th>
			<th>방명록작성자</th>
		</tr>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.visitNo}</td>
				<td>${list.houseInfo}</td>
				<td>${list.visitContent}</td>
				<td>${list.visitDate}</td>
				<td>${list.visitUpdate}</td>
				<td>${list.visitWriter}</td>
			</tr>
		</c:forEach>
	</table>
</div>
<div>
<textarea id="visitContent" placeholder="우리는 서로 이웃입니다. 가는 말이 고와야 오는 말이 곱습니다."></textarea>
</div>
<script>
$(document).ready(function() {
	$('#visitContent').hide();
});

$('.insert').on('click', function() {
	$('#visitContent').show();
})
</script>