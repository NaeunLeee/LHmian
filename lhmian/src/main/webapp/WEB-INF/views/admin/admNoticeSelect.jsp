<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	#uploadDiv {
		display: none;
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

<!-- 10/10 관리자 게시글 형식에 맞춰 수정 (이나은) -->
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
				<div class="row">
					<div class="text-box white padding-4 col-10">
							<div class="text-box">
								<div class="text-box">
								<h4 class="col-md-8 font-weight-7" style="margin-top: 5px;">${notice.noticeTitle}</h4>
								<h6 class="col-md-4" style="float: right; text-align: end;">
								작성일자 : <fmt:formatDate value="${notice.noticeDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${notice.noticeUpdate}" pattern="yy-MM-dd" /></h6>
								<form id="deleteForm" name="deleteForm" action="admNoticeDelete" method="post">
									<input type="hidden" id="noticeNo" name="noticeNo" value="${notice.noticeNo}">
									<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
								</form>
							</div>
							</div>
							<hr>
							<div class="text-box padding-2 border" style="margin-bottom: 20px; min-height: 400px;">
								${notice.noticeContent}
							</div>
						<br><br><br>
						<div align="center">
							<button type="button" class="btn btn-default" id="modifyBtn">수정</button>
							<button type="button" class="btn btn-default" id="deleteBtn">삭제</button>
							<button type="button" class="btn btn-default" onclick="location.href='admNoticeList'">목록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	// 게시글 삭제
 	$('#deleteBtn').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$('#deleteForm').submit();
		}
	});
 	
	$('#modifyBtn').on("click", function() {
		if (confirm('수정하시겠습니까?')) {
			$(location).attr('href','admNoticeUpdate?noticeNo=' + $('#noticeNo').val());
		}
	})
 	
</script>

</html>