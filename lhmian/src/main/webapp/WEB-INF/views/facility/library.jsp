<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<!-- <h4>Pricing Badges</h4> -->
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/facility/facilityList">편의 시설</a></li>
							<li class="current"><a href="#">독서실</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>

	<section class="sec-tpadding-2">
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
	</section>
	<hr>

	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 margin-bottom">
					<img src="${pageContext.request.contextPath}/resources/images/library.jpg" alt="독서실" class="img-responsive">
				</div>
				<div class="col-md-6 margin-bottom">
					<h5 class="font-weight-4">LHmian 한사랑 독서실</h5>
					<p>독서실 설명 블라블라블라~~~</p>
					<br />
					<ul class="iconlist gyellow">
						<li><i class="fa fa-check"></i> 
							쾌적한 환경
						</li>
						<li><i class="fa fa-check"></i> 
							Etiam enim Suspendisse imperdiet cursus nisi Maecenas
						</li>
						<li><i class="fa fa-check"></i> 
							Nullam turpis Cras dapibus orci rutrum
						</li>
						<li><i class="fa fa-check"></i> 
							Etiam enim Suspendisse imperdiet cursus nisi Maecenas
						</li>
					</ul>
					<br /> <br />
					<button type="button" id="reservation"
						class="btn btn-dark-3 btn-round" data-toggle="modal"
						data-target="#libModal">등록</button>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

	<div class="divider-line solid light"></div>
	<section class="moreless-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="ce4-clients noborder grid-cols-6 hover-2">
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/400x300" alt="">
							</a>
						</li>
					</ul>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="clearfix"></div>
	<!-- end section -->

	<!-- The Modal -->
	<div class="modal" id="libModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title">독서실 등록</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div>
						<form id="libForm" name="libForm">
							이름 | <input type="text" id="member" disabled="disabled"
								value="김아무개"><br> <br> 날짜 | <input type="text"
								id="selectDate"><br> <br> 기간 | <select
								id="libPeriod" name="libPeriod">
								<option value="" selected>선택</option>
								<option value="1">1일</option>
								<option value="7">1주</option>
								<option value="30">1달</option>
								<option value="90">3달</option>
								<option value="180">6달</option>
								<option value="365">1년</option>
							</select><br> <br> 금액 | <input type="text" id="libPrice"
								name="libPrice" readonly="readonly">원
						</form>
					</div>
					<br>
					<div align="center">
						<button type="button">등록</button>
						&nbsp;
						<button type="button" data-dismiss="modal">취소</button>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>

<script>
	// 날짜 선택 DatePicker
	$("#selectDate").datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
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
	$("#libPeriod").on("change", function() {

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

		$('#libPrice').val(price);

	});
</script>

</html>