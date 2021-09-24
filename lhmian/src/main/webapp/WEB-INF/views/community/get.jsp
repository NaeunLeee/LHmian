<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div>
	<form action="deleteComm" id="frm" name="frm" method="post">
		<div class="form-group">
			<label>commNo</label> <input class="form-control" id="commNo"
				name="commNo" value="${list.commNo}" readonly="readonly"
				disabled="disabled">
		</div>
	</form>
	<div class="form-group">
		<label>Title</label> <input class="form-control" id="commTitle"
			name="commTitle" value="${list.commTitle}" disabled="disabled">
	</div>

	<div>
		<label>Text area</label>
		<textarea class="form-control" name="commContent" id="commContent"
			rows="3" disabled="disabled">${list.commContent}</textarea>
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
<button type="submit" id="btnDelete">삭제</button>
<button type="button" id="btnModify">수정</button>
<hr>
<div>
	<!-- 댓글 등록 -->
	<div class="panel-heading">
		<form id="replyForm">
			<input type="hidden" name="bno"> <input type="hidden" name="replyer" value="user10"> <input name="reply">
			<button type="button" id="saveReply">댓글등록</button>
		</form>
	</div>

	<!-- 댓글 목록 -->
	<h3>댓글 목록</h3>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">댓글</h1>
			<ul class="chat">
			</ul>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$("#btnDelete").on("click", function() {
		if (confirm('삭제할까요??'))
			$.post("deleteComm", {
				commNo : $("#commNo").val()
			}, function(result) {
				if (result == true) {

					alert("성공")
					window.location.href = "commlist";
				}
			});
	});

	$("#btnModify").on("click", function() {
		$("#commContent").attr("disabled", false);
		$("#btnModify").attr('id', 'update').html('완료');
		$("#update").on("click", function() {
			$.ajax({
				url : "updateComm",
				type : "put",
				dataType : "json",
				data : JSON.stringify({
					commNo : $("#commNo").val(),
					commContent : $("#commContent").val(),
				}),
				contentType : 'application/json',
				success : function(data) {
					alert("수정이 완료 되었습니다");
					$("#commContent").attr("disabled", true);
					console.log(data);
				},
				error : function() {
					alert("입력되지 않았습니다."); // 실패 시 처리
				}
			});
		});

	});
	
	//등록처리
	$("#saveReply").on("click", function() {
		$.ajax({
			url : "../reply/", //method(or type):"get"
			method : "post",
			data : $("#replyForm").serialize(),
			dataType : "json",
			success : function(data) {
				console.log(data);
				$(".chat").append(makeLi(data));
			}

		})
	});

	//
	function makeLi(data) {
		return '<li class="left clearfix">' + '   <div class="header">'
				+ '      <strong class="primary-font">' + data.cmtWriter
				+ '</strong>'
				+ '         <small class="pull-right text-muted">'
				+ data.cmtDate + '</small>' + '      </div>' + '   <p>'
				+ data.cmtContent + '</p>' + '   </li>   ';
	}

	//목록조회
	$.ajax({
		url : "/reply/", //method(or type):"get"
		data : {
			commNo : $("#commVO").val()
		}, 
		dataType : "json", 
		success : function(datas) {
			console.log(datas);
			str = "";
			for (i = 0; i < datas.length; i++) {
				str += makeLi(datas[i]);
			}
			$('.chat').html(str);
		}
	});
</script>
