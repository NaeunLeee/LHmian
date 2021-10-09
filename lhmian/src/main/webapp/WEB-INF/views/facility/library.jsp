<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
							<li class="current"><a href="#">독서실</a></li>
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
					<div id="mainImg">
						<img src="${pageContext.request.contextPath}/resources/images/library_1.jpg" alt="독서실" class="img-responsive">
					</div>
				</div>
				<div class="col-md-6 margin-bottom">
					<h5 class="font-weight-4">LHmian 한사랑 독서실</h5>
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
					<button type="button" id="registerBtn"
						class="btn btn-dark" data-toggle="modal"
						data-target="#libModal">등록</button>
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
				<form id="libForm" name="libForm" method="post" action="libraryPay" target="popup_window">

				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">독서실 등록</h4>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin: 0px 20px 0px;">
						<h5><i class="bi bi-person-circle"></i>&nbsp;&nbsp;<label for="name">이 름</label></h5>
						<input type="text" id="name" class="form-control" readonly="readonly" value="<sec:authentication property="principal.NAME" />"><br> 
						<h5><i class="bi bi-calendar-check"></i>&nbsp;&nbsp;<label for="startdate">시작 날짜</label></h5>
						<input type="text" id="startdate" class="form-control" readonly="readonly" placeholder="날짜 선택"><br>
						<h5><i class="bi bi-calendar-range"></i>&nbsp;&nbsp;<label for="period">기 간</label></h5> 
						<select id="period" name="period" class="form-control">
							<option value="" selected>선택</option>
							<option value="1">1일</option>
							<option value="7">1주</option>
							<option value="30">1달</option>
							<option value="90">3달</option>
							<option value="180">6달</option>
							<option value="365">1년</option>
					   </select><br>
						<h5><i class="bi bi-cash-coin"></i>&nbsp;<label for="price">금 액 (원)</label></h5> 
						<input type="text" id="price" name="price" class="form-control" readonly="readonly">
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
	
<form action="libPayComplete" method="post" id="frm">
	<input type="hidden" id="payNo" name="payNo" value="">
	<input type="hidden" id="id" name="id" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" id="payType" name="payType" value=""> 
	<input type="hidden" id="payCat" name="payCat" value="헬스장"> 
	<input type="hidden" id="payStatus" name="payStatus" value=""> 
	<input type="hidden" id="impUid" name="imp_uid" value="">
	
	<input type="hidden" id="libStartdate" name="libStartdate" value="">
	<input type="hidden" id="libPeriod" name="libPeriod" value="">
	<input type="hidden" id="libPrice" name="libPrice" value="">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
</form>

</body>

<script>
	// 날짜 선택 DatePicker
	$('#startdate').datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
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
		
		let author = null;
		let houseInfo = null;
		let phone = null;
		let name = null;
		let price = $('#price').val();
		
		$('#libStartdate').val($('#startdate').val());
		$('#libPeriod').val($('#period').val());
		$('#libPrice').val(price);
		
		<sec:authorize access="isAuthenticated()">
			author = '<sec:authentication property="principal.AUTHOR"/>';
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