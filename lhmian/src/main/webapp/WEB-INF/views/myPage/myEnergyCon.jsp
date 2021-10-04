<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
#myGaugeChart {
witdh : 500px;
height : 500px;
padding-left : 30px;
}

.col-md-12 {
margin : 30px;
}

select {
display : block;
}

.btn-yj {
display : inline-block;
}

.btn-month {
width : 100px;
margin : 0px 5px;
}

.col-md-8 {
padding-left : 65px;
}

/* .btn1 {
margin-left : 300px;
} */

.btn2 {
margin-left : 324px;
} 
</style>
<hr>
<div class="container">
	<div class="row">
	<br><br>
		<div class="col-md-2"></div>
		<div class="btn1 col-md-8"></div>
		<div class="col-md-2"></div>
		<br><br>
		<div class="btn2">
			<button class="btn-yj">6개월</button>
			<button class="btn-yj">1년</button>
		</div>
		<div class="col-md-7 text-center margin-bottom">
			<h4 class="uppercase">Bar Chart</h4>
			<br/>
			<canvas id="myBarChart" width="400" height="300"></canvas>
		</div>
		<div class="col-md-5 text-center margin-bottom">
		    <h4 class="uppercase">Pie Chart</h4>
			<br/>
			<canvas id="myDoughnutChart" width="300" height="300"></canvas>
		</div>
		<div class="col-md-7 text-center margin-bottom">
			<h4 class="uppercase">Line Chart</h4>
			<br/>
			<canvas id="myLineChart" width="400" height="300"></canvas>
		</div>
		<div class="col-md-5 text-center margin-bottom">
			<h4 class="uppercase">Gauge Chart(평균)</h4>
			<br/>
			<div id="myGaugeChart"></div>
		</div>
	</div>
</div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script>
$(function() {
	var date = new Date();
	var month = date.getMonth() + 1;
	var total = "";
	$(document).ready(function() {
		for (let i = 0; i < 6; i++) {
			var btn = month - i;
			var tag = "";
			tag = '<button id="month' + i + '" class="btn-yj btn-month">' + btn + '월</button>';
			total = total + tag;
		}
		$('.btn1').html(total);
	});  
});

var engArray = [];			var gasArray = [];
var electricArray = [];		var waterArray = [];
var trashArray = [];		var trashFoodArray = [];

var mfDate = [];

<c:forEach var="list" items="${engList}">
var eng;					var gas;
var electric;				var water;
var trash;					var trashFood;

var totalEng = 0;			var totalGas = 0;
var totalElectric = 0;		var totalWater = 0;
var totalTrash = 0;			var totalTrashFood = 0;

var tempDate;

tempDate = ${list.mfDate} + '';
tempDate = tempDate.substring(0, 2) + "/" + tempDate.substring(2, 4);
mfDate.push(tempDate);

eng = ${list.eng};				gas = ${list.gas};
engArray.push(eng);				gasArray.push(gas);

electric = ${list.electric};	water = ${list.water};
electricArray.push(electric);	waterArray.push(water);

trash = ${list.trash};			trashFood = ${list.trashFood};
trashArray.push(trash);			trashFoodArray.push(trashFood);

totalEng += eng;				totalGas += gas;
totalElectric += electric;		totalWater += water;
totalTrash += trash;			totalTrashFood += trashFood;
</c:forEach>

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
		} ]
	}
});

/* 도넛차트(에너지별) */
var ctx = document.getElementById("myDoughnutChart");
var myDoughnutChart = new Chart(ctx,{
    type: 'doughnut',
    data: {
       labels: [
        "일반관리비",
        "가스",
        "전기",
        "수도",
        "생활폐기물",
        "음식물폐기물"
    ],
       datasets: [
        { 
        	data: [totalEng, totalGas, totalElectric, totalWater, totalTrash, totalTrashFood],
            backgroundColor: [
            	"rgba(75,192,192,1)",
                "rgba(162,236,191,1)",
                "rgba(236,162,183,1)",
                "rgba(215,236,162,1)",
                "rgba(162,163,236,1)",
                "rgba(236, 235,162,1)"
            ],
             hoverBackgroundColor: [
            	"rgba(75,192,192,0.8)",
                "rgba(162,236,191,0.8)",
                "rgba(236,162,183,0.8)",
                "rgba(215,236,162,0.8)",
                "rgba(162,163,236,0.8)",
                "rgba(236, 235,162,0.8)"
            ]
        }]
    },
    
});

/* 바차트(월별) */
var ctx = document.getElementById("myBarChart");
var myBarChart = new Chart(ctx,{
    type: 'bar',
    data: {
       labels: [
        "일반관리비",
        "가스",
        "전기",
        "수도",
        "생활폐기물",
        "음식물폐기물"
    ],
       datasets: [
        { 
        	label : "일반관리비",
        	data: [totalEng, totalGas, totalElectric, totalWater, totalTrash, totalTrashFood],
            backgroundColor: [
            	"rgba(75,192,192,1)",
                "rgba(162,236,191,1)",
                "rgba(236,162,183,1)",
                "rgba(215,236,162,1)",
                "rgba(162,163,236,1)",
                "rgba(236, 235,162,1)"
            ],
             hoverBackgroundColor: [
            	"rgba(75,192,192,0.8)",
                "rgba(162,236,191,0.8)",
                "rgba(236,162,183,0.8)",
                "rgba(215,236,162,0.8)",
                "rgba(162,163,236,0.8)",
                "rgba(236, 235,162,0.8)"
            ]
        }
        ]
    }    
});

	/* 게이지차트(에너지평균) */

	google.charts.load('current', {'packages':['gauge']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Label', 'Value'],
        ['Memory', 80]
      ]);

      var options = {

        redFrom: 90, redTo: 100,
        yellowFrom:75, yellowTo: 90,
        minorTicks: 5
      };

      var chart = new google.visualization.Gauge(document.getElementById('myGaugeChart'));
      chart.draw(data, options);
    }
</script>