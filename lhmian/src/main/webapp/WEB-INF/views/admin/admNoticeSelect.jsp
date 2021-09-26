<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div>
	<form role="form" action="delete" id="frm" name="frm" method="post">
		<div class="form-group">
			<label>noticeNo</label> <input class="form-control" id="noticeNo"
				name="noticeNo" value="${notice.noticeNo}" readonly="readonly" disabled="disabled">
		</div>
	</form>
	<div class="form-group">
		<label>제목</label> <input class="form-control" id="noticeTitle"
			name="noticeTitle" value="${notice.noticeTitle}" disabled="disabled">
	</div>

	<div>
		<label>Text area</label>
		<textarea class="form-control" name="noticeContent" id="noticeContent"
			rows="3" disabled="disabled">${notice.noticeContent}</textarea>
	</div>
</div>
<button type="button" id="btnModify">수정</button>
<button type="button" id="btnDelete">삭제</button>
<button type="button" onclick="location.href='../admin/admNoticeList'">목록</button>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$("#btnDelete").on("click", function() {
	if (confirm('삭제하겠습니까?'))
		$.post("admNoticeDelete", {
			noticeNo : $("#noticeNo").val()
		}, function(result) {
			if (result == true) {
				alert("삭제되었습니다.")
				window.location.href = "admNoticeList";
			}
		});
});
	
	
 	 $("#btnModify").on("click", function(){
		$("#noticeTitle").removeAttr("disabled");
		$("#noticeContent").removeAttr("disabled");
		$("#btnModify").attr('id','update').html('완료');
		document.getElementById('update').onclick = function(){
			$.ajax({
				url: "admNoticeUpdate",
				type: "post",
				data: JSON.stringify({
					noticeTitle	: $("#noticeTitle").val(),
					noticeContent: $("#noticeContent").val(),
					noticeNo: $("#noticeNo").val()
				}),
				contentType: 'application/json',
				success: function (data) {
					alert("수정이 완료 되었습니다");
					console.log(data);
					history.back();
					// location.href = "admNoticeList";
				},
				error: function () {
					alert("입력되지 않았습니다."); // 실패 시 처리
				}
			});
		};
	}); 
 	 
/* 	function modify(){
		alert("수정 완료!");
	} */
		 
	
</script>