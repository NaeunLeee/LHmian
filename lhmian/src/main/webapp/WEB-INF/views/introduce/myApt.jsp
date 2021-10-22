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
				<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터6.jpg); background-position:50% 100px !important">
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
	<br><br><br>
	<div>
	<section class="section-light">
	
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">우리 아파트 소개</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title no-margin">100년이 흘러도 변치 않는 가치를 실현합니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	
		<div class="container" style="padding-bottom: 150px;">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='introduce'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-lightbulb"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">아파트 소개</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>한 차원 더 높은 생활의 가치를 <br/>바로 여기 LHmian에서 만나보세요.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='arrangement'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-map"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">배치도</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>자연과 어우러진 완벽한 조화로 <br/>최고의 라이프스타일을 제공합니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='phaseDiagram'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-view-stacked"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">평형도</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>평수 별 평형도입니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="clearfix"></div>
				<div class="col-divider-margin-3"></div>

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='opeInfoList'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-file-earmark-bar-graph"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">운영 정보 공개</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>투명하고 정직한 정보 공개로 <br/>민주적인 아파트 운영을 실현합니다.</p>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div onclick="location.href='map'" class="ce4-feature-box-12 margin-bottom">
						<div class="icon-plain-msmall left icon">
							<span><i class="bi bi-geo-alt"></i></span>
						</div>
						<div class="text-box-right less-padding-2">
							<h5 class="uppercase title font-weight-5 nopadding title">오시는 길</h5>
							<div class="title-line"></div>
						</div>
						<br />
						<p>주소 및 연락처, LHmian으로<br/> 오시는 길이 안내되어 있습니다.</p>
					</div>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<!-- end section -->
</div>
</body>
</html>