<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관리비</title>
</head>
<style>
/* a태그 색깔 없애기 */
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

.tabstyle-9 .responsive-tabs li a {
	line-height: 1px;
}
</style>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="#">Home</a></li>
							<li><a href="#">Shortcodes</a></li>
							<li class="current"><a href="#">Pricing Badges</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
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
						<h4 class="uppercase font-weight-7 less-mar-1">관리비</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">관리비를 확인하세요.</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
				
				<div class="col-md-12 margin-bottom-3">
					<div class="text-box white padding-4">
						ddkdkdkdk

					</div>
				</div>

				<div class="col-md-6">
					<div class="text-box white padding-4 margin-bottom-3">
						<h5 class="font-weight-7 text-gray">{}월 관리비</h5>
						<h1 class="font-weight-5">{}100,000</h1>
						<div class="col-md-6">
							<h6 class="">전월 대비</h6>
						</div>
						<div class="col-md-6">
							<h6>
								<!-- 감소 증가, 빨간색 파란색 -->
								<span class="font-weight-7">몇원</span><span class="">감소</span>
							</h6>
						</div>
						<div class="col-md-6">
							<h6 class="">관리비 평균</h6>
						</div>
						<div class="col-md-6">
							<h6>
								<!-- 감소 증가, 빨간색 파란색 -->
								<span class="font-weight-7">123,456</span> 원<span class=""></span>
							</h6>
						</div>
						<br>
						<div class="col-md-12">
							<h6>{} 님! 이번달은 관리비가 조금 많이 나오셨군요!</h6>
						</div>
						<br> <br> <br>
						<!--end item-->

						<div class="col-md-12">
							<h5 class="nopadding">상세 내역</h5>
							<ul class="opening-list font-weight-7">
								<li><span class="pull-left">일반관리비</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">난방/온수</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">전기료</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">수도료</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">TV 수신료</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">청소비</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">경비비</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">승강기 유지비</span> <span
									class="pull-right">06.00 - 22.00</span></li>
								<li><span class="pull-left">생활 폐기물 수수료</span> <span
									class="pull-right">06.00 - 22.00</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 text-center margin-bottom">
					<div class="text-box white padding-4">
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; inset: 0px;"></iframe>

						<h4 class="uppercase">Pie Chart</h4>
						<br>

						<canvas id="myPieChart" width="555" height="555"
							style="display: block; width: 555px; height: 555px;"></canvas>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-6 text-center margin-bottom">
					<div class="text-box white padding-4">
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; inset: 0px;"></iframe>

						<h4 class="uppercase">Line Chart</h4>
						<br>

						<canvas id="myLineChart" width="400" height="400"
							style="display: block; width: 400px; height: 400px;"></canvas>
					</div>
				</div>
				<div class="col-md-6 text-center margin-bottom">
					<div class="text-box white padding-4">
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; inset: 0px;"></iframe>

						<h4 class="uppercase">Pie Chart</h4>
						<br>

						<canvas id="myPieChart" width="555" height="555"
							style="display: block; width: 555px; height: 555px;"></canvas>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 text-center">
					<div class="clearfix"></div>
					<br> <br>


					<div class="col-md-12 nopadding">
						<div class="tab-navbar-main tabstyle-9">
							<ul class="responsive-tabs">
								<li class=""><a href="#example-1-tab-1" target="_self">
										restaurants</a></li>
								<li class=""><a href="#example-1-tab-2" target="_self">
										Hotel Rooms</a></li>
								<li class=""><a href="#example-1-tab-3" target="_self">
										Spa &amp; Massage</a></li>
								<li class="active"><a href="#example-1-tab-4"
									target="_self"> Bar</a></li>
								<li class=""><a href="#example-1-tab-5" target="_self">
										sport-club</a></li>
								<li class=""><a href="#example-1-tab-6" target="_self">
										Events</a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="tab-content-holder-9">
						<div class="responsive-tabs-content">
							<div id="example-1-tab-1" class="responsive-tabs-panel"
								style="display: none;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-global"></span> <br>
											restaurants</strong>
									</p>
								</div>
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="tabstyle-9-feature-box-2">
										<iframe class="chartjs-hidden-iframe"
											style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; inset: 0px;"></iframe>

										<h4 class="uppercase">Chart</h4>
										<br>

										<canvas id="myChart" width="400" height="400"
											style="display: block; width: 400px; height: 400px;"></canvas>
									</div>
								</div>
								<div class="col-md-2"></div>
								<!--end item-->

								<div class="col-md-5 col-sm-5 col-xs-12 margin-bottom">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-10.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->
							</div>
							<!--end panel 1-->

							<div id="example-1-tab-2" class="responsive-tabs-panel"
								style="display: none;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-layers"></span> <br>
											Hotel Rooms</strong>
									</p>
								</div>
								<div class="col-md-5">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-11.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->

								<div class="col-md-7 col-sm-7 col-xs-12 margin-bottom">
									<div class="tabstyle-9-feature-box-2">
										<h4 class="uppercase">Hotel Rooms</h4>
										<h6 class="raleway">Lorem ipsum dolor sit amet
											consectetuer adipiscing elit Suspendisse et justo Praesent
											mattis commodo augue Aliquam ornare hendrerit augue</h6>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor sit amet
											consectetuer adipiscing eli Suspendisse et justo sit amet
											justo elite.</p>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor.</p>
										<br> <a class="read-more" href="#">Read more &nbsp;
											&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<!--end item-->

							</div>
							<!--end panel 2-->

							<div id="example-1-tab-3" class="responsive-tabs-panel"
								style="display: none;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-desktop"></span> <br>
											Spa &amp; Massage</strong>
									</p>
								</div>
								<div class="col-md-7">
									<div class="tabstyle-9-feature-box-2">
										<h4 class="uppercase">Spa &amp; Massage</h4>
										<h6 class="raleway">Lorem ipsum dolor sit amet
											consectetuer adipiscing elit Suspendisse et justo Praesent
											mattis commodo augue Aliquam ornare hendrerit augue</h6>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor sit amet
											consectetuer adipiscing eli Suspendisse et justo sit amet
											justo elite.</p>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor.</p>
										<br> <a class="read-more" href="#">Read more &nbsp;
											&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<!--end item-->

								<div class="col-md-5">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-12.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->
							</div>
							<!--end panel 3-->

							<div id="example-1-tab-4" class="responsive-tabs-panel"
								style="display: block;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-envelope"></span> <br>
											Bar</strong>
									</p>
								</div>
								<div class="col-md-7">
									<div class="tabstyle-9-feature-box-2">
										<h4 class="uppercase">Bar &amp; Restaurant</h4>
										<h6 class="raleway">Lorem ipsum dolor sit amet
											consectetuer adipiscing elit Suspendisse et justo Praesent
											mattis commodo augue Aliquam ornare hendrerit augue</h6>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor sit amet
											consectetuer adipiscing eli Suspendisse et justo sit amet
											justo elite.</p>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor.</p>
										<br> <a class="read-more" href="#">Read more &nbsp;
											&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<!--end item-->

								<div class="col-md-5">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-13.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->
							</div>
							<!--end panel 4-->

							<div id="example-1-tab-5" class="responsive-tabs-panel"
								style="display: none;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-briefcase"></span> <br>
											sport-club</strong>
									</p>
								</div>
								<div class="col-md-7">
									<div class="tabstyle-9-feature-box-2">
										<h4 class="uppercase">Sport Club</h4>
										<h6 class="raleway">Lorem ipsum dolor sit amet
											consectetuer adipiscing elit Suspendisse et justo Praesent
											mattis commodo augue Aliquam ornare hendrerit augue</h6>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor sit amet
											consectetuer adipiscing eli Suspendisse et justo sit amet
											justo elite.</p>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor.</p>
										<br> <a class="read-more" href="#">Read more &nbsp;
											&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<!--end item-->

								<div class="col-md-5">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-14.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->
							</div>
							<!--end panel 5-->

							<div id="example-1-tab-6" class="responsive-tabs-panel"
								style="display: none;">
								<div class="responsive-tab-title ttitle">
									<p>
										<strong><span class="icon-lock"></span> <br>
											Events</strong>
									</p>
								</div>
								<div class="col-md-7">
									<div class="tabstyle-9-feature-box-2">
										<h4 class="uppercase">Events &amp; Partys</h4>
										<h6 class="raleway">Lorem ipsum dolor sit amet
											consectetuer adipiscing elit Suspendisse et justo Praesent
											mattis commodo augue Aliquam ornare hendrerit augue</h6>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor sit amet
											consectetuer adipiscing eli Suspendisse et justo sit amet
											justo elite.</p>
										<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit
											Suspendisse et justo Praesent mattis commodo augue Aliquam
											ornare hendrerit augue Cras Lorem ipsum dolor.</p>
										<br> <a class="read-more" href="#">Read more &nbsp;
											&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<!--end item-->

								<div class="col-md-5">
									<div class="tabstyle-9-feature-box">
										<img src="images/hl-15.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<!--end item-->
							</div>
						</div>
					</div>
					<!--end column-->

				</div>
			</div>
		</div>




	</section>






	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fe-feature-box-11 text-center margin-bottom">
						<h1 class="text-big">249</h1>
						<div class="line"></div>
						<h5 class="uppercase text-small">Projects</h5>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fe-feature-box-11 text-center margin-bottom">
						<h1 class="text-big">190</h1>
						<div class="line"></div>
						<h5 class="uppercase text-small">Compleated</h5>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fe-feature-box-11 text-center active">
						<h1 class="text-big">180</h1>
						<div class="line"></div>
						<h5 class="uppercase text-small">Happy Clients</h5>
					</div>
				</div>
				<!--end item-->


				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fe-feature-box-11 text-center">
						<h1 class="text-big">89</h1>
						<div class="line"></div>
						<h5 class="uppercase text-small">Our awards</h5>
					</div>
				</div>
				<!--end item-->

			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

	<section>
		<div class="divider-line solid light"></div>
		<div class="container">
			<div class="row sec-padding">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container text-center">
						<h6 class="uppercase less-mar-1 text-gyellow">Our Team</h6>
						<h3 class="uppercase font-weight-7 less-mar-1">Meet Our Team</h3>
						<div class="clearfix"></div>
						<div class="fe-title-line-1"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="fe-feature-box-12 margin-bottom">
						<div class="img-box">
							<img src="http://placehold.it/800x800" alt=""
								class="img-responsive" />
						</div>
						<div class="text-box text-center">
							<h5 class="uppercase less-mar-1">Madison</h5>
							<span class="text-gyellow">Tax Adviser</span> <br /> <br />
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Suspendisse et justo et Praesent Lorem ipsum dolor sit amet</p>
							<br />
							<ul class="social-icons">
								<li><a target="_blank"
									href="https://www.facebook.com/codelayers"><i
										class="fa fa-facebook"></i></a></li>
								<li><a target="_blank"
									href="https://twitter.com/codelayers"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--end item-->


				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="fe-feature-box-12 margin-bottom">
						<div class="img-box">
							<img src="http://placehold.it/800x800" alt=""
								class="img-responsive" />
						</div>
						<div class="text-box text-center">
							<h5 class="uppercase less-mar-1">Alexander</h5>
							<span class="text-gyellow">Financial Adviser</span> <br /> <br />
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Suspendisse et justo et Praesent Lorem ipsum dolor sit amet</p>
							<br />
							<ul class="social-icons">
								<li><a target="_blank"
									href="https://www.facebook.com/codelayers"><i
										class="fa fa-facebook"></i></a></li>
								<li><a target="_blank"
									href="https://twitter.com/codelayers"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--end item-->

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="fe-feature-box-12">
						<div class="img-box">
							<img src="http://placehold.it/800x800" alt=""
								class="img-responsive" />
						</div>
						<div class="text-box text-center">
							<h5 class="uppercase less-mar-1">Addison</h5>
							<span class="text-gyellow">Savings Adviser</span> <br /> <br />
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Suspendisse et justo et Praesent Lorem ipsum dolor sit amet</p>
							<br />
							<ul class="social-icons">
								<li><a target="_blank"
									href="https://www.facebook.com/codelayers"><i
										class="fa fa-facebook"></i></a></li>
								<li><a target="_blank"
									href="https://twitter.com/codelayers"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--end item-->

			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->
</body>
<script>
	var ctx = document.getElementById("myLineChart");
	var myLineChart = Chart.Line(ctx, {
		type : 'line',
		data : {
			labels : [ "January", "February", "March", "April", "May", "June",
					"July" ],
			datasets : [ {
				label : "My First dataset",
				fill : false,
				lineTension : 0.1,
				backgroundColor : "rgba(75,192,192,0.4)",
				borderColor : "rgba(75,192,192,1)",
				borderCapStyle : 'butt',
				borderDash : [],
				borderDashOffset : 0.0,
				borderJoinStyle : 'miter',
				pointBorderColor : "rgba(75,192,192,1)",
				pointBackgroundColor : "#fff",
				pointBorderWidth : 1,
				pointHoverRadius : 5,
				pointHoverBackgroundColor : "rgba(75,192,192,1)",
				pointHoverBorderColor : "rgba(220,220,220,1)",
				pointHoverBorderWidth : 2,
				pointRadius : 1,
				pointHitRadius : 10,
				data : [ 65, 59, 80, 81, 56, 55, 40 ],
			} ]
		},

	});
</script>

<script>
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [ "January", "February", "March", "April", "May", "June",
					"July" ],
			datasets : [ {
				label : "My First dataset",
				backgroundColor : "rgba(255,99,132,0.2)",
				borderColor : "rgba(255,99,132,1)",
				borderWidth : 1,
				hoverBackgroundColor : "rgba(255,99,132,0.4)",
				hoverBorderColor : "rgba(255,99,132,1)",
				data : [ 65, 59, 80, 81, 56, 55, 40 ],
			} ]
		},
		options : {
			scales : {
				yAxes : [ {
					ticks : {
						beginAtZero : true
					}
				} ]
			}
		}
	});
</script>

<script>
	var ctx = document.getElementById("myPieChart");
	var myPieChart = new Chart(ctx, {
		type : 'pie',
		data : {
			labels : [ "Red", "Blue", "Yellow" ],
			datasets : [ {
				data : [ 300, 50, 100 ],
				backgroundColor : [ "#FF6384", "#36A2EB", "#FFCE56" ],
				hoverBackgroundColor : [ "#FF6384", "#36A2EB", "#FFCE56" ]
			} ]
		},

	});
</script>

</html>