<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
textarea {
	resize:none;
	border:none;
	overflow: hidden;
}

#noticeContent {
	margin-bottom: 20px;
	width: 100%;
	min-height: 200px;
	
}

#noticeTitle {
	font-size: 20px;
	height: 35px;

}


</style>


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
	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">공지사항</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">공지사항 투명한 ... 어쩌구..ㅋㅋ</p>
					</div>
				</div>
				<div class="clearfix"></div>
				
				
				<div class="text-box white padding-4 col-7">
						<div class="text-box">
							<textarea readonly id="noticeTitle" class="col-md-8 font-weight-7" style="background-color:transparent">${notice.noticeTitle}</textarea>
							<h6 class="col-md-4" style="float: right; text-align: end;">
					작성일자 : <fmt:formatDate value="${notice.noticeDate}" pattern="yy-MM-dd" /> | 최종수정 :<fmt:formatDate value="${notice.noticeUpdate}" pattern="yy-MM-dd" /></h6>
</div>


	<hr>
 	<textarea onkeyup="adjustHeight();" class="text-box padding-2 border form-control" rows="5" name="noticeContent" id="noticeContent" 
 	 readonly style="background-color:transparent;">
		${notice.noticeContent}
	</textarea> 
	<div class="padding-4 col-sm-12 " align="right">
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="btnModify">수정</button>
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="btnDelete">삭제</button>
		<button type="button" class="btn btn-border light" style="padding: 4px 13px;" onclick="location.href='../admin/admNoticeList'" >목록</button>
	</div>
	
	
<%-- 	<div class="text-box padding-2 border" style="margin-bottom: 20px;">
		${notice.noticeContent}
	</div> --%>
	

<%-- 	<div>
		<label>내용</label>
		<textarea class="form-control" name="noticeContent" id="noticeContent"
			rows="3" disabled="disabled">${notice.noticeContent}</textarea>
	</div>
 --%>	
	
	
	<form role="form" action="delete" id="frm" name="frm" method="post">
		<input id="noticeNo" name="noticeNo" type="hidden" value="${notice.noticeNo}">
	</form>
</div>

<br>

</div>
</div>
</section>

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
		$("#noticeTitle").removeAttr("readonly");
		$("#noticeContent").removeAttr("readonly");
		/* $("#noticeContent").attr("min-height", "500"); */
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
 	 
 	 
 	
  	function adjustHeight() {
 		  var textEle = $('textarea');
 		  textEle[0].style.height = 'auto';
 		  var textEleHeight = textEle.prop('scrollHeight');
 		  textEle.css('height', textEleHeight);
 		};

 		adjustHeight(); 
 		
/*  	$('document').ready(function(){
 		$('textarea'.keyup(function(e){
 			
 			$(this).css('height','auto');
 			$(this).height(this.scrollHeight);
 		});
 	}); */
 	
/* 	function modify(){
		alert("수정 완료!");
	} */
		 
	
</script>
