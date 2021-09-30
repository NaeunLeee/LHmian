<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="col-md-6 text-center margin-bottom">
		<h4 class="uppercase">Line Chart</h4>
		<br />
		<div id="myLineChart"></div>
	</div>
<script src="${pageContext.request.contextPath}/resources/1.1/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/1.1/js/functions/functions.js"></script>
<script src="${pageContext.request.contextPath}/resources/1.1/js/pie-charts/line-chart/jquery.pista.js" type="text/javascript" charset="utf-8"></script>
<script>
	var totalArry = [];
	let mfDate;
	<c:forEach var="list" items="${engList}">
		var tempArry = [];
		mfDate = ${list.mfDate}+'';
		mfDate = mfDate.substring(0,2) + "/" +  mfDate.substring(2,4);
		
		tempArry.push(${list.eng});
		tempArry.push(${list.gas});
		tempArry.push(${list.electric});
		tempArry.push(${list.water});
		tempArry.push(${list.trash});
		tempArry.push(${list.trashFood});
		totalArry.push(tempArry);
	</c:forEach>
	
    var ctx = document.getElementById("myLineChart");
    var myLineChart = Chart.Line(ctx, {
      type: 'line',
      data: {
        labels: [mfDate],
        datasets: [{
          label: ["일반관리비", "가스", "전기", "수도", "생활폐기물", "음식물폐기물"],
          fill: false,
          lineTension: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
          backgroundColor: ["rgba(75,192,192,0.4)", "rgba(162, 236, 191,0.4)", "rgba(236, 162, 183,0.4)", "rgba(215, 236, 162,0.4)", "rgba(162, 163, 236,0.4)", "rgba(236, 235, 162,0.4)"],
          borderColor: ["rgba(75,192,192,1)", "rgba(162, 236, 191, 1)", "rgba(236, 162, 183, 1)", "rgba(215, 236, 162, 1)", "rgba(162, 163, 236, 1)", "rgba(236, 235, 162, 1)"],
          borderCapStyle: ['butt', 'butt', 'butt', 'butt', 'butt', 'butt'],
          borderDash: [[], [], [], [], [], []],
          borderDashOffset: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
          borderJoinStyle: ['miter', 'miter', 'miter', 'miter', 'miter', 'miter'],
          pointBorderColor: ["rgba(75,192,192,1)", "rgba(162, 236, 191, 1)", "rgba(236, 162, 183, 1)", "rgba(215, 236, 162, 1)", "rgba(162, 163, 236, 1)", "rgba(236, 235, 162, 1)"],
          pointBackgroundColor: ["#fff", "#fff", "#fff", "#fff", "#fff", "#fff"],
          pointBorderWidth: [1, 1, 1, 1, 1, 1],
          pointHoverRadius: [5, 5, 5, 5, 5, 5],
          pointHoverBackgroundColor: ["rgba(75,192,192,1)", "rgba(162, 236, 191, 1)", "rgba(236, 162, 183, 1)", "rgba(215, 236, 162, 1)", "rgba(162, 163, 236, 1)", "rgba(236, 235, 162, 1)"],
          pointHoverBorderColor: ["rgba(220,220,220,1)", "rgba(220,220,220,1)", "rgba(220,220,220,1)", "rgba(220,220,220,1)", "rgba(220,220,220,1)", "rgba(220,220,220,1)"],
          pointHoverBorderWidth: [2, 2, 2, 2, 2, 2],
          pointRadius: [1, 1, 1, 1, 1, 1],
          pointHitRadius: [10, 10, 10, 10, 10, 10],
          data: tempArry
        }]
      },
    });
  </script>