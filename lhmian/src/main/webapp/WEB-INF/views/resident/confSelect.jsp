<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

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
	
		<input id="confTitle" type="text" value="${conf.confTitle}" disabled="disabled">&nbsp;
		작성일자 : <fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${conf.confUpdate}" pattern="yy-MM-dd" />
		<hr>
		<textarea id="confContent" rows="5" cols="33" disabled="disabled">${conf.confContent}</textarea>
		<form id="deleteForm" name="deleteForm" action="confDelete" method="post">
			<input id="confNo" name="confNo" type="hidden" value="${conf.confNo}">
		</form>
	</div>
	<br>
	<div align="center">
	<c:if test="${conf.confWriter eq name}">
		<button type="button" id="modifyBtn">수정</button>
		<button type="button" id="deleteBtn">삭제</button>
	</c:if>	
		<button type="button" onclick="location.href='../resident/confList'">목록</button>
	</div>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	$('#modifyBtn').on("click", function() {
		
		if ($(this).attr('id') == 'modifyBtn') {
	
			if (confirm('수정하시겠습니까?')) {
				$('#confTitle').attr("disabled", false);
				$('#confContent').attr("disabled", false);
				$(this).attr('id', 'updateBtn').html('완료');
			}
			
		} else if ($(this).attr('id') == 'updateBtn') {
			
			if (confirm('수정사항을 반영하시겠습니까?')) {
				
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
					success: function (data) {
						alert("수정이 완료되었습니다!");
						console.log(data);
					},
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
				
				$('#confTitle').attr('disabled', true);
				$('#confContent').attr('disabled', true);
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