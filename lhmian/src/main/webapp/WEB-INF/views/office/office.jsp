<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	.ce4-feature-box-12 {
		cursor: pointer;
		background-color: white;
		border-color: #EEEEEE;
	}
	
	.trans-15 {
		background-color: rgba(0, 0, 0, 0.15) !important;
	}
	
	p {
    	margin: 0 0 10px 30px;
    }
    .no-margin{
    	margin: 0
    }
</style>


</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner trans-15">
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class=" clearfix"></div>
	</div>
	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">관리 사무소</h4>
						<p class="by-sub-title no-margin"></p>						
						<div class="clearfix"></div>
						<!-- <p class="by-sub-title">관리 사무소 설명....</p> -->
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	
		<div class="container" style="margin-bottom: 200px;">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='noticeList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-info-square"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">공지사항</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>LHmian의 공지사항을 확인하세요.</p> <br/>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='csList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-question-circle"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">민원</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p> 민원사항을 자유롭게 남겨주세요.
						LHmian은 주민들의 불편함을 최소화하고자 최선을 다하고 있습니다.
						</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/office/schedule'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-calendar-week"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">일정</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>LHmian의 일정을 한눈에 확인하실 수 있습니다.</p>
						<br />
					</div>
				</div>
				<!--end item-->

				<div class="clearfix"></div>
				<div class="col-divider-margin-3"></div>

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/itemLost/lostList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-archive"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">분실물 보관소</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>습득하여 보관하고있는 분실물 리스트입니다.</p>
						<br />
					</div>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

</body>
</html>