<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div>
	<form role="form" action="deleteComm" id="frm" name="frm" method="post">
		<div class="form-group">
			<label>commNo</label> <input class="form-control" id="commNo"
				name="commNo" value="${list.commNo}" readonly="readonly" disabled="disabled">
		</div>
	</form>
	<div class="form-group">
		<label>Title</label> <input class="form-control" id="commTitle" name="commTitle"
			value="${list.commTitle}" readonly="readonly" disabled="disabled">
	</div>

	<div>
		<label>Text area</label>
		<textarea class="form-control" name="commContent" id="commContent" rows="3"
			readonly="readonly" disabled="disabled">${list.commContent}</textarea>
	</div>

	<div class="form-group">
		<label>Writer</label> <input class="form-control" name="id"
			value="${list.id}" readonly="readonly" disabled="disabled">
	</div>

	<div class="form-group">
		<label>Date</label> <input class="form-control" name="commDate"
			value="<fmt:formatDate pattern = "yyyy/MM/dd" value="${list.commDate}"/>"
			readonly="readonly" disabled="disabled">
	</div>

	<div class="form-group">
		<label>Update Date</label> <input class="form-control"
			name="commUpdate"
			value="<fmt:formatDate pattern = "yyyy/MM/dd" value="${list.commUpdate}"/>"
			readonly="readonly" disabled="disabled">
	</div>
	
</div>
<button type="button" id="btnDelete">삭제</button>
<button type="button" id="btnModify">수정</button>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$("#btnDelete").on("click", function(e) {
		frm.submit();
	});
	
	$("#btnModify").on("click", function(){
		$("#commTitle").removeAttr("disabled");
		$("#commContent").removeAttr("disabled");
		$("#btnModify").attr('id','update');
		$("#update").on("click",function(){
			$.ajax({
				url: "updateComm",
				type: "post",
				dataType: "json",
				data: JSON.stringify({
					commNo: $("#commNo").val(),
					commContent: $("#commContent").val(),
				}),
				contentType: 'application/json',
				success: function (data) {
					alert("수정이 완료 되었습니다");
					console.log(data);
				},
				error: function () {
					alert("입력되지 않았습니다."); // 실패 시 처리
				}
			});
		});
		
	});
		
	
</script>
