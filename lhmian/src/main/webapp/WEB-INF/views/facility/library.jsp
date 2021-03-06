<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link href='http://www.openhiun.com/hangul/nanumbarungothic.css' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
	.thumbs img {
		width: 100px;
		height: 100px;
	}
	
	#mainImg img {
		width: 450px;
		height: 300px;
	}
	
	.margin-t130 {
		margin-top: 130px;
	}
	
	.padding-l110 {
		padding-left: 110px;
	}
	
	.nanum {
		font-family: 'NanumSquare', sans-serif;
	}
	
	body {
		font-family: 'Nanum Barun Gothic', sans-serif;
	}
</style>

</head>
<body>

	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(${pageContext.request.contextPath }/resources/images/header/편의시설.jpg);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner">
							<div class="text text-center"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class=" clearfix"></div>
	</div>

	<section>
		<div class="pagenation-holder">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/facility/facilityList">편의 시설</a></li>
							<li class="current"><a href="#">독서실</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-tpadding-2 section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">독서실</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">한사랑 독서실입니다</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
			</div>
		</div>

		<div id="rev_slider_2_1_wrapper"
			class="rev_slider_wrapper fullwidthbanner-container"
			data-alias="classic-carousel2"
			style="margin: 0px auto; background-color: #ffffff; padding: 0px; margin-top: 0px; margin-bottom: 0px;">

			<!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
			<div id="rev_slider_2_1" class="rev_slider fullwidthabanner"
				style="display: none;" data-version="5.0.7">
				<ul>
					<!-- SLIDE  -->
					<li data-index="rs-6" data-transition="zoomout"
						data-slotamount="default" data-masterspeed="2000" data-rotate="0"
						data-fstransition="fade" data-fsmasterspeed="1500"
						data-fsslotamount="7" data-saveperformance="off" data-title=""
						data-description="">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실1.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"
						data-no-retina> <!-- LAYERS --> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0"
							id="slide-6-layer-8"
							data-x="['center','center','center','center']"
							data-hoffset="['0','0','0','0']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-68','-68','-68','-68']" data-width="none"
							data-height="none" data-whitespace="nowrap"
							data-transform_idle="o:1;" data-style_hover="cursor:default;"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="2000" data-splitin="none" data-splitout="none"
							data-responsive_offset="on"
							style="z-index: 7; white-space: nowrap;">
							<i class="pe-7s-refresh"></i>
						</div>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-7" data-transition="zoomout"
						data-slotamount="default" data-masterspeed="2000" data-rotate="0"
						data-fstransition="fade" data-fsmasterspeed="1500"
						data-fsslotamount="7" data-saveperformance="off" data-title=""
						data-description="">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실2.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"
						data-no-retina> <!-- LAYERS --> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0"
							id="slide-6-layer-8"
							data-x="['center','center','center','center']"
							data-hoffset="['0','0','0','0']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-68','-68','-68','-68']" data-width="none"
							data-height="none" data-whitespace="nowrap"
							data-transform_idle="o:1;" data-style_hover="cursor:default;"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="2000" data-splitin="none" data-splitout="none"
							data-responsive_offset="on"
							style="z-index: 7; white-space: nowrap;">
							<i class="pe-7s-refresh"></i>
						</div>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-8" data-transition="zoomout"
						data-slotamount="default" data-masterspeed="2000" data-rotate="0"
						data-fstransition="fade" data-fsmasterspeed="1500"
						data-fsslotamount="7" data-saveperformance="off" data-title=""
						data-description="">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실3.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"
						data-no-retina> <!-- LAYERS --> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0"
							id="slide-6-layer-8"
							data-x="['center','center','center','center']"
							data-hoffset="['0','0','0','0']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-68','-68','-68','-68']" data-width="none"
							data-height="none" data-whitespace="nowrap"
							data-transform_idle="o:1;" data-style_hover="cursor:default;"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="2000" data-splitin="none" data-splitout="none"
							data-responsive_offset="on"
							style="z-index: 7; white-space: nowrap;">
							<i class="pe-7s-refresh"></i>
						</div>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-9" data-transition="zoomout"
						data-slotamount="default" data-masterspeed="2000" data-rotate="0"
						data-fstransition="fade" data-fsmasterspeed="1500"
						data-fsslotamount="7" data-saveperformance="off" data-title=""
						data-description="">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실4.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"
						data-no-retina> <!-- LAYERS --> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0"
							id="slide-6-layer-8"
							data-x="['center','center','center','center']"
							data-hoffset="['0','0','0','0']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-68','-68','-68','-68']" data-width="none"
							data-height="none" data-whitespace="nowrap"
							data-transform_idle="o:1;" data-style_hover="cursor:default;"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="2000" data-splitin="none" data-splitout="none"
							data-responsive_offset="on"
							style="z-index: 7; white-space: nowrap;">
							<i class="pe-7s-refresh"></i>
						</div>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-10" data-transition="zoomout"
						data-slotamount="default" data-masterspeed="2000" data-rotate="0"
						data-fstransition="fade" data-fsmasterspeed="1500"
						data-fsslotamount="7" data-saveperformance="off" data-title=""
						data-description="">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실5.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"
						data-no-retina> <!-- LAYERS --> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0"
							id="slide-6-layer-8"
							data-x="['center','center','center','center']"
							data-hoffset="['0','0','0','0']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-68','-68','-68','-68']" data-width="none"
							data-height="none" data-whitespace="nowrap"
							data-transform_idle="o:1;" data-style_hover="cursor:default;"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="2000" data-splitin="none" data-splitout="none"
							data-responsive_offset="on"
							style="z-index: 7; white-space: nowrap;">
							<i class="pe-7s-refresh"></i>
						</div>
					</li>
				</ul>
				<div class="tp-static-layers"></div>
				<div class="tp-bannertimer"
					style="height: 7px; background-color: rgba(255, 255, 255, 0.25);"></div>
			</div>
		</div>

		<div class="container margin-t130">
			<div class="row">
				<div class="col-md-5">
					<img
						src="${pageContext.request.contextPath}/resources/images/gym/독서실6.jpg"
						style="width: 100%; height: 100%;" alt=""
						class="img-responsive img-circle">
				</div>
				<div class="col-md-7 padding-l110">
					<div class="text-box">
						<h2 style="padding-bottom: 30px;" class="nanum">
							공부습관을 만들어주는 최적의 학습공간
						</h2>
						<h4 class="nanum" style="line-height: 20px;">
							LHmian의 독서실에서는 입주민들의 <br />취향에 맞춘 다양한 공간형태를 제공하고 있습니다.<br>
							온전히 공부에 집중할 수 있도록 만들어진<br> 최적화된 미래형 독서실입니다.
						</h4>
						<br />
						<ul class="nanum iconlist gyellow" style="font-size: 18px;">
							<li><i class="fa fa-check"></i> 쾌적한 환경</li>
							<li><i class="fa fa-check"></i> 전 좌석 LAN선, 기가 WIFI 설치 완료</li>
							<li><i class="fa fa-check"></i> 컴퓨터실, 휴게실 무료 이용 가능</li>
							<li><i class="fa fa-check"></i> 백색소음기 구비</li>
						</ul>
						<br>
						<div class="divider-line dotted"></div>
						<br>
						<p class="nanum">
							운영시간 : 연중 무휴<br> (Break Time : 13:00 ~ 14:00)<br>
							*운영시간은 변동될 수 있습니다.
						</p>
						<button type="button" data-toggle="modal" data-target="#numModal"
							class="btn btn-dark" style="margin-right: 10px;">연락처</button>
						<button type="button" id="registerBtn" class="btn btn-gyellow">등록</button>
					</div>
				</div>
			</div>
		</div>




		<%-- <hr>

	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 margin-bottom">
					<div id="mainImg">
						<img src="${pageContext.request.contextPath}/resources/images/library_1.jpg" alt="독서실" class="img-responsive">
					</div>
				</div>
				<div class="col-md-6 margin-bottom">
					<h4 class="uppercase font-weight-7 less-mar-1">LHmian 한사랑 독서실</h4>
					<p>LHmian의 자라나는 새싹들을 위한, 준비된 미래형 독서실</p>
					<br />
					<ul class="iconlist gyellow">
						<li><i class="fa fa-check"></i> 
							쾌적한 환경
						</li>
						<li><i class="fa fa-check"></i> 
							전 좌석 LAN선, 기가 WIFI 설치 완료
						</li>
						<li><i class="fa fa-check"></i> 
							컴퓨터실, 휴게실 무료 이용 가능
						</li>
						<li><i class="fa fa-check"></i> 
							백색소음기 구비
						</li>
					</ul>
					<br /> <br />
					<button type="button" data-toggle="modal" data-target="#numModal" class="btn btn-dark" style="margin-right: 10px;">연락처</button>
					<button type="button" id="registerBtn" class="btn btn-gyellow">등 록</button>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

	<!-- <div class="divider-line solid" style="color:#dcd9d9"></div> -->
	<br><br>
	<section class="moreless-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="thumbs">
						<ul class="ce4-clients noborder grid-cols-6 hover-2">
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/library_1.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/library_1.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/library_2.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/library_2.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/library_3.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/library_3.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/library_4.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/library_4.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/library_5.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/library_5.jpg" alt="">
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!--end item-->
			</div>
		</div>
	</section> --%>
		<!-- <div class="divider-line solid" style="color:#dcd9d9"></div> -->
		<section class="sec-padding section-light"></section>
		<div class="clearfix" style=""></div>
	</section>
	<!-- end section -->

	<!-- The Modal -->
	<div class="modal" id="libModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="libForm" name="libForm" method="post" action="libraryPay"
					target="popup_window">

					<!-- Modal Header -->
					<div class="modal-header">
						<div style="margin-left: 20px;">
							<div class="title-line-3 align-left"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">독서실 등록</h4>
							<p style="font-size: 12px;">
								* 결제취소는 결제한 시간으로부터 24시간 이내에만 가능합니다.
							</p>
						</div>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<div style="margin: 0px 20px 0px;">
							<h5>
								<i class="bi bi-person-circle"></i>&nbsp;&nbsp;
								<label for="name">이 름</label>
							</h5>
							<input type="text" id="name" class="form-control" readonly="readonly" value="<sec:authentication property="principal.NAME" />"><br>
							<h5>
								<i class="bi bi-calendar-check"></i>&nbsp;&nbsp;
								<label for="startdate">시작 날짜</label>
							</h5>
							<input type="text" id="startdate" class="form-control" readonly="readonly" placeholder="날짜 선택"><br>
							<h5>
								<i class="bi bi-calendar-range"></i>&nbsp;&nbsp;
								<label for="period">기 간</label>
							</h5>
							<select id="period" name="period" class="form-control">
								<option value="" selected>선택</option>
								<option value="1">1일</option>
								<option value="7">1주</option>
								<option value="30">1달</option>
								<option value="90">3달</option>
								<option value="180">6달</option>
								<option value="365">1년</option>
							</select><br>
							<h5>
								<i class="bi bi-cash-coin"></i>&nbsp;
								<label for="price">금액 (원)</label>
							</h5>
							<input type="text" id="price" name="price" class="form-control"
								readonly="readonly"> <input type="hidden"
								name="${_csrf.parameterName }" value="${_csrf.token }">
						</div>
						<br>
					</div>
					<!-- Modal Footer -->
					<div class="modal-footer">
						<div align="center">
							<button type="button" id="payBtn" class="btn btn-gyellow">결제하기</button>
							<button type="button" data-dismiss="modal"
								class="btn btn-default">취소</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div class="modal" id="numModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">한사랑 독서실 연락처</h4>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-left: 20px;">연락처 : 010-XXXX-XXXX</div>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<div align="right">
						<button type="button" data-dismiss="modal" class="btn btn-dark">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<form action="libPayComplete" method="post" id="frm">
		<input type="hidden" id="payNo" name="payNo" value=""> 
		<input type="hidden" id="id" name="id" value="<sec:authentication property="principal.username"/>">
		<input type="hidden" id="payType" name="payType" value=""> 
		<input type="hidden" id="payCat" name="payCat" value="독서실"> 
		<input type="hidden" id="payStatus" name="payStatus" value=""> 
		<input type="hidden" id="impUid" name="imp_uid" value=""> 
		<input type="hidden" id="libStartdate" name="libStartdate" value="">
		<input type="hidden" id="libPeriod" name="libPeriod" value="">
		<input type="hidden" id="libPrice" name="libPrice" value=""> 
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	</form>

</body>

<!-- Scripts -->
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script>
<!-- Scripts END -->

<!-- Template scripts -->
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script>

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
<script src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">

	var tpj=jQuery;
	var revapi2;
	
	tpj(document).ready(function() {
		if(tpj("#rev_slider_2_1").revolution == undefined){
			revslider_showDoubleJqueryError("#rev_slider_2_1");
		}else{
			revapi2 = tpj("#rev_slider_2_1").show().revolution({
				sliderType:"carousel",
				jsFileLocation:"../../revolution/js/",
				sliderLayout:"fullwidth",
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
						hide_under:600,
						hide_onleave:true,
						hide_delay:200,
						hide_delay_mobile:1200,
						tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div>    <div class="tp-arr-img-over"></div>	<span class="tp-arr-titleholder">{{title}}</span> </div>',
						left: {
							h_align:"left",
							v_align:"center",
							h_offset:30,
							v_offset:0
						},
						right: {
							h_align:"right",
							v_align:"center",
							h_offset:30,
							v_offset:0
						}
					}
					,
				},
				carousel: {
					horizontal_align: "center",
					vertical_align: "center",
					fadeout: "off",
					maxVisibleItems: 3,
					infinity: "on",
					space: 0,
					stretch: "off"
				},
				viewPort: {
					enable:true,
					outof:"pause",
					visible_area:"80%"
				},
				responsiveLevels:[1240,1024,778,480],
				gridwidth:[1240,1024,778,480],
				gridheight:[600,600,500,400],
				lazyType:"none",
				parallax: {
					type:"mouse",
					origo:"slidercenter",
					speed:2000,
					levels:[2,3,4,5,6,7,12,16,10,50],
				},
				shadow:5,
				spinner:"off",
				stopLoop:"off",
				stopAfterLoops:-1,
				stopAtSlide:-1,
				shuffle:"off",
				autoHeight:"off",
				hideThumbsOnMobile:"on",
				hideSliderAtLimit:0,
				hideCaptionAtLimit:0,
				hideAllCaptionAtLilmit:0,
				debugMode:false,
				fallbacks: {
					simplifyAll:"off",
					nextSlideOnWindowFocus:"off",
					disableFocusListener:false,
				}
			});
		}
	});	/*ready*/

	$('#basicuse').jflickrfeed({
		limit: 6,
		qstrings: {
		id: '133294431@N08'
	},
		itemTemplate: 
		'<li>' +
		'<a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a>' +
		'</li>'
	});

    $(window).load(function(){
      setTimeout(function(){
        $('.loader-live').fadeOut();
      },1000);
    })


	let author = null;
	
	<sec:authorize access="isAuthenticated()">
		author = '<sec:authentication property="principal.AUTHOR"/>';
	</sec:authorize>

	$('#registerBtn').on("click", function() {
		if (author == 'ADMIN') {
			alert('관리자 계정은 등록할 수 없습니다.');
		} else {
			$('#libModal').modal('show');
		}
		
	});
	
	
	// 날짜 선택 DatePicker
	$('#startdate').datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
		prevText : '이전 달',
		nextText : '다음 달',
		minDate : 0,
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});

	// 금액
	$("#period").on("change", function() {

		var period = $(this).val();
		var price = "";

		if (period == "1") {
			price = 1000;
		} else if (period == "7") {
			price = 5000;
		} else if (period == "30") {
			price = 15000;
		} else if (period == "90") {
			price = 35000;
		} else if (period == "180") {
			price = 55000;
		} else if (period == "365") {
			price = 99000;
		}

		$('#price').val(price);

	});
	
	// 이미지
    $(".thumbs a").click(function() {           					 //클릭 시
        var imgPath = $(this).attr("href");     				  //클릭한 a태그의 하이퍼링크를 변수저장
        $("#mainImg>img").attr({src:imgPath}) 					  //메인 이미지의 주소 속성에 할당
        				 .hide()                                 //fadein()효과를 보여주기 위해 숨김처리
        				 .fadeIn();                              //fadeIn()
        return false;                           //<a> 의 본래기능 (하이퍼링크) 작동방지
    });

	
	// 결제버튼 클릭 시
	$('#payBtn').on('click', function() {
		
		let houseInfo = null;
		let phone = null;
		let name = null;
		let price = $('#price').val();
		
		$('#libStartdate').val($('#startdate').val());
		$('#libPeriod').val($('#period').val());
		$('#libPrice').val(price);
		
		<sec:authorize access="isAuthenticated()">
			houseInfo = '<sec:authentication property="principal.HOUSEINFO"/>';
			phone = '<sec:authentication property="principal.PHONE"/>';
			name = '<sec:authentication property="principal.HOUSEINFO" />';
		</sec:authorize>
		
		if ($('#libStartdate').val() != "" && $('#libPeriod').val() != "") {
			paymentFnc(name, houseInfo, phone);
		} else {
			alert('양식을 모두 입력해 주세요.');
		}
		
	});

	function paymentFnc(name, houseInfo, phone) {

		IMP.init('imp57655457');
		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '독서실_' + houseInfo,
			buyer_name : name,
			buyer_tel : phone,
			buyer_email : "nue.an.2@gmail.com",
			amount : $('#price').val(), //판매 가격
			}, function(rsp) {
					if(rsp.success){
			        	alert("결제가 완료되었습니다."); 
			        	$('#payNo').val(rsp.merchant_uid);
			        	$('#payType').val(rsp.pay_method);
			        	$('#payStatus').val(rsp.status);
			        	$('#impUid').val(rsp.imp_uid);
			      		frm.submit();
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					alert(msg);
				}
			
		})
	}
   	
</script>

</html>