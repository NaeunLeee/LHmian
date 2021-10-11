<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>

<style>
	.ck-editor__editable {
	    min-height: 400px;
	}
	.bi.bi-x-circle-fill {
		cursor: pointer;
	}
	.container {
		width: 85%;
	}
	.nav-tabs.nav-justified>li>a {
		margin: 0px 1px 0px;
		background-color: #f5f5f5;
	}
	.nav-tabs.nav-justified>li>a:hover {
		background-color: #C8C6C6;
	}
	.nav-tabs.nav-justified>li>.active {
		background-color: #C8C6C6;
	}
</style>


</head>
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
								<div class="text text-center"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class=" clearfix"></div>
	</div>

<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white">
				<div class="pages-sidebar-item">
					<h5 class="uppercase pages-sidebar-item-title">관리자</h5>
					<ul class="pages-sidebar-links">
						<li><a href="#">관리비</a></li>
						<li><a href="#">에너지 사용량</a></li>
						<li><a href="#">회원 관리</a></li>
						<li><a class="active" href="#">게시글 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">게시글을 조회 및 수정합니다.</p>
				</div>
				<div>
					<ul class="nav nav-tabs nav-justified">
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="#">공지사항</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/admCsList">민원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="#">투표</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="#">분실물 보관소</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="${pageContext.request.contextPath}/admin/admSchedule">일정 관리</a>
						</li>
					</ul>
				</div>
				<div></div><br><br><br>
				<div>
					<form id="frm" name="frm" action="admNoticeUpdate" method="post">
						<div>
							<input type="text" id="noticeTitle" name="noticeTitle" class="form-control" value="${notice.noticeTitle}">
							<hr>
						</div>
						<div>
							<textarea id="noticeContent" name="noticeContent" class="form-control">${notice.noticeContent}</textarea>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
						</div>
					</form>
				</div>
				</div>
				<br>
			</div><br><br>
			<div align="center">
				<button type="button" id="updateBtn" class="btn btn-dark">수정</button>
				<button type="button" class="btn btn-default" onclick="location.href='admNoticeList'">목록</button>
			</div>
		</div>
	</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	// 수정 버튼 이벤트
	$('#updateBtn').on("click", function() {
		
		if ($('#noticeTitle').val() == "") {
	    	alert('양식을 모두 입력해주세요.');
	    } else {
			$('#frm').submit();
	    }
	});
		
	
    ClassicEditor.create(document.querySelector('#noticeContent'))
    			 .catch(error => { console.error(error); });
	
</script>

</html>