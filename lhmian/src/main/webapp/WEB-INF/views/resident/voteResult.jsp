<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.confetti {
	margin: 0;
	position: relative;
}

canvas {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
}

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

h3 {
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
	margin-right: 5px;
	word-break: break-all;
	color: #878787;
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
								href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/resident/voteList">투표</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>
	<section class="sec-padding confetti">
		<div class="container">
			<div class="row">

				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h1 class="uppercase font-weight-7 less-mar-1">${info.voteTitle }</h1>
						<div class="clearfix"></div>
						<p class="by-sub-title">
							투표 기간&nbsp;&nbsp;
							<fmt:formatDate value="${info.voteStart }" pattern="yyyy-MM-dd" />
							~
							<fmt:formatDate value="${info.voteEnd }" pattern="yyyy-MM-dd" />
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
				<ul>
					<c:forEach var="list" items="${list }">
						<li>
							<h3 data-value="${list.percent}">${list.vcQuesNo }.
								<span class="vc-content">${list.vcContent }</span>&nbsp;&nbsp;&nbsp;
								<span class="percent-value">${list.percent }%</span>
							</h3>
							<div class="percent pull-right">
								<div class="percent-bar" data-per="${list.percent }"></div>
							</div>
						</li>
					</c:forEach>
				</ul>
			<canvas id="canvas"></canvas>
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
	for (let i = 0; i < $('h3').length; i++) {
		if ($('h3').eq(i).attr('data-value') > max) {
			max = $('h3').eq(i).attr('data-value');
		}
	}

	for (let i = 0; i < $('h3').length; i++) {
		if ($('h3').eq(i).attr('data-value') === max) {
			$('.percent-value').parent().eq(i)
					.addClass('text-highlight yellow');
			console.log($('h3').next().eq(i).children().css('background-color', '#f1c40f'));

		}
	}
	
	//축하 꽃가루
	const canvasEl = document.querySelector('#canvas');

	const w = canvasEl.width = window.innerWidth;
	const h = canvasEl.height = window.innerHeight * 2;

	function loop() {
	  requestAnimationFrame(loop);
		ctx.clearRect(0,0,w,h);
	  
	  confs.forEach((conf) => {
	    conf.update();
	    conf.draw();
	  })
	}

	function Confetti () {
	  //construct confetti
	  const colours = ['#fde132', '#009bde', '#ff6b00'];
	  
	  this.x = Math.round(Math.random() * w);
	  this.y = Math.round(Math.random() * h)-(h/2);
	  this.rotation = Math.random()*360;

	  const size = Math.random()*(w/60);
	  this.size = size < 15 ? 15 : size;

	  this.color = colours[Math.floor(colours.length * Math.random())];

	  this.speed = this.size/7;
	  
	  this.opacity = Math.random();

	  this.shiftDirection = Math.random() > 0.5 ? 1 : -1;
	}

	Confetti.prototype.border = function() {
	  if (this.y >= h) {
	    this.y = h;
	  }
	}

	Confetti.prototype.update = function() {
	  this.y += this.speed;
	  
	  if (this.y <= h) {
	    this.x += this.shiftDirection/3;
	    this.rotation += this.shiftDirection*this.speed/100;
	  }

	  if (this.y > h) this.border();
	};

	Confetti.prototype.draw = function() {
	  ctx.beginPath();
	  ctx.arc(this.x, this.y, this.size, this.rotation, this.rotation+(Math.PI/2));
	  ctx.lineTo(this.x, this.y);
	  ctx.closePath();
	  ctx.globalAlpha = this.opacity;
	  ctx.fillStyle = this.color;
	  ctx.fill();
	};

	const ctx = canvasEl.getContext('2d');
	const confNum = Math.floor(w / 4);
	const confs = new Array(confNum).fill().map(_ => new Confetti());

	loop();
</script>
</html>