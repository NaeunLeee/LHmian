<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
h4 {
	color: #727272;
}

tr {
	border-bottom: 1px solid lightgray;
	height: 50px;
	cursor: pointer;
}

.table-style-2 {
	width: 800px;
	text-align: center;
}

tr:hover {
	background-color: lightyellow;
}

.btn-gyellow-yj {
	height : 30px;
	color: #fff;
	background-color: #ecae3d;
	padding : 0 30px;
}
</style>
<div align="center">
	<h4>민원</h4>
	<hr>
	<div>
		<input id="csTitle" type="text" value="${cs.csTitle}" disabled="disabled"><br>
		작성일자 : <fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" />
		<c:if test="${not empty cs.csUpdate}"> / 수정일자 : <fmt:formatDate value="${cs.csUpdate}" pattern="yy-MM-dd" /></c:if><br>
		작성자 : ${cs.name}
		<hr>
		<textarea id="csContent" rows="5" cols="33" disabled="disabled">${cs.csContent}</textarea>
	</div>
	<br>
	<form id="deleteForm" name="deleteForm" action="csDeleteBoard" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
	</form>
	<div align="center">
	<%-- 	<sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')"> --%>
			<button type="button" id="modifyBtn" class="btn btn-gyellow-yj">수정</button>
			<button type="button" id="deleteBtn" class="btn btn-gyellow-yj">삭제</button>
		<%-- </sec:authorize> --%>
		<button type="button" onclick="location.href='../office/csList'" class="btn btn-gyellow-yj">목록</button>
	</div>
</div>
<hr>
<!-- 답변 등록 -->
<div align="center">
	<form id="replyForm" action="csAnswer" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
		<textarea rows="10" cols="100" id="csAnswer" name="csAnswer">${cs.csAnswer}</textarea><br>
		<c:if test="${empty cs.csAnswer}">
		<button type="button" id="saveAnswer" class="btn btn-gyellow-yj">답변 등록</button>
		</c:if>
		<c:if test="${not empty cs.csAnswer}">
		<button type="button" id="csUpdateBtn" class="btn btn-gyellow-yj">답변 수정</button>
		</c:if>
	</form>
</div>
<br>

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
	
$('#csUpdateBtn').on('click', function() {
	if(confirm('답변을 수정하시겠습니까?')) { 
		$.ajax({
			url: "csAnswerUpdate",
			type: "post",
			data: JSON.stringify({ csAnswer: $('#csAnswer').val() }),
			contentType: 'application/json',
			success: function () {
				$('#replyForm').submit();
				alert("수정이 완료되었습니다!");
			}
		})
	}
})
</script>
</html>