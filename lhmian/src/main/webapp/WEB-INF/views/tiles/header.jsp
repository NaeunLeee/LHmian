<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<div class="wrapper-boxed">
	<div class="site-wrapper">
		<div class="topbar light topbar-padding more-padd-1">
			<div class="container">
				<div class="col-md-7 col-sm-6 col-xs-12 margin-bottom">
					<a href="index.html" title="" class="logo mar-4"> <img
						src="${pageContext.request.contextPath}/resources/images/logo/logo.png"
						alt="">
					</a>
				</div>
				<!--end left-->

				<div class="col-md-5 col-sm-6 col-xs-12 margin-bottom">
					<div class="col-md-6 col-sm-6 col-xs-12 border-r">
						<div class="icon-plain-tiny left">
							<span class="text-gyellow"> <i class="fa fa-envelope"
								aria-hidden="true"></i>
							</span>
						</div>
						<div class="text-box-right less-padding-3">
							<span class="text-gyellow font-weight-6">Mail Us:</span><br />
							info@domain.com
						</div>
					</div>
					<!--end item-->

					<div class="col-md-6 col-sm-6 col-xs-12 padd-left">
						<div class="icon-plain-tiny left">
							<span class="text-gyellow"><i class="fa fa-phone"
								aria-hidden="true"></i></span>
						</div>
						<div class="text-box-right less-padding-3">
							<span class="text-gyellow font-weight-6">Call Us:</span><br />
							(888) 123-4567
						</div>
					</div>
					<!--end item-->

				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<!--end topbar-->

		<div class="col-md-12 nopadding">
			<div
				class="header-section dark-dropdowns style2 boder-b active-style-1 white-bg  pin-style">
				<div class="container">
					<div class="mod-menu">
						<div class="row">
							<div class="col-sm-10">
								<div class="main-nav">
									<ul class="nav navbar-nav top-nav">
										<li class="visible-xs menu-icon"><a
											href="javascript:void(0)" class="navbar-toggle collapsed"
											data-toggle="collapse" data-target="#menu"
											aria-expanded="false"> <i aria-hidden="true"
												class="fa fa-bars"></i>
										</a></li>
									</ul>
									<div id="menu" class="collapse">
										<ul class="nav navbar-nav">
											<li class="right"><a href="#">우리 아파트</a>
												<ul class="dm-align-2">
													<li><a href="#">아파트 소개</a></li>
													<li><a href="#">배치도</a></li>
													<li><a href="#">평형도</a></li>
													<li><a
														href="${pageContext.request.contextPath}/introduce/opeInfoList">운영정보공개</a>
													</li>
													<li><a href="#">오시는 길</a></li>
												</ul></li>
											<li class="right"><a href="#">관리 사무소</a>
												<ul class="dm-align-2">
													<li><a
														href="${pageContext.request.contextPath}/office/noticeList">공지사항</a>
													</li>
													<li><a
														href="${pageContext.request.contextPath}/office/csList">민원</a>
													</li>
													<li><a href="#">일정</a></li>
													<li><a
														href="${pageContext.request.contextPath}/itemLost/lostList">분실물
															보관소</a></li>
												</ul></li>
											<li class="right"><a href="#">입주민 공간</a>
												<ul class="dm-align-2">
													<li><a
														href="${pageContext.request.contextPath}/resident/confList">입주자
															대표회의</a></li>
													<li><a href="#">투표</a></li>
													<li><a
														href="${pageContext.request.contextPath}/commlist">커뮤니티</a>
													</li>
												</ul></li>
											<li class="right"><a href="#">편의 시설</a>
												<ul class="dm-align-2">
													<li><a
														href="${pageContext.request.contextPath}/facility/library">독서실</a>
													</li>
													<li><a
														href="${pageContext.request.contextPath}/facility/gym">헬스장</a>
													</li>
												</ul></li>
											<li><sec:authorize access="isAnonymous()">
													<a href="${pageContext.request.contextPath}/login"> <span
														class="btn-top-1">로그인</span>
													</a>
												</sec:authorize></li>
											<li><sec:authorize access="isAuthenticated()">
													<a href="${pageContext.request.contextPath}/logout"> <span
														class="btn-top-1">로그아웃</span>
													</a>
												</sec:authorize></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--end menu-->

		</div>
		<!--end menu-->

	</div>
</div>


<!-- Scripts -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/less/less.min.js"
	data-env="development"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/style-customizer/js/style-customizer.js"></script>
<!-- Scripts END -->

<!-- Template scripts -->
<script
	src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/ytplayer/jquery.mb.YTPlayer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/ytplayer/elementvideo-custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/ytplayer/play-pause-btn.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/cubeportfolio/main-mosaic3.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/accordion/js/smk-accordion.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/accordion/js/custom.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/tabs/js/responsive-tabs.min.js"
	type="text/javascript"></script>

<!-- REVOLUTION JS FILES -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>


<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
		(Load Extensions only on Local File Systems ! 
		The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>

<script type="text/javascript">
	var tpj = jQuery;
	var revapi4;
	tpj(document).ready(function() {
		if (tpj("#rev_slider").revolution == undefined) {
			revslider_showDoubleJqueryError("#rev_slider");
		} else {
			revapi4 = tpj("#rev_slider").show().revolution({
				sliderType : "standard",
				jsFileLocation : "js/revolution-slider/js/",
				sliderLayout : "auto",
				dottedOverlay : "none",
				delay : 9000,
				navigation : {
					keyboardNavigation : "off",
					keyboard_direction : "horizontal",
					mouseScrollNavigation : "off",
					onHoverStop : "off",
					arrows : {
						style : "erinyen",
						enable : true,
						hide_onmobile : true,
						hide_under : 778,
						hide_onleave : true,
						hide_delay : 200,
						hide_delay_mobile : 1200,
						tmp : '',
						left : {
							h_align : "left",
							v_align : "center",
							h_offset : 80,
							v_offset : 0
						},
						right : {
							h_align : "right",
							v_align : "center",
							h_offset : 80,
							v_offset : 0
						}
					},
					touch : {
						touchenabled : "on",
						swipe_threshold : 75,
						swipe_min_touches : 1,
						swipe_direction : "horizontal",
						drag_block_vertical : false
					},

				},
				viewPort : {
					enable : true,
					outof : "pause",
					visible_area : "80%"
				},

				responsiveLevels : [ 1240, 1024, 778, 480 ],
				gridwidth : [ 1240, 1024, 778, 480 ],
				gridheight : [ 868, 768, 1000, 950 ],
				lazyType : "smart",
				parallax : {
					type : "mouse",
					origo : "slidercenter",
					speed : 2000,
					levels : [ 2, 3, 4, 5, 6, 7, 12, 16, 10, 50 ],
				},
				shadow : 0,
				spinner : "off",
				stopLoop : "off",
				stopAfterLoops : -1,
				stopAtSlide : -1,
				shuffle : "off",
				autoHeight : "off",
				hideThumbsOnMobile : "off",
				hideSliderAtLimit : 0,
				hideCaptionAtLimit : 0,
				hideAllCaptionAtLilmit : 0,
				disableProgressBar : "on",
				debugMode : false,
				fallbacks : {
					simplifyAll : "off",
					nextSlideOnWindowFocus : "off",
					disableFocusListener : false,
				}
			});
		}
	}); /*ready*/
</script>
<script type="text/javascript">
	var tpj = jQuery;
	var revapi280;
	tpj(document).ready(function() {
		if (tpj("#rev_slider_280_1").revolution == undefined) {
			revslider_showDoubleJqueryError("#rev_slider_280_1");
		} else {
			revapi280 = tpj("#rev_slider_280_1").show().revolution({
				sliderType : "hero",
				jsFileLocation : "../../revolution/js/",
				sliderLayout : "auto",
				dottedOverlay : "none",
				delay : 9000,
				navigation : {},
				responsiveLevels : [ 1240, 1024, 778, 480 ],
				visibilityLevels : [ 1240, 1024, 778, 480 ],
				gridwidth : [ 1000, 1024, 778, 480 ],
				gridheight : [ 520, 520, 420, 420 ],
				lazyType : "none",
				parallax : {
					type : "mouse+scroll",
					origo : "slidercenter",
					speed : 2000,
					levels : [ 1, 2, 3, 20, 25, 30, 35, 40, 45, 50 ],
					disable_onmobile : "on"
				},
				shadow : 0,
				spinner : "spinner2",
				autoHeight : "off",
				fullScreenAutoWidth : "off",
				fullScreenAlignForce : "off",
				fullScreenOffsetContainer : "",
				fullScreenOffset : "60",
				disableProgressBar : "on",
				hideThumbsOnMobile : "off",
				hideSliderAtLimit : 0,
				hideCaptionAtLimit : 0,
				hideAllCaptionAtLilmit : 0,
				debugMode : false,
				fallbacks : {
					simplifyAll : "off",
					disableFocusListener : false,
				}
			});
		}
	}); /*ready*/
</script>

<script
	src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
<script>
	$('#basicuse')
			.jflickrfeed(
					{
						limit : 6,
						qstrings : {
							id : '133294431@N08'
						},
						itemTemplate : '<li>'
								+ '<a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a>'
								+ '</li>'
					});
</script>

<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.loader-live').fadeOut();
		}, 1000);
	})
</script>
<script
	src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>