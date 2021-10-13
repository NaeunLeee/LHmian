<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pro-landing.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/smart-forms/smart-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hint.css">
<!-- Template's stylesheets END -->

<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/less/skin.less">
<!-- Skin stylesheet -->

<style>
	/* a태그 색깔 없애기 */
	a {
		color: black;
		text-decoration: none;
	}
	a:link {
		color: black;
		text-decoration: none;
	}
	
	a:visited {
		color: black;
		text-decoration: none;
	}
	
	a:hover {
		color: black;
		text-decoration: underline;
	}

	.site-wrapper {
		background: transparent;
	    position: absolute;
	    top: 0;
	}
	
	#main-menu-padding{
		    padding: 32px 10px 0 10px;
	}
</style>
</head>
<body>
	<div class="wrapper-boxed">
		<div class="site-wrapper">
			<%-- <div class="topbar-transparent text-white bborder topbar-padding">
				<div class="container">
					<div class="topbar-left-items">
						<ul class="toplist toppadding pull-left paddtop1">
							<li class="rightl">Customer Care</li>
							<li>(053) 421-2460</li>
						</ul>
					</div>
					<!--end left-->

					<div class="topbar-right-items pull-right">
						<ul class="toplist toppadding">
							<li>
								<sec:authorize access="isAnonymous()">
									<a href="${pageContext.request.contextPath}/login">로그인</a>
								</sec:authorize>
								<sec:authorize access="isAuthenticated()">
									<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
								</sec:authorize>
							</li>
							<li><a href="${pageContext.request.contextPath}/leaderStep1">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div> --%>
			<!--end topbar-->

			<div class="col-md-12 nopadding">
				<div class="header-section style1 noborder pin-style">
<!-- 					<div class="container"> -->
						<div class="mod-menu">
							<div class="row"  style="margin:0; padding-bottom:30px; background-color:#1f1b1b42;">
								<div class="col-sm-2" style="width:14%">
									<a href="${pageContext.request.contextPath}/" title="" class="logo mar-4"> 
										<img src="${pageContext.request.contextPath}/resources/images/logo/f-logo.png" alt="" style="width:150px; padding-left:20px;">
									</a>
								</div>
								<div class="col-sm-6" style="padding-left:0">
									<div class="main-nav">
										<ul class="nav navbar-nav top-nav">
											<li class="visible-xs menu-icon">
												<a href="javascript:void(0)" class="navbar-toggle collapsed"
												   data-toggle="collapse" data-target="#menu" aria-expanded="false"> 
												   <i aria-hidden="true" class="fa fa-bars"></i>
												</a>
											</li>
										</ul>
										<div id="menu" class="collapse" style="float:left; font-size:12px">
											<ul class="nav navbar-nav">
												<li class="mega-menu six-col active">
													<a href="${pageContext.request.contextPath}/" id="main-menu-padding">Home</a> 
												</li>
												<li>
													<a href="${pageContext.request.contextPath}/introduce/myApt" id="main-menu-padding">우리 아파트</a> 
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/introduce/introduce">아파트 소개</a> 
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/introduce/arrangement">배치도</a> 
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/introduce/phaseDiagram">평형도</a> 
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/introduce/opeInfoList">운영정보공개</a> 
														</li>
														<li>
														<!-- 한솔 1004 -->
															<a href="${pageContext.request.contextPath}/introduce/map">오시는 길</a> 
														</li>
													</ul>
												</li>
												<li class="right">
													<a href="${pageContext.request.contextPath}/office/office" id="main-menu-padding">관리 사무소</a>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/office/noticeList" >공지사항</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/office/csList">민원</a>
														</li>
														<li>
															<!-- 10/02 스케쥴 조회 링크 추가 -->
															<a href="${pageContext.request.contextPath}/schedule">일정</a>
															<!-- --------  끝  -------- -->
														</li>
														<li>
															<%-- <sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')"> --%>
																<a href="${pageContext.request.contextPath}/itemLost/lostList">분실물 보관소</a>
														<%-- 	</sec:authorize>
															<sec:authorize access="hasRole('ROLE_ADMIN')">
																<a href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
															</sec:authorize> --%>
														</li>
													</ul>
												</li>
												<li class="right">
													<a href="${pageContext.request.contextPath}/resident/resident" id="main-menu-padding">입주민 공간</a>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/resident/confList">입주자 대표회의</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/voteList">투표</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/commlist">커뮤니티</a>
														</li>
													</ul>
												</li>
												<li class="right">
													<a href="#" id="main-menu-padding">편의 시설</a>
													<ul class="dm-align-2">
														<li>
															<a href="${pageContext.request.contextPath}/facility/library">독서실</a>
														</li>
														<li>
															<a href="${pageContext.request.contextPath}/facility/gym">피트니스 센터</a>
														</li>
													</ul>
												</li>
												<%-- <sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')"> --%>
													<%-- <li class="right">
														<a href="${pageContext.request.contextPath}/myPage/myPage" id="main-menu-padding">마이 페이지</a>
														<ul class="dm-align-2">
															<li>
																<!-- 10/03 개인정보 조회/수정 링크 -->
																<a href="${pageContext.request.contextPath}/myInfo">개인정보수정</a>
																<!-- ------------------------ -->
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/mypage/fee">관리비 조회</a>
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/myPage/myEnergyCon">에너지 사용량</a>
															</li>
															<li>
																<a href="#">주민 투표</a>
															</li>
															<li>
																<!-- 10/02 스케쥴 조회 링크 추가 시작-->
																<a href="${pageContext.request.contextPath}/myPage/myWrittenList">작성글 조회</a>
																<!-- 10/02 스케쥴 조회 링크 추가 끝 -->
															</li>
															<li>
																<a href="myFac">시설이용내역</a>
															</li>
														</ul>
													</li> --%>
												<%-- </sec:authorize>
												
												<sec:authorize access="hasRole('ROLE_ADMIN')"> --%>
													<li class="right">
														<a href="${pageContext.request.contextPath}/admin/adminPage" id="main-menu-padding">관리자 페이지</a>
														<ul class="dm-align-2">
															<li>
																<!-- 10/03 개인정보 조회/수정 링크 -->
																<a href="${pageContext.request.contextPath}/admin/feeList">관리비</a>
																<!-- ------------------------ -->
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/admin/admEnergyCon">에너지 사용량</a>
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/admMemberList">회원 관리</a>
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/admCarList">차량 관리</a>
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/admin/admOpeInfoList">게시글 관리</a>
															</li>
														</ul>
													</li>
												<%-- </sec:authorize> --%>
											</ul>
										</div>
									</div>
								</div>
						<div class="col-sm-4">
									<div class="main-nav">
										<ul class="nav navbar-nav top-nav">
											<li class="visible-xs menu-icon">
												<a href="javascript:void(0)" class="navbar-toggle collapsed"
												   data-toggle="collapse" data-target="#menu" aria-expanded="false"> 
												   <i aria-hidden="true" class="fa fa-bars"></i>
												</a>
											</li>
										</ul>
										<div id="menu" class="collapse" style="float:right; font-size:12px">
											<ul class="nav navbar-nav">
											<li class="right">
														<a href="${pageContext.request.contextPath}/myPage/myPage" id="main-menu-padding">마이 페이지</a>
														<ul class="dm-align-2">
															<li>
																<!-- 10/03 개인정보 조회/수정 링크 -->
																<a href="${pageContext.request.contextPath}/myInfo">개인정보수정</a>
																<!-- ------------------------ -->
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/mypage/fee">관리비 조회</a>
															</li>
															<li>
																<a href="${pageContext.request.contextPath}/myPage/myEnergyCon">에너지 사용량</a>
															</li>
															<li>
																<a href="#">주민 투표</a>
															</li>
															<li>
																<!-- 10/02 스케쥴 조회 링크 추가 시작-->
																<a href="${pageContext.request.contextPath}/myPage/myWrittenList">작성글 조회</a>
																<!-- 10/02 스케쥴 조회 링크 추가 끝 -->
															</li>
															<li>
																<a href="myFac">시설이용내역</a>
															</li>
														</ul>
													</li>
							<li>
								<sec:authorize access="isAnonymous()">
									<a href="${pageContext.request.contextPath}/login" id="main-menu-padding">로그인</a>
								</sec:authorize>
								<sec:authorize access="isAuthenticated()">
									<a href="${pageContext.request.contextPath}/logout" id="main-menu-padding">로그아웃</a>
								</sec:authorize>
							</li>
							<li><a href="${pageContext.request.contextPath}/leaderStep1" id="main-menu-padding">회원가입</a></li>
						</ul>
								</div>
							</div>
						</div>
<!-- 					</div> -->
				</div>
				<!--end menu-->

			</div>
			<!--end menu-->

			<div class="clearfix"></div>
		</div>
	</div>
	
<!-- Scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script> 
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script> 
<!-- Scripts END --> 

<!-- Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/parallax/jquery.parallax-1.1.3.js"></script> 
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
 
<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
 
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
	var tpj=jQuery;			
	var revapi4;
	tpj(document).ready(function() {
	if(tpj("#rev_slider").revolution == undefined){
	revslider_showDoubleJqueryError("#rev_slider");
	}else{
		revapi4 = tpj("#rev_slider").show().revolution({
		sliderType:"standard",
		jsFileLocation:"js/revolution-slider/js/",
		sliderLayout:"auto",
		dottedOverlay:"none",
		delay:9000,
		navigation: {
		keyboardNavigation:"off",
		keyboard_direction: "horizontal",
		mouseScrollNavigation:"off",
		onHoverStop:"off",
		arrows: {
		style:"erinyen",
		enable:true,
		hide_onmobile:true,
		hide_under:778,
		hide_onleave:true,
		hide_delay:200,
		hide_delay_mobile:1200,
		tmp:'',
		left: {
		h_align:"left",
		v_align:"center",
		h_offset:80,
		v_offset:0
		},
		right: {
		h_align:"right",
		v_align:"center",
		h_offset:80,
		v_offset:0
		}
		}
		,
		touch:{
		touchenabled:"on",
		swipe_threshold: 75,
		swipe_min_touches: 1,
		swipe_direction: "horizontal",
		drag_block_vertical: false
	}
	,
										
										
										
	},
		viewPort: {
		enable:true,
		outof:"pause",
		visible_area:"80%"
	},
	
	responsiveLevels:[1240,1024,778,480],
	gridwidth:[1240,1024,778,480],
	 gridheight:[840,730,600,420],
	lazyType:"smart",
		parallax: {
		type:"mouse",
		origo:"slidercenter",
		speed:2000,
		levels:[2,3,4,5,6,7,12,16,10,50],
		},
	shadow:0,
	spinner:"off",
	stopLoop:"off",
	stopAfterLoops:-1,
	stopAtSlide:-1,
	shuffle:"off",
	autoHeight:"off",
	hideThumbsOnMobile:"off",
	hideSliderAtLimit:0,
	hideCaptionAtLimit:0,
	hideAllCaptionAtLilmit:0,
	disableProgressBar:"on",
	debugMode:false,
		fallbacks: {
		simplifyAll:"off",
		nextSlideOnWindowFocus:"off",
		disableFocusListener:false,
		}
	});
	}
	});	/*ready*/
</script> 
 
<script>
    $(window).load(function(){
      setTimeout(function(){

        $('.loader-live').fadeOut();
      },1000);
    })

  </script>