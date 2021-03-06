<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
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
	
	th, tr {
		text-align: center;
	}
	
	.tab-content-style-7 {
		background-color: #EEEEEE;
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
</style>
</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(${pageContext.request.contextPath }/resources/images/header/νΈμμμ€.jpg);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000"
						alt="" />
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
							<li><a href="${pageContext.request.contextPath}/facility/facilityList">νΈμ	μμ€</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/facility/gym">νΌνΈλμ€ μΌν°</a></li>
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
						<h1 class="uppercase font-weight-7 less-mar-1">νΌνΈλμ€ μΌν°</h1>
						<div class="clearfix"></div>
						<p class="by-sub-title"></p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
			</div>
		</div>


		<%-- <section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 margin-bottom">
					<div id="mainImg">
						<img src="${pageContext.request.contextPath}/resources/images/gym_1.jpg" alt="ν¬μ€μ₯" class="img-responsive">
					</div>
				</div>
				<div class="col-md-6 margin-bottom">
					<h4 class="font-weight-4">
						LHmianμ νΌνΈλμ€μλ λ€μν μ’λ₯μ μ΄λ κΈ°κ΅¬κ° μ€λΉλμ΄ μμ΅λλ€.<br>
						ν νΈμΈ μ λ§μ κ°μνκ³ , μ² μ λ§μ κ³΅κΈ°λ₯Ό λ§μλ©° λͺΈ μμ μλμ§λ₯Ό λμ λ³΄μ­μμ€.
					</h4>
					<br />
					<ul class="iconlist gyellow">
						<li><i class="fa fa-check"></i> 
							μΎμ ν νκ²½
						</li>
						<li><i class="fa fa-check"></i> 
							μ²΄κ³μ μΈ κ΄λ¦¬
						</li>
						<li><i class="fa fa-check"></i> 
							λ€μν μμ€
						</li>
						<li><i class="fa fa-check"></i> 
							λ€μν μμ κ²½λ ₯ 
						</li>
					</ul>
					<br><br>
					<button type="button" data-toggle="modal" data-target="#numModal" class="btn btn-dark" style="margin-right: 10px;">μ°λ½μ²</button>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<div class="clearfix"></div> --%>
		<!-- end section -->

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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯1.jpg"
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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯2.jpg"
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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯3.jpg"
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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯4.jpg"
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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯5.jpg"
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
						src="${pageContext.request.contextPath}/resources/images/gym/ν¬μ€μ₯6.jpg"
						style="width: 100%; height: 100%;" alt=""
						class="img-responsive img-circle">
				</div>
				<div class="col-md-7 padding-l110">
					<div class="text-box">
						<h2 style="padding-bottom: 30px;" class="nanum">λ§€μΌλ§€μΌ, κ±΄κ°νκ²</h2>
						<h4 style="line-heignt: 30px;" class="nanum">
							LHmianμ νΌνΈλμ€μλ λ€μν μ’λ₯μ<br /> μ΄λ κΈ°κ΅¬κ° μ€λΉλμ΄ μμ΅λλ€.<br> ν νΈμΈ μ λ§μ
							κ°μνκ³ , μ² μ λ§μ κ³΅κΈ°λ₯Ό λ§μλ©°<br> λͺΈ μμ μλμ§λ₯Ό λμ λ³΄μΈμ.
						</h4>
						<br />
						<ul class="iconlist gyellow" style="font-size: 20px;"
							class="nanum">
							<li><i class="fa fa-check"></i> μΎμ ν νκ²½</li>
							<li><i class="fa fa-check"></i> μ²΄κ³μ μΈ κ΄λ¦¬</li>
							<li><i class="fa fa-check"></i> λ€μν μμ€</li>
							<li><i class="fa fa-check"></i> λ€μν μμ κ²½λ ₯</li>
						</ul>
						<br>
						<div class="divider-line dotted"></div>
						<br>
						<p class="nanum">
							μ΄μμκ° : μ°μ€ λ¬΄ν΄<br> (Break Time : 13:00 ~ 14:00)<br> λ¬Έμ :
							010-1234-1234<br> *μ΄μμκ°μ λ³λλ  μ μμ΅λλ€.
						</p>
					</div>
				</div>
			</div>
		</div>



		<%-- <section class="section-side-image clearfix">
      <div class="img-holder col-md-6 col-sm-3 pull-left">
        <div class="background-imgholder" style="background:url(${pageContext.request.contextPath}/resources/images/gym_1.jpg);"> <img class="nodisplay-image" src="images/wg-3.jpg" alt=""> </div>
      </div>
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5 col-md-offset-7 col-sm-8 col-sm-offset-4 text-inner-5 clearfix align-left">
            <div class="text-box">
              <div class="col-xs-12 text-center nopadding">
                <div class="sec-title-container less-padding-3 text-left">
                  <h2 class="typography-title-6 font-weight-3 playfair"><span>Keep</span>&nbsp;&nbsp;&nbsp;<br> FIT<span class="text-gyellow">.</span></h2>
                  <div class="typography-title-line-3"></div>
                  <div class="clearfix"></div>
                  <div class="wg-title-line-1"><img src="images/wg-2.png" alt=""></div>
                </div>
              </div>
              <div class="clearfix"></div>
              <!--end title-->
              <h1 style="padding-bottom: 30px;">λ§€μΌλ§€μΌ, κ±΄κ°νκ²</h1>
              <h3 style="line-heignt: 30px;">
              	LHmianμ νΌνΈλμ€μλ λ€μν μ’λ₯μ μ΄λ κΈ°κ΅¬κ°<br> μ€λΉλμ΄ μμ΅λλ€.<br>
				ν νΈμΈ μ λ§μ κ°μνκ³ , μ² μ λ§μ κ³΅κΈ°λ₯Ό λ§μλ©°<br> λͺΈ μμ μλμ§λ₯Ό λμ λ³΄μ­μμ€.		
              </h3>
					<ul class="iconlist gyellow" style="font-size: 20px;">
						<li><i class="fa fa-check"></i> 
							μΎμ ν νκ²½
						</li>
						<li><i class="fa fa-check"></i> 
							μ²΄κ³μ μΈ κ΄λ¦¬
						</li>
						<li><i class="fa fa-check"></i> 
							λ€μν μμ€
						</li>
						<li><i class="fa fa-check"></i> 
							λ€μν μμ κ²½λ ₯ 
						</li>
					</ul>
              <br>
              <div class="divider-line dotted"></div>
              <br>
              <p>μ΄μμκ° : μ°μ€ λ¬΄ν΄<br>
				(Break Time : 13:00 ~ 14:00)<br>
				λ¬Έμ : 010-1234-1234<br>
				*μ΄μμκ°μ λ³λλ  μ μμ΅λλ€.</p>
          </div>
        </div>
      </div>
      </div>
    </section> --%>

		<%--	<div class="divider-line solid light"></div>
	<br><br>
 	<section class="moreless-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="thumbs">
						<ul class="ce4-clients noborder grid-cols-6 hover-2">
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/gym_1.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/gym_1.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/gym_2.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/gym_2.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/gym_3.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/gym_3.jpg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/gym_4.jpeg">
									<img src="${pageContext.request.contextPath}/resources/images/gym_4.jpeg" alt="">
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resources/images/gym_5.jpg">
									<img src="${pageContext.request.contextPath}/resources/images/gym_5.jpg" alt="">
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!--end item-->
			</div>
		</div>
	</section> --%>
		<br>
		<br>
		<div class="divider-line solid light"></div>
		<section class="sec-padding">
			<div class="container">
				<div class="row">
					<div class="col-12 margin-bottom">
						<div class="tab-navbar-main-style-7 tabstyle-7">
							<ul class="responsive-tabs">
								<li>
									<div class="tab-navicon">
										<a href="#example-1-tab-1" target="_self">μκ°</a>
									</div>
								</li>
								<li>
									<div class="tab-navicon">
										<a href="#example-1-tab-2" target="_self">νλΌνμ€</a>
									</div>
								</li>
								<li>
									<div class="tab-navicon">
										<a href="#example-1-tab-3" class="no-border" target="_self">μ€νΌλ</a>
									</div>
								</li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="tab-content-style-7">
							<div class="responsive-tabs-content">
								<div id="example-1-tab-1" class="responsive-tabs-panel">
									<div style="margin: 30px 50px 20px;">
										<div style="margin-left: 20px;">
											<div class="title-line-3 align-left"></div>
											<h4 class="uppercase font-weight-7 less-mar-1">μκ° νλ‘κ·Έλ¨
												μκ°ν</h4>
											<br>
										</div>
										<table class="table table-bordered" style="background-color: white;">
											<tr>
												<th>νλ‘κ·Έλ¨</th>
												<th>μ</th>
												<th>ν</th>
												<th>μ</th>
												<th>λͺ©</th>
												<th>κΈ</th>
												<th></th>
											</tr>
											<c:forEach items="${yogaTime}" var="yoga">
												<tr align="center">
													<td>${yoga.gxTitle}</td>
													<td>${yoga.gxMon}</td>
													<td>${yoga.gxTue}</td>
													<td>${yoga.gxWed}</td>
													<td>${yoga.gxThu}</td>
													<td>${yoga.gxFri}</td>
													<td><button type="button"
															class="registerBtn btn btn-default"
															data-gxCode="${yoga.gxCode}"
															data-gxTitle="${yoga.gxTitle}">λ±λ‘</button></td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
								<!--end panel 1-->
								<div class="clearfix"></div>
								<br />
								<div id="example-1-tab-2" class="responsive-tabs-panel">
									<div style="margin: 30px 50px 20px;">
										<div style="margin-left: 20px;">
											<div class="title-line-3 align-left"></div>
											<h4 class="uppercase font-weight-7 less-mar-1">νλΌνμ€ νλ‘κ·Έλ¨ μκ°ν</h4>
											<br>
										</div>
										<table class="table table-bordered"
											style="background-color: white;">
											<tr>
												<th>νλ‘κ·Έλ¨</th>
												<th>μ</th>
												<th>ν</th>
												<th>μ</th>
												<th>λͺ©</th>
												<th>κΈ</th>
												<th></th>
											</tr>
											<c:forEach items="${pilTime}" var="pil">
												<tr align="center">
													<td>${pil.gxTitle}</td>
													<td>${pil.gxMon}</td>
													<td>${pil.gxTue}</td>
													<td>${pil.gxWed}</td>
													<td>${pil.gxThu}</td>
													<td>${pil.gxFri}</td>
													<td><button type="button" class="registerBtn btn btn-default"
															data-gxCode="${pil.gxCode}" data-gxTitle="${pil.gxTitle}">λ±λ‘</button></td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
								<!--end panel 2-->

								<div class="clearfix"></div>
								<br />
								<div id="example-1-tab-3" class="responsive-tabs-panel">
									<div style="margin: 30px 50px 20px;">
										<div style="margin-left: 20px;">
											<div class="title-line-3 align-left"></div>
											<h4 class="uppercase font-weight-7 less-mar-1">μ€νΌλ νλ‘κ·Έλ¨ μκ°ν</h4>
											<br>
										</div>
										<table class="table table-bordered" style="background-color: white;">
											<tr>
												<th>νλ‘κ·Έλ¨</th>
												<th>μ</th>
												<th>ν</th>
												<th>μ</th>
												<th>λͺ©</th>
												<th>κΈ</th>
												<th></th>
											</tr>
											<c:forEach items="${spinTime}" var="spin">
												<tr align="center">
													<td>${spin.gxTitle}</td>
													<td>${spin.gxMon}</td>
													<td>${spin.gxTue}</td>
													<td>${spin.gxWed}</td>
													<td>${spin.gxThu}</td>
													<td>${spin.gxFri}</td>
													<td><button type="button"
															class="registerBtn btn btn-default"
															data-gxCode="${spin.gxCode}"
															data-gxTitle="${spin.gxTitle}">λ±λ‘</button></td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
								<!--end panel 3-->
							</div>
						</div>
						<!--end column-->
					</div>
				</div>
			</div>
		</section>
	</section>


	<!-- The Modal -->
	<div class="modal" id="gymModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="gymForm" name="gymForm" method="post" action="gymPay"
					target="popup_window">
					<!-- Modal Header -->
					<div class="modal-header">
						<div style="margin-left: 20px;">
							<div class="title-line-3 align-left"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">νΌνΈλμ€μΌν° λ±λ‘</h4>
							<p style="font-size: 12px;">* κ²°μ μ·¨μλ κ²°μ ν μκ°μΌλ‘λΆν° 24μκ° μ΄λ΄μλ§ κ°λ₯ν©λλ€.</p>
						</div>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<div style="margin: 0px 20px 0px;">
							<h5>
								<i class="bi bi-person-circle"></i>&nbsp;&nbsp;
								<label for="name">μ΄ λ¦</label>
							</h5>
							<input type="text" id="name" class="form-control" readonly="readonly"
								value="<sec:authentication property="principal.NAME" />"><br>
							<h5>
								<i class="bi bi-patch-exclamation"></i>&nbsp;&nbsp;
								<label for="gxTitle">νλ‘κ·Έλ¨λͺ</label>
							</h5>
							<input type="text" id="gxTitle" name="gxTitle" class="form-control" readonly="readonly"><br>
							<h5>
								<i class="bi bi-calendar-check"></i>&nbsp;&nbsp;
								<label for="startdate">μμ λ μ§</label>
							</h5>
							<input type="text" id="startdate" class="form-control" readonly="readonly" placeholder="λ μ§ μ ν"><br> 
							<span id=""></span>
							<h5>
								<i class="bi bi-calendar-range"></i>&nbsp;&nbsp;
								<label for="period">κΈ° κ°</label>
							</h5>
							<select id="period" name="period" class="form-control">
								<option value="" selected>μ ν</option>
								<option value="90">3λ¬</option>
								<option value="180">6λ¬</option>
								<option value="365">1λ</option>
							</select><br>
							<h5>
								<i class="bi bi-cash-coin"></i>&nbsp;
								<label for="price">κΈμ‘ (μ)</label>
							</h5>
							<input type="text" id="price" name="price" class="form-control" readonly="readonly"> 
							<input type="hidden" id="code" name="code"> 
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						</div>
						<br>
					</div>
					<!-- Modal Footer -->
					<div class="modal-footer">
						<div align="center">
							<button type="button" id="payBtn" class="btn btn-gyellow">κ²°μ νκΈ°</button>
							<button type="button" data-dismiss="modal" class="btn btn-default">μ·¨μ</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal End -->

	<!-- The Modal -->
	<div class="modal" id="numModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">LHmian Fitness Center μ°λ½μ²</h4>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-left: 20px;">μ°λ½μ² : 010-XXXX-XXXX</div>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<div align="right">
						<button type="button" data-dismiss="modal" class="btn btn-dark">λ«κΈ°</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<form action="gymPayComplete" method="post" id="frm">
		<input type="hidden" id="payNo" name="payNo" value=""> 
		<input type="hidden" id="id" name="id" value="<sec:authentication property="principal.username"/>">
		<input type="hidden" id="payType" name="payType" value=""> 
		<input type="hidden" id="payCat" name="payCat" value="ν¬μ€μ₯"> 
		<input type="hidden" id="payStatus" name="payStatus" value=""> 
		<input type="hidden" id="impUid" name="imp_uid" value=""> 
		<input type="hidden" id="gymStartdate" name="gymStartdate" value="">
		<input type="hidden" id="gxCode" name="gxCode" value=""> 
		<input type="hidden" id="gymPeriod" name="gymPeriod" value=""> 
		<input type="hidden" id="gymPrice" name="gymPrice" value=""> 
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


	$(".thumbs a").click(function() {           					 //ν΄λ¦­ μ
	    var imgPath = $(this).attr("href");     				  //ν΄λ¦­ν aνκ·Έμ νμ΄νΌλ§ν¬λ₯Ό λ³μμ μ₯
	    $("#mainImg>img").attr({src:imgPath}) 					  //λ©μΈ μ΄λ―Έμ§μ μ£Όμ μμ±μ ν λΉ
	    				 .hide()                                 //fadein()ν¨κ³Όλ₯Ό λ³΄μ¬μ£ΌκΈ° μν΄ μ¨κΉμ²λ¦¬
	    				 .fadeIn();                              //fadeIn()
	    return false;                           //<a> μ λ³ΈλκΈ°λ₯ (νμ΄νΌλ§ν¬) μλλ°©μ§
	});
	
   	$('#doPay').on('click', function() {
   		window.open("", "popup_window", "width=500, height=700, scrollbars=yes");
   	});
   	
	// λ μ§ μ ν DatePicker
	$("#startdate").datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
		prevText : 'μ΄μ  λ¬',
		nextText : 'λ€μ λ¬',
		minDate: 0,
		monthNames : [ '1μ', '2μ', '3μ', '4μ', '5μ', '6μ', '7μ', '8μ', '9μ',
				'10μ', '11μ', '12μ' ],
		monthNamesShort : [ '1μ', '2μ', '3μ', '4μ', '5μ', '6μ', '7μ', '8μ',
				'9μ', '10μ', '11μ', '12μ' ],
		dayNames : [ 'μΌ', 'μ', 'ν', 'μ', 'λͺ©', 'κΈ', 'ν ' ],
		dayNamesShort : [ 'μΌ', 'μ', 'ν', 'μ', 'λͺ©', 'κΈ', 'ν ' ],
		dayNamesMin : [ 'μΌ', 'μ', 'ν', 'μ', 'λͺ©', 'κΈ', 'ν ' ],
		showMonthAfterYear : true,
		yearSuffix : 'λ'
	});
	
	// κΈμ‘
	$("#period").on("change", function() {
	
		var period = $(this).val();
		var price = "";
	
		if (period == "90") {
			price = 30000;
		} else if (period == "180") {
			price = 50000;
		} else if (period == "365") {
			price = 80000;
		}
	
		$('#price').val(price);
	});

	let author = null;
	
	<sec:authorize access="isAuthenticated()">
		author = '<sec:authentication property="principal.AUTHOR"/>';
	</sec:authorize>
	
	// λ±λ‘λ²νΌ ν΄λ¦­ μ
	$(document).on('click', '.registerBtn', function() {
		if (author == 'ADMIN') {
			alert('κ΄λ¦¬μ κ³μ μ λ±λ‘ν  μ μμ΅λλ€.');
		} else {
			$('#gxTitle').val($(this).attr("data-gxTitle"));
			$('#code').val($(this).attr("data-gxCode"));
			$('#gymModal').modal('show');
		}
	});
	
	// κ²°μ λ²νΌ ν΄λ¦­ μ
	$('#payBtn').on('click', function() {
		
		let name = null;
		let houseInfo = null;
		let phone = null;
		let price = $('#price').val();
		
		$('#gymStartdate').val($('#startdate').val());
		$('#gxCode').val($('.registerBtn').attr('data-gxCode'));
		$('#gymPeriod').val($('#period').val());
		$('#gymPrice').val(price);
		
		<sec:authorize access="isAuthenticated()">
			houseInfo = '<sec:authentication property="principal.HOUSEINFO"/>';
			phone = '<sec:authentication property="principal.PHONE"/>';
			name = '<sec:authentication property="principal.HOUSEINFO" />';
		</sec:authorize>
		
		
		if ($('#gymStartdate').val() != "" && $('#gymPeriod').val() != "") {
			paymentFnc(name, houseInfo, phone);
		} else {
			alert('μμμ λͺ¨λ μλ ₯ν΄ μ£ΌμΈμ.');
		}
		
	});

	function paymentFnc(name, houseInfo, phone) {

		IMP.init('imp57655457');
		IMP.request_pay({
			pg : 'inicis', // version 1.1.0λΆν° μ§μ.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'νΌνΈλμ€_' + houseInfo,
			buyer_name : name,
			buyer_tel : phone,
			buyer_email : "nue.an.2@gmail.com",
			amount : $('#price').val(), //νλ§€ κ°κ²©
			}, function(rsp) {
					if(rsp.success){
			        	alert("κ²°μ κ° μλ£λμμ΅λλ€."); 
			        	$('#payNo').val(rsp.merchant_uid);
			        	$('#payType').val(rsp.pay_method);
			        	$('#payStatus').val(rsp.status);
			        	$('#impUid').val(rsp.imp_uid);
			      		frm.submit();
				} else {
					var msg = 'κ²°μ μ μ€ν¨νμμ΅λλ€.';
					msg += 'μλ¬λ΄μ© : ' + rsp.error_msg;
					alert(msg);
				}
			
		})
	}

</script>

</html>
