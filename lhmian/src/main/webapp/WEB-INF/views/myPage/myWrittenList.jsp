<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}

th {
	text-align: center;
	background-color: #EEEEEE;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

table {
	background-color: white;
}

.tabstyle-8 {
	width: 50%;
	margin: auto;
}

.tabstyle-8 .responsive-tabs li {
	background-color: #f5f5f5;
}

.tabstyle-8 .responsive-tabs li a {
	margin: 0px 10px 0px;
	padding: 10px;
}

.btn.appstore.white {
	color: #101010;
	background-color: #fff;
}
.btn.appstore.white:hover {
	color: #fff;
	background-color: #101010;
}

</style>

</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(http://placehold.it/1500x1000);">
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
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이 페이지</a></li>
							<li class="current"><a href="#">작성글 조회</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="sec-padding section-light">
		<div class="container">
				<div class="row">
					<div class="col-xs-12 nopadding">
						<div class="sec-title-container-padding-topbottom text-center">
							<div class="pl-title-line-1"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">작성글 조회</h4>
							<div class="clearfix"></div>
							<p class="by-sub-title">작성한 글을 조회하는 페이지...</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			<div class="row sec-padding">
				<div class="col-md-12">
					<div class="col-md-12 col-centered">
						<div class="tab-navbar-main bborder tabstyle-8">
							<ul class="responsive-tabs">
								<li>
									<a href="#example-1-tab-1" class="btn btn-white" target="_self">
										<i class="bi bi-people-fill" style="margin-right: 10px;"></i>커뮤니티
									</a>
								</li>
								<li>
									<a href="#example-1-tab-2" class="btn btn-white" target="_self">
										<i class="bi bi-megaphone" style="margin-right: 10px;"></i>민 원
									</a>
								</li>
								<li>
									<a href="#example-1-tab-3" class="btn appstore white" target="_self">
										<i class="bi bi-patch-check" style="margin-right: 10px;"></i>입주자 대표회의
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
					<div>
						<div class="responsive-tabs-content more-mar-1">
							<div id="example-1-tab-1" class="responsive-tabs-panel">
								<div class="responsive-tab-title ttitle"></div>
								<div class="col-md-5">
									<div class="tabstyle-8-feature-box">
										<img src="${pageContext.request.contextPath}/resources/images/ce4-47.png" alt="" class="img-responsive" />
									</div>
								</div>
								<!--end item-->
								<div class="col-md-7">
									<div class="tabstyle-8-feature-box-2">
										<h4 class="uppercase">responsive design</h4>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit. Suspendisse et justo. Praesent mattis commodo augue
											Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus
											a est Curabitur eget orci Cras laoreet ligula.</p>
										<br />
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Pellentesque sit amet augue eu orci
												cursus fermentum vestibulum in dolor.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Maecenas fringilla orci ultrices nulla
												consectetur, id suscipit erat vulputate.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Nullam efficitur velit ut interdum
												pellentesque.</div>
										</div>
										<!--end item-->
	
										<div class="clearfix"></div>
										<br /> <a class="btn btn-dark-3 uppercase" href="#">Read
											more</a> <a class="btn btn-gyellow uppercase" href="#">Buy Now</a>
									</div>
								</div>
								<!--end item-->
	
							</div>
							<!--end panel 1-->
	
							<div id="example-1-tab-2" class="responsive-tabs-panel">
								<div class="responsive-tab-title ttitle"></div>
								<div class="col-md-5">
									<div class="tabstyle-8-feature-box">
										<img src="images/ce4-47.png" alt="" class="img-responsive" />
									</div>
								</div>
								<!--end item-->
								<div class="col-md-7">
									<div class="tabstyle-8-feature-box-2">
										<h4 class="uppercase">Layered PSD Files</h4>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit. Suspendisse et justo. Praesent mattis commodo augue
											Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus
											a est Curabitur eget orci Cras laoreet ligula.</p>
										<br />
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Pellentesque sit amet augue eu orci
												cursus fermentum vestibulum in dolor.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Maecenas fringilla orci ultrices nulla
												consectetur, id suscipit erat vulputate.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Nullam efficitur velit ut interdum
												pellentesque.</div>
										</div>
										<!--end item-->
	
										<div class="clearfix"></div>
										<br /> <a class="btn btn-dark-3 uppercase" href="#">Read
											more</a> <a class="btn btn-gyellow uppercase" href="#">Buy Now</a>
									</div>
								</div>
								<!--end item-->
	
							</div>
							<!--end panel 2-->
	
							<div id="example-1-tab-3" class="responsive-tabs-panel">
								<div class="responsive-tab-title ttitle"></div>
								<div class="col-md-5">
									<div class="tabstyle-8-feature-box">
										<img src="images/ce4-47.png" alt="" class="img-responsive" />
									</div>
								</div>
								<!--end item-->
								<div class="col-md-7">
									<div class="tabstyle-8-feature-box-2">
										<h4 class="uppercase">Branding design</h4>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit. Suspendisse et justo. Praesent mattis commodo augue
											Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus
											a est Curabitur eget orci Cras laoreet ligula.</p>
										<br />
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Pellentesque sit amet augue eu orci
												cursus fermentum vestibulum in dolor.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Maecenas fringilla orci ultrices nulla
												consectetur, id suscipit erat vulputate.</div>
										</div>
										<!--end item-->
	
										<div class="iconlist-2">
											<div class="icon dark">
												<i class="fa fa-check text-gyellow"></i>
											</div>
											<div class="text">Nullam efficitur velit ut interdum
												pellentesque.</div>
										</div>
										<!--end item-->
	
										<div class="clearfix"></div>
										<br /> <a class="btn btn-dark-3 uppercase" href="#">Read
											more</a> <a class="btn btn-gyellow uppercase" href="#">Buy Now</a>
									</div>
								</div>
								<!--end item-->
	
							</div>
							<!--end panel 3-->
						</div>
				</div>
			</div>
		</div>
	</div>

	</section>

</body>

<script>
	var actionForm = $('#actionForm');

	$('#pageBtn a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});
</script>

</html>