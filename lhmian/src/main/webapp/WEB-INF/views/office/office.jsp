<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	.ce4-feature-box-12 {
		cursor: pointer;
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
							<div class="overlay"></div>
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
						<h4 class="uppercase font-weight-7 less-mar-1">관리 사무소</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">관리 사무소 설명....</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='noticeList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span class="icon-pencil"></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">공지사항</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum
							dolor consectetuer adipiscing elit Suspendisse.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='csList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span class="icon-layers"></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">민원</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum
							dolor consectetuer adipiscing elit Suspendisse.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/office/schedule'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span class="icon-camera"></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">일정</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum
							dolor consectetuer adipiscing elit Suspendisse.</p>
					</div>
				</div>
				<!--end item-->

				<div class="clearfix"></div>
				<div class="col-divider-margin-3"></div>

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/itemLost/lostList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span class="icon-hotairballoon"></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">분실물 보관소</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum
							dolor consectetuer adipiscing elit Suspendisse.</p>
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