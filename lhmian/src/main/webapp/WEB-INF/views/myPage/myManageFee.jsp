<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관리비</title>
</head>
<style>

.tabstyle-9 .responsive-tabs li a {
	line-height: 1px;
}

.bigger {
	color: #FA612E;
}

.smaller {
	color: #4B91FA;
}

.select-box {
	width: 140px;
	font-size: 16px;
}

.select-box select {
	background-color: white;
	width: 140px;
}

.select-box select:hover {
	background: white;
}

.select-box select:focus {
	background: white;
}
</style>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이 페이지</a></li>
							<li class="current"><a href="#">관리비 조회</a></li>
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


				<div class="col-md-6">
					<div class="text-box white padding-4 margin-bottom-3">
						<div class="col-md-6">
							<h4 id="month" class="font-weight-7 text-gray"></h4>
						</div>
						<div class="col-md-6 text-right">
							<div class="select-box">
								<select id="dateSelectBox">
									<c:forEach var="list" items="${list }">
										<option value="${list.mfDate }">20${list.year }년
											${list.month }월</option>
									</c:forEach>
								</select>
								<div class="select__arrow"></div>
							</div>
						</div>
						<div class="col-md-12 margin-bottom-3">
							<h1 id="mfTotal" class="font-weight-5" style="margin-top: 10px;"></h1>
						</div>
						<!--end item-->

						<div class="col-md-12">
							<ul class="opening-list" style="font-size: 18px;">
								<li><span class="pull-left">전월 대비</span> <span
									id="compareTotal" class="pull-right font-weight-7">dddd</span></li>
								<li><span class="pull-left">아파트 평균 관리비</span> <span
									id="mfAvg" class="pull-right"></span></li>
								<li><span class="pull-left">일반관리비</span> <span id="mfFee"
									class="pull-right"></span></li>
								<li><span class="pull-left">난방/온수</span> <span id="mfHeat"
									class="pull-right"></span></li>
								<li><span class="pull-left">전기료</span> <span id="mfElect"
									class="pull-right"></span></li>
								<li><span class="pull-left">수도료</span> <span id="mfWater"
									class="pull-right"></span></li>
								<li><span class="pull-left">TV 수신료</span> <span id="mfTv"
									class="pull-right"></span></li>
								<li><span class="pull-left">청소비</span> <span id="mfClean"
									class="pull-right"></span></li>
								<li><span class="pull-left">경비비</span> <span
									id="mfSecurity" class="pull-right"></span></li>
								<li><span class="pull-left">승강기 유지비</span> <span
									id="mfElevator" class="pull-right"></span></li>
								<li><span class="pull-left">생활 폐기물 수수료</span> <span
									id="mfTrash" class="pull-right"></span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 margin-bottom-3">

					<div class="text-box white padding-3">
						<div class="col-md-7" style="height: 44.84px; align-self: center">
							<h4 class="font-weight-5 col-centered">지금 바로 관리비를 결제하세요!</h4>
						</div>
						<div class="col-md-5 text-right">

							<input type="hidden" id="price" name="price">
							<button type="button" id="payBtn"
								class="btn btn-medium btn-dark uppercase">
								<span>결제하기</span>
							</button>

						</div>
					</div>

				</div>

				<div class="col-md-6 text-center margin-bottom">
					<div class="text-box white padding-4">
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; inset: 0px;"></iframe>

						<h4 class="uppercase">관리비</h4>
						<br>
						<div id="pieChart">
							<canvas id="myPieChart" width="300" height="300"
								style="display: block; width: 300px; height: 300px;"></canvas>
						</div>
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
		<input type="hidden" id="payName" value="<sec:authentication property="principal.NAME"/>">
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

</script>
<script>
	
	//이번달 관리비 합계
	const currentMfTotal = ${currentFee.mfTotal};
	//저번달 관리비 합계
	const lastMfTotal = ${currentFee.lastMonthTotal};
	//관리비 전체 평균
	const mfAvg = ${avg.mfAvg};
	//월
	let month = ${currentFee.month};
	let date = ${currentFee.mfDate};
	//전월 대비 표시
	compareLastMonth(lastMfTotal, currentMfTotal);
	//관리비 평균에 (-8,388) 
	avgDiff(mfAvg, currentMfTotal);
	//원형 차트 표시
	pieChart(${currentFeeJson});
	
	$('#price').val(currentMfTotal);

	$('#mfFee').text(comma(${currentFee.mfFee}));
	$('#mfHeat').text(comma(${currentFee.mfHeat}));
	$('#mfElect').text(comma(${currentFee.mfElect}));
	$('#mfWater').text(comma(${currentFee.mfWater}));
	$('#mfTv').text(comma(${currentFee.mfTv}));
	$('#mfClean').text(comma(${currentFee.mfClean}));
	$('#mfSecurity').text(comma(${currentFee.mfSecurity}));
	$('#mfElevator').text(comma(${currentFee.mfElevator}));
	$('#mfTrash').text(comma(${currentFee.mfTrash}));
	$('#mfTotal').text(comma(currentMfTotal));
	
	$('#month').text(month + "월 관리비");
	
	
	$('#dateSelectBox').on('change', function() {
		date = $('#dateSelectBox option:selected').val();
		
		$.ajax({
			url: 'dateChange',
			type: 'POST',
			data: {
				mfDate: date
			},
			success: function(data) {
				$('#mfFee').text(comma(data.mfFee));
				$('#mfHeat').text(comma(data.mfHeat));
				$('#mfElect').text(comma(data.mfElect));
				$('#mfWater').text(comma(data.mfWater));
				$('#mfTv').text(comma(data.mfTv));
				$('#mfClean').text(comma(data.mfClean));
				$('#mfSecurity').text(comma(data.mfSecurity));
				$('#mfElevator').text(comma(data.mfElevator));
				$('#mfTrash').text(comma(data.mfTrash));
				$('#mfTotal').text(comma(data.mfTotal));
				$('#month').text(data.month + "월 관리비");
				avgDiff(mfAvg, data.mfTotal);
				compareLastMonth(data.lastMonthTotal, data.mfTotal);
				pieChart(data);
				
				$('#price').val(data.mfTotal);
				
			}
			
			})
		
		
	})
	
	//천단위 구분기호
	function comma(money) {
		return money.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") + " 원";
	}
	
	//전월대비
	function compareLastMonth(lastMfTotal, currentMfTotal) {
		//이번달 관리비와 지난달 관리비 차이
		const diffference = Math.abs(lastMfTotal - currentMfTotal);
		
		//이번달 관리비가 지난달 관리비보다 많으면(초과) => 빨간색
		if (lastMfTotal == null) {
			return $('#compareTotal').removeClass('bigger').removeClass('smaller').text('전월 실적 없음');
		}
		if (currentMfTotal > lastMfTotal) {
			return $('#compareTotal').removeClass('smaller').addClass('bigger').text(comma(diffference) + " 증가");
		} else {
			return $('#compareTotal').removeClass('bigger').addClass('smaller').text(comma(diffference) + " 감소");
		}
	}
	
	//아파트 평균관리비랑 차이표시
	function avgDiff(mfAvg, currentMfTotal) {
		//관리비 전체 평균과 이번달 관리비 차이
		const difference = Math.abs(mfAvg - currentMfTotal);
		
		if (currentMfTotal > mfAvg){
			return $('#mfAvg').removeClass('smaller').addClass('bigger').text(comma(mfAvg + " (+" + difference + ")" ));
		} else {
			return $('#mfAvg').removeClass('bigger').addClass('smaller').text(comma(mfAvg + " (-" + difference + ")" ));
		}
	}
	
	$('#payBtn').on('click', function() {
		let author = null;
		let houseInfo = null;
		let name = $('#payName').val();
		
		<sec:authorize access="isAuthenticated()">
			author = '<sec:authentication property="principal.AUTHOR"/>';
			houseInfo = '<sec:authentication property="principal.HOUSEINFO"/>';
			phone = '<sec:authentication property="principal.PHONE"/>';
		</sec:authorize>
		
		console.log(author);
		console.log(name);
		console.log(houseInfo);
		console.log(phone);
		
		if (author == 'OWNER') {
			
			paymentFnc(name, houseInfo);
			
		} else {
			alert('세대주만 결제할 수 있습니다.');
		}
		
	})

	
	function paymentFnc(name, houseInfo, phone) {

	IMP.init('imp57655457');
	
	IMP.request_pay({
		pg : 'inicis', // version 1.1.0부터 지원.
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : '관리비_' + houseInfo + '_' + date,
		buyer_name : name,
		buyer_tel : phone,
		buyer_email : "8841258@naver.com",
		amount : '100', //판매 가격
	}, function(rsp) {
		if (rsp.success) {
			$.ajax({
				url: "feeCreditCard",
				type: "POST",
				data: {imp_uid: rsp.imp_uid},
				success: function(data) {
					console.log(data);
					
		        	if(rsp.paid_amount == data.response.amount){
			        	alert("결제가 완료되었습니다.");
		        	} else {
		        		alert("결제가 실패하였습니다.");
		        	}
					
					
				},
				error: () => alert('AJAX 에러')
			})
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
			alert(msg);
		}

	});
	}
	
	//원형 차트
	function pieChart(data) {
		const idPieChart = document.getElementById("pieChart");
		
		const canvasTag = '<canvas id="myPieChart" width="300" height="300"'
						+ 'style="display: block; width: 300px; height: 300px;"></canvas>';
		idPieChart.innerHTML = canvasTag;

		var ctx = document.getElementById("myPieChart");
		var myPieChart = new Chart(ctx, {
			type : 'pie',
			data : {
				labels : [ "일반관리비", "난방온수", "전기료", "수도료", "TV수신료", "청소비", "경비비", "승강기유지비", "생활폐기물수수료" ],
				datasets : [ {
					data : [ data.mfFee, data.mfHeat, data.mfElect,
							 data.mfWater, data.mfTv, data.mfClean,
							 data.mfSecurity, data.mfElevator, data.mfTrash ],
					backgroundColor : [ "rgba(75,192,192,1)", "rgba(162,236,191,1)", "rgba(236,162,183,1)",
										"rgba(215,236,162,1)", "rgba(162,163,236,1)", "rgba(236,235,162,1)",
										"rgba(233,234,211,1)", "rgba(215,193,170,1)", "rgba(168,169,190,1)"],
					hoverBackgroundColor : [ "rgba(75,192,192,0.8)", "rgba(162,236,191,0.8)", "rgba(236,162,183,0.8)",
											 "rgba(215,236,162,0.8)", "rgba(162,163,236,0.8)", "rgba(236,235,162,0.8)",
											 "rgba(233,234,211,0.8)", "rgba(215,193,170,0.8)", "rgba(168,169,190,0.8)" ]
				} ]
			},

		});
	}
	
</script>
</html>