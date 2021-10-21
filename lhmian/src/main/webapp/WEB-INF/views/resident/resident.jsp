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
	p {
    	margin: 0 0 10px 30px;
    }
    
    .no-margin {
    	margin: 0
    }
</style>

</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
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
	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">입주민 공간</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title no-margin">입주민들을 위한 공간입니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container" style="margin-bottom: 200px;">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/resident/confList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-people-fill"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">입주자 대표회의</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>입주자 동대표 주민들이 모여 회의하는 공간입니다.</p><br/>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/resident/voteList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-receipt-cutoff"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">투표</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>아파트 관리에 대한 주민들의 의견을 반영하기 위해 투표를 진행하고 있습니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/commlist'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-chat-quote"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">커뮤니티</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>모든 입주민들이 자유롭게 글을 <br />남기고 의견을 나눌 수 있는 입주민 <br />커뮤니티 공간입니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="clearfix"></div>
				<div class="col-divider-margin-3"></div>

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='${pageContext.request.contextPath}/visit/generationList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-mailbox"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">방명록</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>이웃들에게 마음을 담은 방명록을 남길 수 있는 공간입니다.</p>
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