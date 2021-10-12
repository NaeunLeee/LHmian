<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0
}

ul, li {
	list-style: none
}

ul {
	width: 600px;
	margin: 0 auto
}

li {
	margin-top: 20px;
	overflow: hidden;
}

h3 {
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
	margin-right: 5px;
	word-break: break-all;
}

.percent {
	margin-top: 8px;
	font-size: 0;
	height: 25px;
	background: #e8edf2;
	-webkit-border-radius: 32px;
	-moz-border-radius: 32px;
	border-radius: 32px;
	overflow: hidden;
}

.percent-bar {
	display: block;
	background: #dadada;
	height: 25px;
	width: 0;
}
</style>
</head>
<body>
<!-- f1c40f  -->
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
						<h4 class="uppercase font-weight-7 less-mar-1">투표 결과</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">투표를 어쩌구~~~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->



				<ul>
					<c:forEach var="list" items="${list }">
						<li>
							<h3>${list.vcQuesNo }.
								<span class="vc-content">${list.vcContent }</span>&nbsp;&nbsp;&nbsp;
								<span class="percent-value" data-value="${list.percent}">${list.percent }%</span>
							</h3>
							<br>
							<div class="percent">
								<div class="percent-bar" data-per="${list.percent }"></div>
							</div>
						</li>
					</c:forEach>
				</ul>

				<span class="text-highlight yellow"></span>

			</div>
		</div>
	</section>
</body>
<script>
	$.fn.extend({
		'progressbar' : function(config) {
			var opt = $.extend({
				parent : null,
				callback : $.noop,
				duration : 200
			}, config || {});

			var $body = $(document.body), _queue = [], fnDequeue = function() {
				$body.dequeue('jq.progressbar')
			};

			$(this).each(function() {
				var $self = $(this), data = $self.data();
				if (data.queque)
					return;
				_queue.push(function() {
					var per = data.per;
					(per = per || 0) && (per = per > 100 ? 100 : per);
					$self.animate({
						width : per + '%'
					}, opt.duration, function() {
						opt.callback();
						fnDequeue();
					})
				});

				$self.data('queque', true);
			});

			$body.queue('jq.progressbar', _queue);

			fnDequeue();

			return this;
		}
	});

	$('.percent-bar').progressbar({
		duration : 500
	});

	let max = 0;
	for (let i = 0; i < $('.percent-value').length; i++) {
		console.log($('.percent-value').eq(i).attr('data-value'));
		if ($('.percent-value').eq(i).attr('data-value') > max) {
			max = $('.percent-value').eq(i).attr('data-value');
		}
	}
	for (let i = 0; i < $('.percent-value').length; i++) {
		if ($('.percent-value').eq(i).attr('data-value') == max) {
			console.log($(this));
			$('.percent-value').eq(i).addClass('text-highlight yellow');
			$('.percent-value').eq(i).prev().addClass('text-highlight yellow');
			$('.percent-value').parent().parent().eq(0).children().children().css('background', '#f1c40f');
		}
	}
</script>
</html>