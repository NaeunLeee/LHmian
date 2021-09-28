<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<div>
			${info.oiType} | <input id="oiTitle" type="text" value="${info.oiTitle}" disabled="disabled">&nbsp;
			작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" />
			<hr>
			<textarea id="oiContent" rows="5" cols="33" disabled="disabled">${info.oiContent}</textarea><br>
			<c:if test="${info.oiFileid != null}">
				첨부파일 | <a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>
			</c:if>
			<form id="deleteForm" name="deleteForm" action="opeInfoDelete" method="post">
				<input id="oiNo" name="oiNo" type="hidden" value="${info.oiNo}">
			</form>
		</div>
		<br>
		<div align="center">
			<button type="button" id="modifyBtn">수정</button>
			<button type="button" id="deleteBtn">삭제</button>
			<button type="button" onclick="location.href='../admin/admOpeInfoList'">목록</button>
		</div>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	$('#modifyBtn').on("click", function() {
		
		if ($(this).attr('id') == 'modifyBtn') {
	
			if (confirm('수정하시겠습니까?')) {
				$('#oiTitle').attr("disabled", false);
				$('#oiContent').attr("disabled", false);
				$(this).attr('id', 'updateBtn').html('완료');
			}
			
		} else if ($(this).attr('id') == 'updateBtn') {
			
			if (confirm('수정사항을 반영하시겠습니까?')) {
				
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
					success: function (data) {
						alert("수정이 완료되었습니다!");
						console.log(data);
					},
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
				
				$('#oiTitle').attr('disabled', true);
				$('#oiContent').attr('disabled', true);
				$(this).attr('id', 'modifyBtn').html('수정');
			}
		}
		
	});
	
 	$('#deleteBtn').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$('#deleteForm').submit();
		}
	});
 	
</script>

</html>