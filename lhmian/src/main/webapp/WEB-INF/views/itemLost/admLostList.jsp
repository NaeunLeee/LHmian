<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<div>
		<button id="register">등록</button>
		<table border="1">
			<tr>
				<th>분실물번호</th>
				<th>분실물내용</th>
				<th>작성날짜</th>
				<th>수정날짜</th>
				<th>분실물파일</th>
				<th>수령여부</th>
			</tr>
			<c:forEach items="${lost}" var="item">
			<tr>
				<td>${item.lostNo}</td>
				<td>${item.lostContent}</td>
				<td>${item.lostDate}</td>
				<td><c:if test="${not empty item.lostUpdate}">${item.lostUpdate}</c:if></td>
				<td><img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}"></td>
				
				<td>${item.lostStatus}
				<c:if test="${item.lostStatus eq '수령전'}">
				<br><br><button type="button" onclick="lostModify(${item.lostNo})">수정</button></c:if></td>
			</tr>
			</c:forEach>
		</table>
	<!-- 여기는 프론트씌우고 나서 다시 정리할 것 -->
	<!-- 수정 모달 -->
	<!-- Button trigger modal -->
		<div class="modal" tabindex="-1" id="LaFModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">분실물 수정</h5>
						<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">X</button>
					</div>
					<div class="modal-body">
						<p>바디</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalClose">닫기</button>
						<button type="button" class="btn btn-primary" id="lostModal">저장</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
 //수정모달
function lostModify(n) {
	$(LaFModal).modal('show');
	$.ajax({
		url : "lostModifyForm",
		type: "get",
		data : {lostNo : n},
		success : function(data) {
			var tag ="";
			tag += '<form method="post" id="frm" action="lostModify" enctype="multipart/form-data">'
				+  '	<table border="1">'
				+  '		<tr>'
				+  '			<th>분실물번호</th>'
				+  '			<td colspan="3">' + data.lostNo + '</td>'
				+  '		</tr>'
				+  '		<tr>'
				+  '			<th>분실물내용</th>'
				+  '			<td colspan="3"><textarea name="lostContent" placeholder="분실물 내용을 작성하세요." rows="5" cols="50">' + data.lostContent + '</textarea></td>'
				+  '		</tr>'
				+  '		<tr>'
				+  '			<th>등록날짜</th>'
				+  '			<td>' + data.lostDate + '</td>'
				+  '			<th>수령여부</th>'
				+  '			<td><select name="lostStatus">'
				+  '					<option value="' + data.lostStatus + '">' + data.lostStatus
				+  '					<option value="수령완료">수령완료</td>'
				+  '		</tr>'
				+  '		<tr>'
				+  '			<th>분실물파일</th>'
				+  '			<td colspan="3"><input type="file" name="lostChangeImg"></td>'
				+  '		</tr>'
				+  '	</table>'
				+  '	<input type="hidden" name="lostNo" value="' + data.lostNo + '">'
				+  '</form>'
			$("#LaFModal .modal-body").html(tag);
		}
	});
};

$(function() {
	//등록
	$('#register').on('click', function() {
		$(location).attr('href', 'admLostInsert');
	});

	//모달 저장버튼
	$('#lostModal').on('click', function() {
		console.log('ggg');
		frm.submit();
	});
});
</script>
