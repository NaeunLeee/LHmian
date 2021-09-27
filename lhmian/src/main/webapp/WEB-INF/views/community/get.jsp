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
			<input type="hidden" name="commNo" value="${list.commNo}"> <input
				type="hidden" id="cmtWriter" name="cmtWriter" value="노잼">
			<textarea rows="10" cols="100" id="cmtContent" name="cmtContent"></textarea>
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

	// 댓글 보여주기
	function showList() {
		//초기화
		$('.chat').empty();

		function makeLi(datas) {
			return '<li class="left clearfix">'
					+ '	<div id="'+ datas.cmtNo +'">'
					+ '			<strong class="primary-font">'
					+ datas.cmtWriter
					+ '</strong>'
					+ '			<small class="pull-right text-muted">'
					+ datas.cmtDate
					+ '</small>'
					+ '		<p>'
					+ datas.cmtContent
					+ '</p>'
					+ '<div id="test">' + '</div>'
					+ '<input type="hidden" id="cmtNo2" value="'+ datas.cmtNo +'">'
					+ '<button type="button" class="test" id="cmtUpdate" data-num="'	+ datas.cmtNo + '">수정</button>'
					+ '&nbsp'
					+ '<button type="button" id="cmtDelete" onclick="button2_click(this);" data-num="'
					+ datas.cmtNo + '">삭제</button>' + '	</div>' + '<br>'
					+ '</li>';
		}
		3

		$.ajax({
			url : './reply/',
			data : {
				commNo : $("#commNo").val()
			},
			dataType : 'json',
			success : function(datas) {
				console.log(datas);
				let str = "";
				for (i = 0; i < datas.list.length; i++) {
					str += makeLi(datas.list[i]);

				}
				$(".chat").html(str);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	showList();

	//등록처리
	$("#saveReply").on("click", function(e) {
		e.preventDefault();

		let reply = $("input[name='cmtContent']").val();
		let replyer = $("input[name='cmtWriter']").val();

		if (reply == "" || replyer == "") {
			alert("내용을 입력 해주시거나 회원만 등록 가능합니다.")
			return;
		}

		$.ajax({
			url : "./reply/",
			method : "post",
			data : $("#replyForm").serialize(),
			dataType : "json",
			success : function(data) {
				showList();
			},
			error : function() {
				alert("등록 실패");
			}
		});
	});

	/* let update = $('input').attr('id','cmtContent').html("datas.content") */

	//수정
	function cmtUpdate(b) {
		$.ajax({
			url : "./reply/",
			type : "put",
			dataType : "json",
			data : JSON.stringify({
				cmtContent : $("#cmtContent").val(),
				cmtNo : b
			}),
			contentType : 'application/json',
			success : function(datas) {
				alert("성공")
				console.log(datas)
				showList();
			},
			error : function() {
				alert("error"); // 실패 시 처리
			}
		});
	}

	//삭제
	function cmtDelete(b) {
		$.ajax({
			url : "./reply/" + b,
			type : "delete",
			dataType : "json",
			data : JSON.stringify({
				cmtNo : b
			}),
			contentType : 'application/json',
			success : function(result) {
				if (result == true) {
					alert("성공")
					showList();
				}
			},
			error : function() {
				alert("삭제 실패"); // 실패 시 처리
			}
		});
	}
	
	//수정버튼
	/* function button1_click(tabInfo) {
		
		console.log("수정버튼을 누르셨습니다.");
		var b = $(tabInfo).data("num");
		console.log(b);
		var c = $(tabInfo).parent().children("#cmtUpdate");
		c.attr('id', 'updatecmt1').html('완료'); 
		
	} */
	
	$(document).on("click", "#cmtUpdate", function(){
		
		var num = $(this).data("num")
		
		console.log(num);
		$(this).parent().children("#cmtUpdate").html("완료");
		$(this).parent().children('p').remove();
		$(this).parent().children('div').attr('id','test0');
		$.ajax({
			url : "./reply/" + num,
			type : "get",
			dataType : "json",
			contentType : 'application/json',
			success : function(result) {
				console.log(result);
				var str2 = '<input id="test" name="test" value="'+result.cmtContent+'">'
				$("#test0").html(str2);
				
				$(document).on("click", "#cmtUpdate", function(){
					$.ajax({
						url : "./reply/",
						type : 'put',
						dataType : "json",
						contentType : "application/json",
						data : {
							cmtNo : num, 
							cmtContent : $("#test").val()	
						},
						success : function(data) {
							console.log(data);
							showList();
						},
						error : function(){
							alert("수정실패");
						}
					});
				});
				
			},
			error : function(result) {
				console.log(result);
				alert("실패"); // 실패 시 처리
			}
		});
		
	});
	
	
			
	
	
	
	// 삭제 버튼
	function button2_click(tabInfo) { // 함수에서 this를 사용하면 값이 정확히 넘어가지 않는다. 
								      // 이 때문에 태그에서 함수를 사용할때 태그내부 함수()에 this를 넣어주면 그 태그에 있는 모든 정보를 담아준다.
									  // 이를 이용하여 정보를 갖고 올 수 있다.
		if(confirm("삭제 하시겠습니까?")){
			console.log("삭제버튼을 누르셨습니다.");
			var b = $(tabInfo).data("num");
			console.log(b);
			cmtDelete(b);
		}

	}
</script>
