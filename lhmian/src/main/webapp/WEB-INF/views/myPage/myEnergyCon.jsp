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
			<div class="btn1 col-md-12"></div>
			<div class="btn2 col-md-12">
				<button class="btn-yj " value="6" onclick="periodBtn(this)">6개월</button>
				<button class="btn-yj" value="12" onclick="periodBtn(this)" style="margin-left: 5px">1년</button>
			</div>
			<div class="col-md-7 text-center margin-bottom"></div>
			<div class="col-md-5 text-center margin-bottom"></div>
		</div>
	</div>
</section>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script>
	//버튼-현재 월 기준으로 최근 6개월의 버튼이 생성됨
	var date = new Date();
	var month = date.getMonth() + 1;
	var total = "";
	$(document).ready( function() {
		for (let i = 0; i < 6; i++) {
			var btn = month - i;
			var tag = "";
			tag = '<button id="month' + i + '" class="btn-yj btn-month" value="' + btn + '" onclick="monthBtn(this);">' + btn + '월</button>';
			total = total + tag;
		}
		$('.btn1').html(total);

		//차트-첫 로딩시 현재 월 차트 보여주고, 월 버튼 클릭시 해당 월의 데이터 표시
		var tagBar = "";
		tagBar += '<h4 class="uppercase">월별 - Bar</h4>'
				+ '<br/>'
				+ '<canvas id="myBarChart" width="400" height="300"></canvas>'
		$(".col-md-7").html(tagBar);

		var tagDoughnut = "";
		tagDoughnut += '<h4 class="uppercase">월별 - Pie</h4>'
					+ '<br/>'
					+ '<canvas id="myDoughnutChart" width="300" height="300"></canvas>'
		$(".col-md-5").html(tagDoughnut);

		//첫로딩 데이터 - 현재 월	
		data = ${read};
		bar(data);
		doughnut(data);
	});

	//월별 버튼
	function monthBtn(data) {
		var tagBar = "";
		tagBar += '<h4 class="uppercase">월별 - Bar</h4>' + '<br/>'
				+ '<canvas id="myBarChart" width="400" height="300"></canvas>'
		$(".col-md-7").html(tagBar);

		var tagDoughnut = "";
		tagDoughnut += '<h4 class="uppercase">월별 - Pie</h4>'
				+ '<br/>'
				+ '<canvas id="myDoughnutChart" width="300" height="300"></canvas>'
		$(".col-md-5").html(tagDoughnut);

		var month = date.getFullYear() + "";
		if (data.value == '10' || data.value == '11' || data.value == '12') {
			month = month.substr(2, 2) + data.value;
		} else {
			month = month.substr(2, 2) + '0' + data.value;
		};
		$.ajax({
			url : "${pageContext.request.contextPath}/myEnergy",
			type : "get",
			data : {
				mfDate : month
			},
			success : function(data) {
				data = JSON.parse(data);
				bar(data);
				doughnut(data);
			}
		});
	};

	//기간별 버튼
	function periodBtn(data) {
		var tagLine = "";
		tagLine += '<h4 class="uppercase">기간별 - Line</h4>' + '<br/>'
				+ '<canvas id="myLineChart" width="400" height="300"></canvas>'
		$(".col-md-7").html(tagLine);

		var tagGauge = "";
		tagGauge += '<h4 class="uppercase">기간별 - 평균</h4>' + '<br/>'
				+ '<div id="myGaugeChart"></div>'
		$(".col-md-5").html(tagGauge);

		$.ajax({
			url : "${pageContext.request.contextPath}/myEnergyPeriod",
			type : "get",
			data : {
				mfDate : data.value
			},
			success : function(data) {
				line(data);
				gauge(data);
			}
		});
	};

	/* 바차트(월별) */
	function bar(data) {
		var ctx = document.getElementById("myBarChart");
		var myBarChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "일반관리비", "가스", "전기", "수도", "생활폐기물", "음식물폐기물" ],
				datasets : [ {
					data : [ data.eng, data.gas, data.electric, data.water, data.trash, data.trashFood ],
					backgroundColor : [ "rgba(75,192,192,1)",
										"rgba(162,236,191,1)", 
										"rgba(236,162,183,1)",
										"rgba(215,236,162,1)", 
										"rgba(162,163,236,1)",
										"rgba(236, 235,162,1)" ],
					hoverBackgroundColor : [ "rgba(75,192,192,0.8)",
											"rgba(162,236,191,0.8)", 
											"rgba(236,162,183,0.8)",
											"rgba(215,236,162,0.8)", 
											"rgba(162,163,236,0.8)",
											"rgba(236, 235,162,0.8)" ]
				}]
			},
			options : {
				legend : {
					display : false
				}
			}
		});
	};

	/* 도넛차트(에너지별) */
	function doughnut(data) {
		var ctx = document.getElementById("myDoughnutChart");
		var myDoughnutChart = new Chart(ctx, {
			type : 'doughnut',
			data : {
				labels : [ "일반관리비", "가스", "전기", "수도", "생활폐기물", "음식물폐기물" ],
				datasets : [ {
					data : [ data.eng, data.gas, data.electric, data.water, data.trash, data.trashFood ],
					backgroundColor : [ "rgba(75,192,192,1)",
										"rgba(162,236,191,1)", 
										"rgba(236,162,183,1)",
										"rgba(215,236,162,1)", 
										"rgba(162,163,236,1)",
										"rgba(236, 235,162,1)" ],
					hoverBackgroundColor : [ "rgba(75,192,192,0.8)",
											"rgba(162,236,191,0.8)", 
											"rgba(236,162,183,0.8)",
											"rgba(215,236,162,0.8)", 
											"rgba(162,163,236,0.8)",
											"rgba(236, 235,162,0.8)" ]
				}]
			}
		});
	}

	function line(data) {
		//기간데이터-라인차트
		var mfDate = [];

		var engArray = [];
		var gasArray = [];
		var electricArray = [];
		var waterArray = [];
		var trashArray = [];
		var trashFoodArray = [];

		for (let i = 0; i < data.length; i++) {
			mfDate.push(data[i].mfDate);
			engArray.push(data[i].eng);
			gasArray.push(data[i].gas);
			electricArray.push(data[i].electric);
			waterArray.push(data[i].water);
			trashArray.push(data[i].trash);
			trashFoodArray.push(data[i].trashFood);
		}

		/* 라인차트(전체) */
		var ctx = document.getElementById("myLineChart");
		var myLineChart = Chart.Line(ctx, {
			type : 'line',
			data : {
				labels : mfDate,
				datasets : [ {
					label : "일반관리비",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(75,192,192,1)",
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
					data : engArray
				}, {
					label : "가스",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(162,236,191,1)",
					borderColor : "rgba(162,236,191,1)",
					borderCapStyle : 'butt',
					borderDash : [],
					borderDashOffset : 0.0,
					borderJoinStyle : 'miter',
					pointBorderColor : "rgba(162,236,191,1)",
					pointBackgroundColor : "#fff",
					pointBorderWidth : 1,
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(162,236,191,1)",
					pointHoverBorderColor : "rgba(220,220,220,1)",
					pointHoverBorderWidth : 2,
					pointRadius : 1,
					pointHitRadius : 10,
					data : gasArray
				}, {
					label : "전기",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(236,162,183,1)",
					borderColor : "rgba(236,162,183,1)",
					borderCapStyle : 'butt',
					borderDash : [],
					borderDashOffset : 0.0,
					borderJoinStyle : 'miter',
					pointBorderColor : "rgba(236,162,183,1)",
					pointBackgroundColor : "#fff",
					pointBorderWidth : 1,
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(236,162,183,1)",
					pointHoverBorderColor : "rgba(220,220,220,1)",
					pointHoverBorderWidth : 2,
					pointRadius : 1,
					pointHitRadius : 10,
					data : electricArray
				}, {
					label : "수도",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(215,236,162,1)",
					borderColor : "rgba(215,236,162,1)",
					borderCapStyle : 'butt',
					borderDash : [],
					borderDashOffset : 0.0,
					borderJoinStyle : 'miter',
					pointBorderColor : "rgba(215,236,162,1)",
					pointBackgroundColor : "#fff",
					pointBorderWidth : 1,
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(215,236,162,1)",
					pointHoverBorderColor : "rgba(220,220,220,1)",
					pointHoverBorderWidth : 2,
					pointRadius : 1,
					pointHitRadius : 10,
					data : waterArray
				}, {
					label : "생활폐기물",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(162,163,236,1)",
					borderColor : "rgba(162,163,236,1)",
					borderCapStyle : 'butt',
					borderDash : [],
					borderDashOffset : 0.0,
					borderJoinStyle : 'miter',
					pointBorderColor : "rgba(162,163,236,1)",
					pointBackgroundColor : "#fff",
					pointBorderWidth : 1,
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(162,163,236,1)",
					pointHoverBorderColor : "rgba(220,220,220,1)",
					pointHoverBorderWidth : 2,
					pointRadius : 1,
					pointHitRadius : 10,
					data : trashArray
				}, {
					label : "음식물폐기물",
					fill : false,
					lineTension : 0.1,
					backgroundColor : "rgba(236,235,162,1)",
					borderColor : "rgba(236, 235,162,1)",
					borderCapStyle : 'butt',
					borderDash : [],
					borderDashOffset : 0.0,
					borderJoinStyle : 'miter',
					pointBorderColor : "rgba(236,235,162,1)",
					pointBackgroundColor : "#fff",
					pointBorderWidth : 1,
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(236,235,162,1)",
					pointHoverBorderColor : "rgba(220,220,220,1)",
					pointHoverBorderWidth : 2,
					pointRadius : 1,
					pointHitRadius : 10,
					data : trashFoodArray
				}]
			}
		});
	}

	/* 게이지차트(에너지평균) */
	function gauge(data) {
		google.charts.load('current', {
			'packages' : [ 'gauge' ]
		});
		google.charts.setOnLoadCallback(drawChart);

		//기간평균-게이지차트 
		var avgEng = 0;
		var avgGas = 0;
		var avgElectric = 0;
		var avgWater = 0;
		var avgTrash = 0;
		var avgTrashFood = 0;

		for (let i = 0; i < data.length; i++) {
			avgEng += data[i].eng;
			avgGas += data[i].gas;
			avgElectric += data[i].electric;
			avgWater += data[i].water;
			avgTrash += data[i].trash;
			avgTrashFood += data[i].trashFood;
		}
		if (data.length == 6) {
			avgEng = avgEng / 6;
			avgEng = Number(avgEng.toFixed(1));
			avgGas = avgGas / 6;
			avgGas = Number(avgGas.toFixed(1));
			avgElectric = avgElectric / 6;
			avgElectric = Number(avgElectric.toFixed(1));
			avgWater = avgWater / 6;
			avgWater = Number(avgWater.toFixed(1));
			avgTrash = avgTrash / 6;
			avgTrash = Number(avgTrash.toFixed(1));
			avgTrashFood = avgTrashFood / 6;
			avgTrashFood = Number(avgTrashFood.toFixed(1));
		} else {
			avgEng = avgEng / 12;
			avgEng = Number(avgEng.toFixed(1));
			avgGas = avgGas / 12;
			avgGas = Number(avgGas.toFixed(1));
			avgElectric = avgElectric / 12;
			avgElectric = Number(avgElectric.toFixed(1));
			avgWater = avgWater / 12;
			avgWater = Number(avgWater.toFixed(1));
			avgTrash = avgTrash / 12;
			avgTrash = Number(avgTrash.toFixed(1));
			avgTrashFood = avgTrashFood / 12;
			avgTrashFood = Number(avgTrashFood.toFixed(1));
		}

		function drawChart() {
			var data = google.visualization.arrayToDataTable([
					[ 'Label', 'Value' ], [ '일반관리비', avgEng ],
					[ '가스', avgGas ], [ '전기', avgElectric ],
					[ '수도', avgWater ], [ '생활폐기물', avgTrash ],
					[ '음식물폐기물', avgTrashFood ] ]);

			var options = {
				redFrom : 90,
				redTo : 100,
				yellowFrom : 75,
				yellowTo : 90,
				minorTicks : 5
			};

			var chart = new google.visualization.Gauge(document.getElementById('myGaugeChart'));
			chart.draw(data, options);
		}
	}
</script>