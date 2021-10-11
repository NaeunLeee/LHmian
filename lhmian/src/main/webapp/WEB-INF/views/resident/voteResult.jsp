<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 500px;
	margin: 0 auto
}

li {
	margin-top: 20px;
	overflow: hidden;
}

h2 {
	float: left;
	width: 6em;
	margin-right: 5px;
	color: #f1c40f;
}
/* 进度热度 */
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
	background: #f1c40f;
	height: 25px;
	width: 0;
}
</style>
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
						<h4 class="uppercase font-weight-7 less-mar-1">투표 결과</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">투표를 어쩌구~~~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->



				<ul>
					<li>
						<h2>html</h2>
						<div class="percent">
							<span class="percent-bar" data-per="90"></span>
						</div>
					</li>
					<li>
						<h2>css3</h2>
						<div class="percent">
							<span class="percent-bar" data-per="27"></span>
						</div>
					</li>
					<li>
						<h2>javascript</h2>
						<div class="percent">
							<span class="percent-bar" data-per="70"></span>
						</div>
					</li>
					<li>
						<h2>nodejs</h2>
						<div class="percent">
							<span class="percent-bar" data-per="50"></span>
						</div>
					</li>
				</ul>



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

			// 触发堆栈
			fnDequeue();

			return this;
		}
	});

	$('.percent-bar').progressbar({
		duration : 500
	});


</script>
</html>