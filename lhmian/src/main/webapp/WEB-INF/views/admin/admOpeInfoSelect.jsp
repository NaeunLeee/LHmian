<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 운영 정보 공개</title>

</head>
<body>
<div align="center">
	<h3>운영 정보</h3>
	<hr>
	<!-- <form id="frm" name="frm" action="opeInfoUpdate" method="post"> -->
		<div>
			${info.oiType} | <input id="oiTitle" type="text" value="${info.oiTitle}" readonly>&nbsp;
			작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" />
			<hr>
			<textarea id="oiContent" rows="5" cols="33" readonly>${info.oiContent}</textarea><br>
			첨부파일 | <input type="text" value="${info.oiFile}" readonly>
			
			<input id="oiNo" name="oiNo" type="hidden" value="${info.oiNo}">
			
		</div>
		<br>
		<div align="center">
			<button type="button" id="btnUpdate">수 정</button>
			<button type="button" id="btnDelete">삭 제</button>
			<button type="button" onclick="location.href='../admin/admOpeInfoList'">목 록</button>
		</div>
	<!-- </form> -->
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$(function() {

	$('#btnUpdate').on("click", function() {
		
		if ($(this).text() == '수정') {
			
			$('#oiTitle').prop('readonly', false);
			$('#oiContent').prop('readonly', false);
			$(this).text('완료');
			
		} else if ($(this).text() == '완료') {
			
			if (confirm('정말로 수정하시겠습니까?')) {
				$.ajax({
					url: "opeInfoUpdate",
					type: "post",
					dataType: "json",
					data: JSON.stringify({
						oiNo: $('#oiNo').val(),
						oiTitle: $('#oiTitle').val(),
						oiContent: $('#oiContent').val()
					}),
					contentType: 'application/json',
					success: function () {
						alert("수정이 완료되었습니다!");
					},
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
				
			}
			
		}
		
		$('#oiTitle').prop('readonly', true);
		$('#oiContent').prop('readonly', true);
		$(this).text('수 정');
			
	});
	
 	$('#btnDelete').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$.ajax({
				url: "opeInfoDelete",
				type: "post",
				data: JSON.stringify({
					oiNo: $('input:text[name="oiNo"]').val()
				}),
				dataType:'json',
				success: function (data) {
					alert("삭제가 완료되었습니다!");
				},
				error: function() {
					alert("삭제에 실패했습니다. 다시 시도해주세요.");
				}
			});
		}
	}); 
	
});
</script>

</html>