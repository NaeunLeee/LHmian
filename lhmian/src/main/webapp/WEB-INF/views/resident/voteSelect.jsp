<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn.btn-medium {
	width: 98px;
	padding: 5px 20px;
	font-size: 14px;
}

.mm-survey {
	margin-top: 75px;
	margin-bottom: 50px;
}

.mm-survey-container {
	width: 100%;
	min-height: 600px;
	background: #fafafa;
	position: relative;
}

.mm-survey-container-absolute {
	position: absolute;
}

.mm-survey-results-container {
	width: 100%;
	min-height: 600px;
	background: #fafafa;
}

.mm-survey-page {
	display: none;
	font-family: 'Raleway';
	font-weight: 100;
	padding: 40px;
}

.mm-survey-page.active {
	display: block;
}

.mm-survey-controller {
	position: relative;
	height: 60px;
	background: #333;
	padding: 12px 14px;
	text-align: center;
}

.mm-survey-results-controller {
	position: relative;
	height: 60px;
	background: #333;
	padding: 12px 14px;
}

.mm-back-btn {
	display: inline-block;
	position: relative;
	float: left;
}

.mm-prev-btn {
	display: inline-block;
	position: relative;
	float: left;
}

.mm-next-btn {
	display: inline-block;
	opacity: 0.25;
	position: relative;
}

.mm-finish-btn {
	display: none;
	position: relative;
	float: right;
}

.mm-finish-btn button {
	background: #3DD2AF !important;
	color: #fff;
}

.mm-survey-controller button {
	background: #fff;
	border: none;
	padding: 8px 18px;
	font-family: 'Raleway';
	font-weight: 300;
}

.mm-survey-results-controller button {
	background: #fff;
	border: none;
	padding: 8px 18px;
}

.mm-survey-progress {
	width: 100%;
	height: 30px;
	background: #f5f5f5;
	overflow: hidden;
}

.mm-progress {
	transition: width 0.5s ease-in-out;
}

.mm-survey-progress-bar {
	height: 30px;
	width: 0%;
	background: linear-gradient(to left, #4CB8C4, #3CD3AD);
}

.mm-survey-q {
	list-style-type: none;
	padding: 0px;
}

.mm-survey-q li {
	display: block;
	/*padding: 20px 0px;*/
	margin-bottom: 10px;
	width: 100%;
	background: #fff;
}

.mm-survey-q li input {
	width: 100%;
}

.mm-survery-content label {
	width: 100%;
	padding: 10px 10px;
	margin: 0px !important;
}

.mm-survery-content label:hover {
	cursor: pointer;
}

.mm-survey-question {
	min-height: 100px;
}

.mm-survey-question p {
	font-size: 22px;
	font-weight: 200;
	margin-bottom: 20px;
	line-height: 40px;
}

.mm-survery-content label p {
	display: inline-block;
	position: relative;
	top: 2px;
	left: 5px;
	margin: 0px;
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label {
	color: #292321;
	font-family: 'Raleway';
	font-weight: 300;
	font-size: 16px;
}

input[type="radio"]+label span {
	display: inline-block;
	width: 30px;
	height: 30px;
	margin: 2px 4px 0 0;
	vertical-align: middle;
	cursor: pointer;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

input[type="radio"]+label span {
	border: 2px solid #ecae3d;
	background: transparent;
}

input[type="radio"]:checked+label span {
	border: 2px solid #ecae3d;
	background-color: #ecae3d;
}

input[type="radio"]+label span, input[type="radio"]:checked+label span {
	-webkit-transition: background-color 0.20s ease-in-out;
	-o-transition: background-color 0.20s ease-in-out;
	-moz-transition: background-color 0.20s ease-in-out;
	transition: background-color 0.20s ease-in-out;
}

.mm-survey-item {
	background: #fff;
	margin-bottom: 15px;
	border-bottom: 1px solid rgba(33, 33, 33, 0.15);
	border-radius: 0px 0px 4px 4px;
}

.mm-prev-btn button:focus, .mm-next-btn button:focus, .mm-finish-btn button:focus
	{
	outline: none;
	border: none;
}

.mm-survey.okay .mm-next-btn {
	display: inline-block;
	opacity: 1;
}

.mm-finish-btn.active {
	display: inline-block;
}

.mm-survey-results {
	display: none;
}

.mm-survey-results-score {
	margin: 0px;
	padding: 0px;
	padding-top: 40px;
	padding-bottom: 40px;
	text-align: center;
	font-size: 80px;
	font-family: 'Raleway';
	font-weight: 600;
	letter-spacing: -6px;
}

.mm-survey-results-list {
	list-style-type: none;
	padding: 0px 15px;
	margin: 0px;
}

.mm-survey-results-item {
	color: #fff;
	margin-top: 10px;
	padding: 15px 15px 15px 0px;
	font-family: 'Raleway';
	font-weight: 300;
}

.mm-survey-results-item.correct {
	background: linear-gradient(to left, #4CB8C4, #3CD3AD);
}

.mm-survey-results-item.incorrect {
	background: linear-gradient(to left, #d33c62, #dc1144);
}

.mm-item-number {
	height: 40px;
	position: relative;
	padding: 17px;
	background: #333;
	color: #fff;
}

.mm-item-info {
	float: right;
}

.pr-feature-box-4 {
	width: 100%;
	float: left;
	padding: 10px;
	border: 2px solid #fff;
}

.pr-feature-box-4 .img-box {
	position: relative;
	width: 100%;
	float: left;
}

.pr-feature-box-4 .img-box .date-box {
	position: absolute;
	width: 40%;
	float: left;
	padding: 8px 15px;
	left: 20px;
	color: #fff;
	font-size: 16px;
	bottom: 20px;
	background-color: #ecae3d;
}

.pr-feature-box-4 .title-line {
	width: 50%;
	margin: 10px 50% 27px 0;
	height: 1px;
	background-color: #e4e4e4;
}

input[type="radio"]:checked+label {
	background-color: #fff1d8;
}

.sec-title-container-padding-topbottom {
    padding-bottom: 0;
}
</style>
<script>
	const participate = '${participate}';
	
	if (participate == "yes") {
		 alert('이미 참여한 투표입니다.');
	}
</script>
</head>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a
								href="${pageContext.request.contextPath}/myPage/myPage">마이
									페이지</a></li>
							<li class="current"><a href="#">투표</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">투표하기</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">투표를 어쩌구~~~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->


				<div class="container">
						<div class="col-sm-12">
							<div class="mm-survey">
								<div class="mm-survey-bottom">
					<div class="pr-feature-box-4 margin-bottom">
									<div class="mm-survey-container">
										
										<div class="mm-survey-page active" data-page="1">
											<div class="mm-survery-content">
												<div class="mm-survey-question">
													<p>
														<a class="btn btn-medium btn-yellow-dark xround-5">진행중</a>
														${hanjul.voteTitle }
													</p>
												</div>
												<form id="frm" action="vote" method="POST">
													<!-- csrf -->
													<input type="hidden" name="${_csrf.parameterName }"
														value="${_csrf.token }"> <input type="hidden"
														name="voteNo" value="${hanjul.voteNo }">
													<c:forEach var="content" items="${content }">
														<div class="mm-survey-item">
															<input type="radio" id="${content.vcQuesNo }"
																name="hvResult" value="${content.vcQuesNo }" /> <label
																for="${content.vcQuesNo }"><span></span>
																<p>${content.vcQuesNo }.${content.vcContent }</p></label>
														</div>
													</c:forEach>
												</form>
											</div>
										</div>
										안내문~~~~<br> 투표는 한번 하면 취소할 수 어쩌구~~
									</div>

									<div class="mm-survey-controller">
										<div class="mm-next-btn">
											<button id="submit" disabled="true">제출</button>
										</div>
										<button type="button" onclick="goBack();">취소</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
<script>
	//몇일 남았습니다......	
	/* 	const endDate = new Date('${hanjul.voteEnd }');
	 const now = new Date();
	
	 console.log(endDate - now); */

	 if (participate == "yes") {
		 $('.mm-survey-container').css('opacity', '0.3');
		 $('input[name="hvResult"]').attr('disabled', 'true');
		 $('label').css('cursor', 'default');
		 $('#submit').remove();
	 }

	jQuery('.mm-prev-btn').hide();

	var x;
	var count;
	var current;
	var percent;
	var z = [];

	init();
	getCurrentSlide();
	goToNext();
	goToPrev();
	getCount();
	// checkStatus();
	// buttonConfig();
	buildStatus();
	deliverStatus();
	submitData();

	function init() {

		jQuery('.mm-survey-container .mm-survey-page').each(function() {

			var item;
			var page;

			item = jQuery(this);
			page = item.data('page');

			item.addClass('mm-page-' + page);
			//item.html(page);

		});

	}

	function getCount() {

		count = jQuery('.mm-survey-page').length;
		return count;

	}

	function goToNext() {
		let author = null;
		jQuery('.mm-next-btn').on('click', function() {
			<sec:authorize access="isAuthenticated()">
				author = '<sec:authentication property="principal.AUTHOR"/>';
			</sec:authorize>
			if (confirm('한 번 투표하게되면 재투표는 할 수 없습니다. 정말로 투표하시겠습니까?')) {
			if (author == 'OWNER') {
				$('#frm').submit();	
			} else {
				alert('세대주만 투표할 수 있습니다.');
			}
			}

		});

	}

	function goToPrev() {

		jQuery('.mm-prev-btn').on('click', function() {
			goToSlide(x);
			getCount();
			current = (x - 1);
			var g = current / count;
			buildProgress(g);
			var y = count;
			getButtons();
			jQuery('.mm-survey-page').removeClass('active');
			jQuery('.mm-page-' + current).addClass('active');
			getCurrentSlide();
			checkStatus();
			jQuery('.mm-finish-btn').removeClass('active');
			if (jQuery('.mm-page-' + current).hasClass('pass')) {
				jQuery('.mm-survey-container').addClass('good');
				jQuery('.mm-survey').addClass('okay');
			} else {
				jQuery('.mm-survey-container').removeClass('good');
				jQuery('.mm-survey').removeClass('okay');
			}
			buttonConfig();
		});

	}

	function buildProgress(g) {

		if (g > 1) {
			g = g - 1;
		} else if (g === 0) {
			g = 1;
		}
		g = g * 100;
		jQuery('.mm-survey-progress-bar').css({
			'width' : g + '%'
		});

	}

	function goToSlide(x) {

		return x;

	}

	function getCurrentSlide() {

		jQuery('.mm-survey-page').each(function() {

			var item;

			item = jQuery(this);

			if (jQuery(item).hasClass('active')) {
				x = item.data('page');
			} else {

			}

			return x;

		});

	}

	function getButtons() {

		if (current === 0) {
			current = y;
		}
		if (current === count) {
			jQuery('.mm-next-btn').hide();
		} else if (current === 1) {
			jQuery('.mm-prev-btn').hide();
		} else {
			jQuery('.mm-next-btn').show();
			jQuery('.mm-prev-btn').show();
		}

	}

	jQuery('.mm-survey-q li input').each(function() {

		var item;
		item = jQuery(this);

		jQuery(item).on('click', function() {
			if (jQuery('input:checked').length > 0) {
				// console.log(item.val());
				jQuery('label').parent().removeClass('active');
				item.closest('li').addClass('active');
			} else {
				//
			}
		});

	});

	percent = (x / count) * 100;
	jQuery('.mm-survey-progress-bar').css({
		'width' : percent + '%'
	});

	function checkStatus() {
		jQuery('.mm-survery-content .mm-survey-item').on('click', function() {
			var item;
			item = jQuery(this);
			item.closest('.mm-survey-page').addClass('pass');
		});
	}

	function buildStatus() {
		jQuery('.mm-survery-content .mm-survey-item').on('click', function() {
			var item;
			item = jQuery(this);
			item.addClass('bingo');
			item.closest('.mm-survey-page').addClass('pass');
			jQuery('.mm-survey-container').addClass('good');
		});
	}

	function deliverStatus() {
		jQuery('.mm-survey-item').on('click', function() {
			if (jQuery('.mm-survey-container').hasClass('good')) {
				jQuery('.mm-survey').addClass('okay');
			} else {
				jQuery('.mm-survey').removeClass('okay');
			}
			buttonConfig();
		});
	}

	function lastPage() {
		if (jQuery('.mm-next-btn').hasClass('cool')) {
			alert('cool');
		}
	}

	function buttonConfig() {
		if (jQuery('.mm-survey').hasClass('okay')) {
			jQuery('.mm-next-btn button').prop('disabled', false);
		} else {
			jQuery('.mm-next-btn button').prop('disabled', true);
		}
	}

	function submitData() {
		jQuery('.mm-finish-btn').on('click', function() {
			collectData();
			jQuery('.mm-survey-bottom').slideUp();
			jQuery('.mm-survey-results').slideDown();
		});
	}

	function collectData() {

		var map = {};
		var ax = [ '0', 'red', 'mercedes', '3.14', '3' ];
		var answer = '';
		var total = 0;
		var ttl = 0;
		var g;
		var c = 0;

		jQuery('.mm-survey-item input:checked').each(function(index, val) {
			var item;
			var data;
			var name;
			var n;

			item = jQuery(this);
			data = item.val();
			name = item.data('item');
			n = parseInt(data);
			total += n;

			map[name] = data;

		});

		jQuery('.mm-survey-results-container .mm-survey-results-list').html('');

		for (i = 1; i <= count; i++) {

			var t = {};
			var m = {};
			answer += map[i] + '<br>';

			if (map[i] === ax[i]) {
				g = map[i];
				p = 'correct';
				c = 1;
			} else {
				g = map[i];
				p = 'incorrect';
				c = 0;
			}

			jQuery('.mm-survey-results-list').append(
					'<li class="mm-survey-results-item '+p+'"><span class="mm-item-number">'
							+ i + '</span><span class="mm-item-info">' + g
							+ ' - ' + p + '</span></li>');

			m[i] = c;
			ttl += m[i];

		}

		var results;
		results = ((ttl / count) * 100).toFixed(0);

		jQuery('.mm-survey-results-score').html(results + '%');

	}
</script>
</html>