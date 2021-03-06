<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	.ce4-feature-box-12 {
		cursor: pointer;
	}
	p {
    	margin: 0 0 10px 30px;
    }
	.no-margin {
		margin: 0px;
	}
</style>

</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/편의시설.jpg);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner">
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
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">편의시설</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title no-margin">LHmian에서 운영하고 있는 주민 공동 시설입니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/facility/library'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-book"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">독서실</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>LHmian에서 운영하고 있는 독서실입니다. 연락처 확인 및 등록 가능합니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/facility/gym'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-bicycle"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">피트니스 센터</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>LHmian에서 운영하고 있는 피트니스 센터입니다. 헬스장 이용 및 다양한 프로그램
						에 참여하실 수 있습니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="clearfix"></div>
				<div class="col-divider-margin-3"></div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

</body>
</html>