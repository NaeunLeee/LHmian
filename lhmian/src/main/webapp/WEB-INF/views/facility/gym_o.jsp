<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/yoga.css" type="text/css">

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
						<div class="overlay">
							<div class="text text-center">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>

	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/facility/facilityList">편의 시설</a></li>
							<li class="current"><a href="#">헬스장</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-tpadding-2">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">헬스장</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">LHmian의 자랑, 근손실없는헬스장 입니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
			</div>
		</div>
	</section>

	<div class="wrapper-boxed">
		<div class="site-wrapper">
						<section class="sec-padding section-light">
							<div class="container">
								<div class="row">
									<!--end title-->

									<div class="col-md-4 col-xs-12">
										<div class="ya-feature-box-1 margin-bottom">
											<div class="img-box">
												<div class="time">6 am - 7 am</div>
												<img src="http://placehold.it/700x750" alt="" class="img-responsive" />
											</div>
											<div class="text-box padding-4">
												<h5 class="uppercase title">요가</h5>
												<div class="title-line"></div>
												<p>Lorem ipsum dolor sit Suspendisse consectetuer sit
													amet et justo</p>
												<br>
												<a class="btn btn-medium btn-dark btn-anim-1 uppercase" data-toggle="modal" data-target="#yogaModal">
													<i class="fa fa-graduation-cap" aria-hidden="true"></i> 
													<span>등 록</span>
												</a>
											</div>
										</div>
									</div>
									<!--end item-->

									<div class="col-md-4 col-xs-12">
										<div class="ya-feature-box-1 margin-bottom">
											<div class="img-box">
												<div class="time">7 am - 8 am</div>
												<img src="http://placehold.it/700x750" alt="" class="img-responsive" />
											</div>
											<div class="text-box padding-4">
												<h5 class="uppercase title">필라테스</h5>
												<div class="title-line"></div>
												<p>Lorem ipsum dolor sit Suspendisse consectetuer sit
													amet et justo</p>
												<br>
												<a class="btn btn-medium btn-dark btn-anim-1 uppercase" data-toggle="modal" data-target="#pilModal">
													<i class="fa fa-graduation-cap" aria-hidden="true"></i> 
													<span>등 록</span>
												</a>
											</div>
										</div>
									</div>
									<!--end item-->

									<div class="col-md-4 col-xs-12">
										<div class="ya-feature-box-1 active margin-bottom">
											<div class="img-box">
												<div class="time">8 am - 9 am</div>
												<img src="http://placehold.it/700x750" alt="" class="img-responsive" />
											</div>
											<div class="text-box padding-4">
												<h5 class="uppercase title">스피닝</h5>
												<div class="title-line"></div>
												<p>Lorem ipsum dolor sit Suspendisse consectetuer sit
													amet et justo</p>
												<br>
												<a class="btn btn-medium btn-dark btn-anim-1 uppercase" data-toggle="modal" data-target="#spinModal">
													<i class="fa fa-graduation-cap" aria-hidden="true"></i> 
													<span>등 록</span>
												</a>
											</div>
										</div>
									</div>
									<!--end item-->
								</div>
							</div>
						</section>
						<div class="clearfix"></div>
						<!-- end section -->
					</div>
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- end section -->


			<!-- 요가 시간표 모달 -->
			<div class="modal" id="yogaModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="modal-header">
							<h5 class="modal-title">요가</h5>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<div>
								<table border="1">
									<tr align="center">
										<th>프로그램</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
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
											<td><button type="button">등록</button></td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>

			<!-- 필라테스 시간표 모달 -->
			<div class="modal" id="pilModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="modal-header">
							<h5 class="modal-title">필라테스</h5>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<div>
								<table border="1">
									<tr align="center">
										<th>프로그램</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
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
											<td><button type="button">등록</button></td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>

			<!-- 스피닝 시간표 모달 -->
			<div class="modal" id="spinModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="modal-header">
							<h5 class="modal-title">스피닝</h5>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<div>
								<table border="1">
									<tr align="center">
										<th>프로그램</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
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
											<td><button type="button">등록</button></td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
	</div>
</div>

			<br>
</body>

<script>
	
</script>

</html>