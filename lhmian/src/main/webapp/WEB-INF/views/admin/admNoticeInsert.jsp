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
	.margin-top-20 {
		margin-top: 20px;
	}
</style>

</head>

<!-- 10/10 관리자 게시글 형식에 맞춰 수정 (이나은) -->
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
					<ul class="pages-sidebar-links">
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a class="active" href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
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
							<a class="nav-link" href="admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="admNoticeList">공지사항</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admCsList">민원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admVoteList">투표</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admSked">일정 관리</a>
						</li>
					</ul>
				</div>
				<div></div><br><br><br>
				<div>
					<form id="frm" name="frm" action="admNoticeInsert" method="post">
						<div>
							<input type="text" id="noticeTitle" name="noticeTitle" class="form-control" placeholder="제목을 입력하세요.">
							<hr>
						</div>
						<div>
							<textarea id="noticeContent" name="noticeContent" class="form-control"></textarea>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						</div>
					</form>
				</div>
				<div class="margin-top-20" align="center">
				<button type="button" id="insertBtn" class="btn btn-dark">등록</button>
				<button type="button" class="btn btn-default" onclick="location.href='admNoticeList'">목록</button>
			</div>
				</div>
				<br>
			</div><br><br>
			
		</div>
	</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	// 등록 버튼 이벤트
	$('#insertBtn').on("click", function() {
		
	    if ($('#oiTitle').val() == "") {
	    	alert('양식을 모두 입력해주세요.');
	    } else {
			$('#frm').submit();
	    }
	});

	
    ClassicEditor.create(document.querySelector('#noticeContent'))
    			 .catch(error => { console.error(error); });
    
</script>

</html>