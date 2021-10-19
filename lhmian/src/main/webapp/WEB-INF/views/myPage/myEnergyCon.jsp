<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
#myGaugeChart {
	witdh: 500px;
	height: 500px;
	padding-left: 30px;
}

.col-md-12 {
	margin: 10px;
}

select {
	display: block;
}

.btn-yj {
	display: inline-block;
}

.btn-month {
	width: 100px;
	margin: 0px 5px;
}

.col-md-8 {
	padding-left: 65px;
}

.margin-bottom {
	margin-bottom: 50px;
	padding-bottom: 0
}
</style>

<section>
	<div class="pagenation-holder-no-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb-gray">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이페이지</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/pay/myEnergyCon">에너지 사용 내역</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sec-padding section-light">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 nopadding">
				<div class="sec-title-container-padding-topbottom text-center margin-bottom">
					<div class="pl-title-line-1"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">에너지 사용 내역</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">월별, 기간별로 세대의 에너지 사용 내역을 확인 할 수 있습니다.</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="row">
			<div class="btn1 col-md-12">
				<label><input type="checkbox">일반관리비</label>
				<label><input type="checkbox">가스</label>
				<label><input type="checkbox">전기</label>
				<label><input type="checkbox">수도</label>
				<label><input type="checkbox">생활폐기물</label>
				<label><input type="checkbox">음식물폐기물</label>
				단위 : kwh
			</div>
			<div class="col-md-12 bar-chart"></div>
			<div>
				<table border="1">
					<tr>
						<th>연월</th>
					</tr>
					<tr>
						<th>금년</th>
					</tr>
					<tr>
						<th>전년</th>
					</tr>
					<tr>
						<th>비교값</th>
					</tr>
					<tr>
						<th>비교아이콘</th>
					</tr>
				</table>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script>
	$(document).ready( function() {
	//차트-첫 로딩시 현재 월 차트 보여주고, 월 버튼 클릭시 해당 월의 데이터 표시
	var tagBar = "";
	tagBar += '<h4 class="uppercase">1년 그래프</h4>'
			+ '<br/>'
			+ '<canvas id="myBarChart"></canvas>'
	$(".bar-chart").html(tagBar);
	//lastYear = ${lastYear};
	//thisYear = ${thisYear};
	//bar();
	$.ajax({
		url : "myEnergy",
		type : "post",
		data : {
			columnName : "ENG"
		},
		success : function(data) {
			//data = JSON.parse(data);
			console.log(${thisYear});
			console.log(data.eng);
			bar(data);
		}
	});
	});

	/* 바차트(월별) */
	function bar() {
		var ctx = document.getElementById('myBarChart').getContext('2d'); 
		var chart = new Chart(ctx, { 
			// type : 'bar' = 막대차트를 의미합니다. 
			type: 'bar', 
			data: { 
				labels: [
					'빨간색',
					'파란색'
					], 
				// 큰 분류(하단 데이터 이름)
			datasets: [ 
				{ label: '첫번째 분류', //작은 분류 
				backgroundColor: [ 'red', ],
				borderColor: 'rgb(255, 99, 132)', 
				data: [] 
			}, { label: '두번째 분류', //작은 분류 
				backgroundColor: [ 'blue', ], 
				borderColor: 'rgb(255, 99, 132)', 
				data: [2 ,10, 5,] 
			} 
		]}
	});
};
</script>