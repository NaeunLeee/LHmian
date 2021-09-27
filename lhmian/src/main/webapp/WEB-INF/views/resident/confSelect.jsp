<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>
</head>
<body>

<div align="center">
	<h3>입주자 대표회의 게시글</h3>
	<hr>
	<div>
		<input id="confTitle" type="text" value="${conf.confTitle}" readonly>&nbsp;
		작성일자 : <fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${conf.confUpdate}" pattern="yy-MM-dd" />
		<hr>
		<textarea id="confContent" rows="5" cols="33" readonly>${conf.confContent}</textarea>
	
		<input id="confNo" name="confNo" type="hidden" value="${conf.confNo}">
	
	</div>
	<br>
	<div align="center">
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
		<button type="button" onclick="location.href='../resident/confList'">목록</button>
	</div>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$(function() {

	$('#btnUpdate').on("click", function() {
		if ($(this).text() == '수정') {
			$('#confTitle').prop('readonly', false);
			$('#confContent').prop('readonly', false);
			$(this).text('완료');
		} else if ($(this).text() == '완료') {
			if (confirm('정말로 수정하시겠습니까?')) {
				$.ajax({
					url: "confUpdate",
					type: "post",
					dataType: "json",
					data: JSON.stringify({
						confNo: $('#confNo').val(),
						confTitle: $('#confTitle').val(),
						confContent: $('#confContent').val()
					}),
					contentType: 'application/json',
					success: function(data) {
						alert("수정이 완료되었습니다!");
					}
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
			}
			$('#confTitle').prop('readonly', true);
			$('#confContent').prop('readonly', true);
			$(this).text('수정');
		}
	});
	
	$('#btnDelete').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$.ajax({
				url: "confDelete",
				type: "post",
				data: JSON.stringify({
					confNo: $('input:text[name="confNo"]').val();
				}),
				dataType: 'json',
				success: function() {
					alert("삭제가 완료되었습니다!");
				},
				error: function() {
					alert("삭제에 실패했습니다.");
				}				
			});
		}
	});
	
});
</script>

</html>