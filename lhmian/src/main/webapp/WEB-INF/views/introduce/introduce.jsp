<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>
	<div class="pagenation-holder">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h4>아파트 소개</h4>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">우리 아파트</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/introduce/introduce">아파트
								소개</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="clearfix"></div>
<!-- end section -->

<section class="sec-padding">
	<div class="container">
		<div class="row">

			<div id="js-grid-mosaic"
				class="cbp cbp-l-grid-mosaic cbp-caption-active cbp-caption-zoom cbp-ready"
				style="height: 800px;">
				<div class="cbp-wrapper-outer">
					<div class="cbp-wrapper">
						<div class="cbp-item print motion"
							style="width: 530px; left: 0px;">
							<div class="cbp-item-wrapper">
								<a href="http://placehold.it/1200x900"
									class="cbp-caption cbp-lightbox"
									data-title="WhereTO App<br>by Tiberiu Neamu">
									<div class="cbp-caption-defaultWrap">
										<img src="http://placehold.it/760x900" alt="">
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">
												<div class="cbp-l-caption-title">WhereTO App</div>
												<div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			

			<div class="col-md-12">
				<h4 class="uppercase weight3">Synced Owls</h4>
				<br>
				<div id="sync1" class="owl-carousel owl-theme"
					style="opacity: 1; display: block;">
					<div class="owl-wrapper-outer">
						<div class="owl-wrapper"
							style="width: 7520px; left: 0px; display: block; transition: all 0ms ease 0s; transform: translate3d(0px, 0px, 0px);">
							<div class="owl-item" style="width: 940px;">
								<div class="item">
									<img src="http://placehold.it/1500x600" alt="">
								</div>
							</div>
							
						</div>
					</div>

				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div id="sync2" class="owl-carousel owl-theme"
						style="opacity: 1; display: block;">
						<div class="owl-wrapper-outer">
							<div class="owl-wrapper"
								style="width: 1192px; left: 0px; display: block; transition: all 200ms ease 0s; transform: translate3d(0px, 0px, 0px);">
								<div class="owl-item synced" style="width: 149px;">
									<div class="item">
										<img src="http://placehold.it/200x150" alt=""
											class="img-responsive">
									</div>
								</div>
								<div class="owl-item" style="width: 149px;">
									<div class="item">
										<img src="http://placehold.it/200x150" alt=""
											class="img-responsive">
									</div>
								</div>
								<div class="owl-item" style="width: 149px;">
									<div class="item">
										<img src="http://placehold.it/200x150" alt=""
											class="img-responsive">
									</div>
								</div>
								<div class="owl-item" style="width: 149px;">
									<div class="item">
										<img src="http://placehold.it/200x150" alt=""
											class="img-responsive">
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
</section>