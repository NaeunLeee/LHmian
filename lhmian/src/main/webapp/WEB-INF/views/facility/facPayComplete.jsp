<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
.icon {
	width: 70px;
	height: 70px;
	color: #101010;
	font-size: 22px;
	border-radius: 50%;
	line-height: 66px;
	text-align: center;
	display: inline-block;
	background-color: #fff;
}

.feature-box {
	border: 6px solid #f5f5f5;
	float: right;
	width: 50%;
	padding: 45px 60px;
	margin-right: 300px;
}

.sec-title-container-padding-topbottom {
	width: 100%;
	padding-bottom: 50px;
	padding-top: 70px;
}

.feature-box ul>li {
	border-bottom: 1px solid #e9e9e9;
	padding: 15px 0;
}

.pricing-table-2 {
	padding: 0px;
}

.btn {
	height: 50px;
}

</style>
<body>

	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/facility/facilityList">편의 시설</a></li>
							<li><a href="${pageContext.request.contextPath}/facility/gym">피트니스 센터</a></li>
							<li class="current"><a href="#">결제 내역</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>
	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="gm-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">결제 완료</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">결제가 완료되었습니다!</p>
					</div>
				</div>

				<div class="clearfix"></div>
				<div class="feature-box">
					<div class="pricing-table-2 active margin-bottom">
						<div class="text-center">
							<div class="icon">
								<i class="fa fa-check" aria-hidden="true"></i>
							</div>
						</div>

						<h3 class="font-weight-6 title text-center" style="margin-top: 10px;">결제 정보</h3>
						<br> <br>
						<ul class="plan_features" style="font-size: 18px;">
							<li><span class="pull-left font-weight-7">결제 번호</span>
							<span class="pull-right"></span>${pay.payNo}</li>
							<li><span class="pull-left font-weight-7">결제 품목</span> 
							<span class="pull-right"></span>${pay.payCat}</li>
							<li><span class="pull-left font-weight-7">결제 방법</span> 
							<span class="pull-right">${pay.payType}</span></li>
							<li><span class="pull-left font-weight-7">결제 금액</span>
							<c:if test="${not empty gym.gymPrice}">
								<span class="pull-right">${gym.gymPrice}원</span>
							</c:if>
							<c:if test="${empty gym.gymPrice}">
								<span class="pull-right">${lib.libPrice}원</span>
							</c:if>
							</li>
						</ul>
						<div class="clearfix" style="font-size: 14px;"></div>

						<div class="text-center">
							<button type="button" 
									onclick="location.href='${pageContext.request.contextPath}/myPaidList'"
									class="btn btn-gyellow btn-half-fullwidth uppercase">시설 이용 내역</button>
						</div>
					</div>
				</div>
			</div>
			<!--end item-->
		</div>
	</section>
	<!--end title-->

</body>
</html>