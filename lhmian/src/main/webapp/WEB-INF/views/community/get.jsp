<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
textarea {
	resize:none;
	border:none;
	overflow: hidden;
}

#commContent {
	margin-bottom: 20px;
	width: 100%;
	min-height: 200px;
	
}

#commTitle {
	font-size: 20px;
	height: 35px;

}

.info {
	padding-right: 5px;
	
}
</style>


<body>
<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
						<div class="overlay">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/introduce/myApt">우리 아파트</a></li>
							<li class="current"><a href="#">운영 정보 공개</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
				<section class="section-light">
				<div class="container">
				<div class="row">
				<div class="text-box white padding-4 col-7" style="margin-top:50px; ">
							<div class="text-box">
							<textarea readonly id="commTitle" class="col-md-8 font-weight-7" style="background-color:transparent; font-size:20px">${list.commTitle}</textarea>
							<h6 class="padding-4 col-md-12">
							<span class="info" style="font-size:14px;">${list.id}</span>
							<span class="info">조회 ${list.commHit}</span>
							<span class="info">작성일자 <fmt:formatDate value="${list.commDate}" pattern="yy-MM-dd" /> | 최종수정 <fmt:formatDate value="${list.commUpdate}" pattern="yy-MM-dd" /></span>
							</h6>	
							
							
						</div>
						
						<hr>
						<textarea readonly class="text-box padding-2 form-control" rows="5" name="commContent" id="commContent" 
					 	  style="background-color:transparent; border:none;">${list.commContent}</textarea> 






<div class="padding-4 col-sm-12 " align="right">
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="btnModify">수정</button>
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="btnDelete">삭제</button>
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" onclick="location.href='../admin/admNoticeList'" >목록</button>
	</div>
	
	<form role="form" action="deleteComm" id="frm" name="frm" method="post">
		<input id="commNo" name="commNo" type="hidden" value="${list.commNo}">
	</form>
	</div>
	
	
	<!-- 댓글 목록 -->
	<div class="text-box white padding-4 col-7" style="margin-bottom:80px;">
		<div class="text-box">
		<ul class="chat" style="padding: 0 15px;">
			</ul>
		
	<!-- 댓글 등록 -->
	<div class="panel-heading" style="border:1px solid lightgray">
		<form id="replyForm">
			<input type="hidden" name="commNo" value="${list.commNo}"> 
			<input type="hidden" id="cmtWriter" name="cmtWriter" value="노잼">
			<textarea rows="10" style="width:100%" id="cmtContent" name="cmtContent"></textarea>
			<div class="col-md-12" style="padding:0">
				<button type="button" id="saveReply" style="float:right">댓글등록</button>
			</div>
		</form>
	</div>
	</div>
	</div>

	</div>
	</div>
	</section>


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
		$("#commContent").attr("readonly", false);
		$("#commTitle").attr("readonly", false);
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
					$("#update").attr('id', 'btnModify').html('수정');
					
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
	
	$(document).on("click", "#cmtUpdate", function(e){
		e.preventDefault();
		var num = $(this).data("num")
		
		console.log(num);
		
		$(this).parent().children("#cmtUpdate").html("완료");
		$(this).attr("id","cmtUpdate2");
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
				
				
				$(document).one("click", "#cmtUpdate2", function(){
					if (confirm('수정할까요??')){
					$.ajax({
						url : "./reply/",
						type : 'put',
						dataType : "json",
						contentType: 'application/json; charset=utf-8',
						data : JSON.stringify({
							cmtNo : num, 
							cmtContent : $("#test").val()	
						}),
						success : function(data) {
							console.log(data);
							showList();
							
						},
						error : function(){
							alert("수정실패");
							console.log($("#test").val());
						}
					});
					}
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
