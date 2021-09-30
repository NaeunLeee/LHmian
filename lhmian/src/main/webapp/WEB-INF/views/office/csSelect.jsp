<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 민원</title>
</head>
<body>
<div align="center">
	<h3>민원</h3>
	<hr>
	<div>
		<input id="csTitle" type="text" value="${cs.csTitle}" disabled="disabled"><br>
		작성일자 : <fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${cs.csUpdate}" pattern="yy-MM-dd" /><br>
		작성자 : ${cs.name}
		<hr>
		<textarea id="csContent" rows="5" cols="33" disabled="disabled">${cs.csContent}</textarea>
	</div>
	<br>
	<form id="deleteForm" name="deleteForm" action="csDeleteBoard" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
	</form>
	<div align="center">
		<button type="button" id="modifyBtn">수정</button>
		<button type="button" id="deleteBtn">삭제</button>
		<button type="button" onclick="location.href='../office/csList'">목록</button>
	</div>
</div><br>
<hr>
<!-- 답변 등록 -->
<div align="center">
	<form id="replyForm">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
		<textarea rows="10" cols="100" id="csAnswer" name="csAnswer"></textarea><br>
		<button type="button" id="saveAnswer">답변 등록</button>
	</form>
</div>

<!-- 답변 조회 -->
<div>
	<ul class="answer"></ul>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$('#modifyBtn').on("click", function() {
	if ($(this).attr('id') == 'modifyBtn') {
		if (confirm('수정하시겠습니까?')) {
			$('#csTitle').attr("disabled", false);
			$('#csContent').attr("disabled", false);
			$(this).attr('id', 'updateBtn').html('완료');
		}	
	} else if ($(this).attr('id') == 'updateBtn') {
		if (confirm('수정사항을 반영하시겠습니까?')) {
			$.ajax({
				url: "csUpdateBoard",
				type: "post",
				dataType: "json",
				data: JSON.stringify({
					csNo: $('#csNo').val(),
					csTitle: $('#csTitle').val(),
					csContent: $('#csContent').val()
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
			$('#csTitle').attr('disabled', true);
			$('#csContent').attr('disabled', true);
			$(this).attr('id', 'modifyBtn').html('수정');
		}
	}
});

$('#deleteBtn').on("click", function() {
	if (confirm('정말로 삭제하시겠습니까?')) {
		$('#deleteForm').submit();
	}
});

$('#saveAnswer').on('click', function() {
	if(confirm('답변을 등록하시겠습니까?')) {
		$('#replyForm').submit();
	}
})
	
</script>
</html>