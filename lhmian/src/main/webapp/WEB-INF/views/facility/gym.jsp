<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
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
</style>
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
								<div class="text text-center"></div>
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
							<li class="current"><a href="#">피트니스 센터</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">피트니스 센터</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">LHmian의 자랑, 근손실없는피트니스 입니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
			</div>
		</div>
	</section>
	
		<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 margin-bottom">
					<div id="mainImg">
						<img src="${pageContext.request.contextPath}/resources/images/gym_1.jpg" alt="헬스장" class="img-responsive">
					</div>
				</div>
				<div class="col-md-6 margin-bottom">
					<h5 class="font-weight-4">근손실없는피트니스</h5>
					<p>LHmian의 자랑, 근손실없는피트니스 입니다.</p>
					<br />
					<ul class="iconlist gyellow">
						<li><i class="fa fa-check"></i> 
							쾌적한 환경
						</li>
						<li><i class="fa fa-check"></i> 
							체계적인
						</li>
						<li><i class="fa fa-check"></i> 
							저쩌구
						</li>
						<li><i class="fa fa-check"></i> 
							블라블라
						</li>
					</ul>
				</div>
				<!--end item-->
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

	<div class="divider-line solid light"></div>
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
	</section><br><br>
	<div class="divider-line solid light"></div>
	<section class="sec-tpadding-2">
		<div class="container">
			<div class="row">
				<div class="col-12 margin-bottom">
					<div class="tab-navbar-main-style-7 tabstyle-7">
						<ul class="responsive-tabs">
							<li>
								<div class="tab-navicon">
									<a href="#example-1-tab-1" target="_self">요가</a>
								</div>
							</li>
							<li>
								<div class="tab-navicon"> 
									<a href="#example-1-tab-2" target="_self">필라테스</a>
								</div>
							</li>
							<li>
								<div class="tab-navicon"> 
									<a href="#example-1-tab-3" class="no-border" target="_self">스피닝</a>
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
										<h4 class="uppercase font-weight-7 less-mar-1">요가 프로그램 시간표</h4><br>
									</div>
									<table class="table table-bordered" style="background-color: white;">
										<tr>
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
												<td><button type="button" class="registerBtn btn btn-default" data-gxCode="${yoga.gxCode}" data-gxTitle="${yoga.gxTitle}">등록</button></td>
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
										<h4 class="uppercase font-weight-7 less-mar-1">필라테스 프로그램 시간표</h4><br>
									</div>
									<table class="table table-bordered" style="background-color: white;">
										<tr>
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
												<td><button type="button" class="registerBtn btn btn-default" data-gxCode="${pil.gxCode}" data-gxTitle="${pil.gxTitle}">등록</button></td>
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
										<h4 class="uppercase font-weight-7 less-mar-1">스피닝 프로그램 시간표</h4><br>
									</div>
									<table class="table table-bordered" style="background-color: white;">
										<tr>
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
												<td><button type="button" class="registerBtn btn btn-default" data-gxCode="${spin.gxCode}" data-gxTitle="${spin.gxTitle}">등록</button></td>
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
<br><br><br><br><br><br>

<!-- The Modal -->
<div class="modal" id="gymModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="gymForm" name="gymForm" method="post" action="gymPay" target="popup_window">
			<!-- Modal Header -->
			<div class="modal-header">
				<div style="margin-left: 20px;">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">피트니스센터 등록</h4>
				</div>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<div style="margin: 0px 20px 0px;">
					<h5><i class="bi bi-person-circle"></i>&nbsp;&nbsp;<label for="name">이 름</label></h5>
						<input type="text" id="name" class="form-control" readonly="readonly" value="<sec:authentication property="principal.NAME" />"><br>
					<h5><i class="bi bi-patch-exclamation"></i>&nbsp;&nbsp;<label for="gxTitle">프로그램명</label></h5>
						<input type="text" id="gxTitle" name="gxTitle" class="form-control" readonly="readonly"><br>
					<h5><i class="bi bi-calendar-check"></i>&nbsp;&nbsp;<label for="startdate">시작 날짜</label></h5>
						<input type="text" id="startdate" class="form-control" readonly="readonly" placeholder="날짜 선택"><br>
						<span id=""></span>
					<h5><i class="bi bi-calendar-range"></i>&nbsp;&nbsp;<label for="period">기 간</label></h5> 
						<select id="period" name="period" class="form-control">
								<option value="" selected>선택</option>
								<option value="90">3달</option>
								<option value="180">6달</option>
								<option value="365">1년</option>
						</select><br>
					<h5><i class="bi bi-cash-coin"></i>&nbsp;<label for="price">금 액 (원)</label></h5>
						<input type="text" id="price" name="price" class="form-control" readonly="readonly">
						<input type="hidden" id="code" name="code">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
				</div>
				<br>
			</div>
			<!-- Modal Footer -->
			<div class="modal-footer">
				<div align="center">
					<button type="button" id="payBtn" class="btn btn-gyellow">결제하기</button>
					<button type="button" data-dismiss="modal" class="btn btn-default">취소</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
<!-- Modal End -->

<form action="gymPayComplete" method="post" id="frm">
	<input type="hidden" id="payNo" name="payNo" value="">
	<input type="hidden" id="id" name="id" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" id="payType" name="payType" value=""> 
	<input type="hidden" id="payCat" name="payCat" value="헬스장"> 
	<input type="hidden" id="payStatus" name="payStatus" value=""> 
	<input type="hidden" id="impUid" name="imp_uid" value="">
	
	<input type="hidden" id="gymStartdate" name="gymStartdate" value="">
	<input type="hidden" id="gxCode" name="gxCode" value="">
	<input type="hidden" id="gymPeriod" name="gymPeriod" value="">
	<input type="hidden" id="gymPrice" name="gymPrice" value="">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
</form>

</body>

<script>

	$(".thumbs a").click(function() {           					 //클릭 시
	    var imgPath = $(this).attr("href");     				  //클릭한 a태그의 하이퍼링크를 변수저장
	    $("#mainImg>img").attr({src:imgPath}) 					  //메인 이미지의 주소 속성에 할당
	    				 .hide()                                 //fadein()효과를 보여주기 위해 숨김처리
	    				 .fadeIn();                              //fadeIn()
	    return false;                           //<a> 의 본래기능 (하이퍼링크) 작동방지
	});
	
   	$('#doPay').on('click', function() {
   		window.open("", "popup_window", "width=500, height=700, scrollbars=yes");
   	});
   	
	// 날짜 선택 DatePicker
	$("#startdate").datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
		prevText : '이전 달',
		nextText : '다음 달',
		minDate: 0,
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
	
		if (period == "90") {
			price = 30000;
		} else if (period == "180") {
			price = 50000;
		} else if (period == "365") {
			price = 80000;
		}
	
		$('#price').val(price);
	});

	// 등록버튼 클릭 시
	$('.registerBtn').on("click", function() {
		$('#gxTitle').val($(this).attr("data-gxTitle"));
		$('#code').val($(this).attr("data-gxCode"));
		$('#gymModal').modal('show');
	});
	
	
	// 결제버튼 클릭 시
	$('#payBtn').on('click', function() {
		
		let author = null;
		let houseInfo = null;
		let phone = null;
		let name = null;
		let price = $('#price').val();
		
		$('#gymStartdate').val($('#startdate').val());
		$('#gxCode').val($('.registerBtn').attr('data-gxCode'));
		$('#gymPeriod').val($('#period').val());
		$('#gymPrice').val(price);
		
		<sec:authorize access="isAuthenticated()">
			author = '<sec:authentication property="principal.AUTHOR"/>';
			houseInfo = '<sec:authentication property="principal.HOUSEINFO"/>';
			phone = '<sec:authentication property="principal.PHONE"/>';
			name = '<sec:authentication property="principal.HOUSEINFO" />';
		</sec:authorize>
		
		
		if ($('#gymStartdate').val() != "" && $('#gymPeriod').val() != "") {
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
			name : '피트니스_' + houseInfo,
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