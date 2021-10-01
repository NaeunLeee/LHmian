<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-md-6 text-center">
	<h4 class="uppercase">Line Chart</h4>
	<br />
	<canvas id="myLineChart" width="100%" height="400"></canvas>
</div>

<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script>
	var engArray = [];
	var gasArray = [];
	var electricArray = [];
	var waterArray = [];
	var trashArray = [];
	var trashFoodArray = [];
	var mfDate = [];
	<c:forEach var="list" items="${engList}">
	var eng;
	var gas;
	var electric;
	var water;
	var trash;
	var trashFood;
	
	var tempDate;
		
	tempDate = ${list.mfDate}+'';
	tempDate = tempDate.substring(0,2) + "/" +  tempDate.substring(2,4);
	mfDate.push(tempDate);
		
	eng = ${list.eng};
	engArray.push(eng); 
	
	gas = ${list.gas};
	gasArray.push(gas);
	
	electric = ${list.electric};
	electricArray.push(electric);
	
	water = ${list.water};
	waterArray.push(water);
	
	trash = ${list.trash};
	trashArray.push(trash);
	
	trashFood = ${list.trashFood};
	trashFoodArray.push(trashFood);
	
	</c:forEach>

	var ctx = document.getElementById("myLineChart");
	var myLineChart = Chart.Line(ctx, {
	    type: 'line',
	    data: {
	    	labels: [mfDate],
	      	datasets: [
				{
					label: "일반관리비",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(75,192,192,0.4)",
					borderColor: "rgba(75,192,192,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(75,192,192,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor:"rgba(75,192,192,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: engArray
				},
				{
					label: "가스",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(162,236,191,0.4)",
					borderColor: "rgba(162,236,191,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(162,236,191,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor:"rgba(162,236,191,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: gasArray
				},
				{
					label: "전기",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(236,162,183,0.4)",
					borderColor: "rgba(236,162,183,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(236,162,183,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor:"rgba(236,162,183,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: electricArray
				},
				{
					label: "수도",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(215,236,162,0.4)",
					borderColor: "rgba(215,236,162,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(215,236,162,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor: "rgba(215,236,162,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: waterArray
				},
				{
					label: "생활폐기물",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(162,163,236,0.4)",
					borderColor: "rgba(162,163,236,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(162,163,236,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor: "rgba(162,163,236,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: trashArray
				},
				{
					label: "음식물폐기물",
					fill: false,
					lineTension: 0.1,
					backgroundColor: "rgba(236,235,162,0.4)",
					borderColor: "rgba(236, 235,162,1)",
					borderCapStyle: 'butt',
					borderDash: [],
					borderDashOffset: 0.0,
					borderJoinStyle: 'miter',
					pointBorderColor: "rgba(236,235,162,1)",
					pointBackgroundColor: "#fff",
					pointBorderWidth: 1,
					pointHoverRadius: 5,
					pointHoverBackgroundColor: "rgba(236,235,162,1)",
					pointHoverBorderColor: "rgba(220,220,220,1)",
					pointHoverBorderWidth: 2,
					pointRadius: 1, 
					pointHitRadius: 10,
					data: trashFoodArray
				}
			]
		}
	});
</script>