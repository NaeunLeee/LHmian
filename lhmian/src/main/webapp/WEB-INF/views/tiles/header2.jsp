<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>LHmian</title>
<meta name="keywords" content="" />
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile view -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link rel="shortcut icon" href="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.css">

<!-- Google fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yesteryear" rel="stylesheet">

<!-- Template's stylesheets -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/corporate.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/et-line-font/et-line-font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/settings.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/layers.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/navigation.css">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<link href="${pageContext.request.contextPath}/resources/js/accordion/css/smk-accordion.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/ytplayer/ytplayer.css" />
<link href="${pageContext.request.contextPath}/resources/js/tabs/css/responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jFlickrFeed/style.css" />
<!-- Template's stylesheets END -->

<!-- Skin stylesheet -->

</head>
<body>
	<div class="wrapper-boxed">
		<div class="site-wrapper">
			<div class="col-md-12 nopadding">
				<div class="header-section style1 noborder no-bg fn-mar pin-style">
					<div class="container">
						<div class="mod-menu">
							<div class="row">
								<div class="col-sm-2">
									<a href="index-corporate.html" title="" class="logo style-2 mar-4"> 
										<img src="${pageContext.request.contextPath}/resources/images/logo/f-logo.png" alt="">
									</a>
								</div>
								<div class="col-sm-10">
									<div class="main-nav">
										<ul class="nav navbar-nav top-nav">
											<li class="search-parent">
												<a href="javascript:void(0)" title="" class="m-link">
													<i aria-hidden="true" class="fa fa-search"></i>
												</a>
												<div class="search-box ">
													<div class="content">
														<div class="form-control">
															<input type="text" placeholder="Type to search" /> 
															<a href="#" class="search-btn mar-2">
																<i aria-hidden="true" class="fa fa-search"></i>
															</a>
														</div>
														<a href="#" class="close-btn mar-1">x</a>
													</div>
												</div>
											</li>
											<li class="visible-xs menu-icon">
												<a href="javascript:void(0)" class="navbar-toggle collapsed"
												   data-toggle="collapse" data-target="#menu"
												   aria-expanded="false"> 
												   <i aria-hidden="true" class="fa fa-bars"></i>
												</a>
											</li>
										</ul>
										<div id="menu" class="collapse">
											<ul class="nav navbar-nav">
												<li><a href="#" class="m-link">우리 아파트</a>
													<span class="arrow"></span>
													<ul class="dm-align-2">
														<li>
															<a href="#">아파트 소개</a> 
														</li>
														<li>
															<a href="#">배치도</a> 
														</li>
														<li>
															<a href="#">평형도</a> 
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/introduce/opeInfoList">운영정보공개</a> 
														</li>
														<li>
															<a href="#">오시는 길</a> 
														</li>
													</ul>
												</li>
												<li>
													<a href="#" class="m-link">관리 사무소</a>
													<span class="arrow"></span>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/office/noticeList">공지사항</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/office/csList">민원</a>
														</li>
														<li>
															<a href="#">일정</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/itemLost/lostList">분실물 보관소</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="#" class="m-link">입주민 공간</a>
													<span class="arrow"></span>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/resident/confList">입주자 대표회의</a>
														</li>
														<li>
															<a href="#">투표</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/commlist">커뮤니티</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="#" class="m-link">편의 시설</a>
													<span class="arrow"></span>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/facility/library">독서실</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/facility/gym">헬스장</a>
														</li>
													</ul>
												</li>
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
	<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script>
	<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/style-customizer.js"></script>
	<!-- Scripts END -->

	<!-- Template scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/jquery.mb.YTPlayer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/elementvideo-custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/play-pause-btn.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/main-mosaic3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/accordion/js/smk-accordion.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/accordion/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tabs/js/responsive-tabs.min.js" type="text/javascript"></script>

	<!-- REVOLUTION JS FILES -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>


	<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
		(Load Extensions only on Local File Systems ! 
		The following part can be removed on Server for On Demand Loading) -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>

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

	<script src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
	<script>
		$('#basicuse').jflickrfeed({
			limit : 6,
			qstrings : { id : '133294431@N08' },
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
	<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>
