<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="chart_div"></div>
</body>
<script>

	var totalArry = [];
	let mfDate;
	<c:forEach var="list" items="${engList}" varStatus="status">
		var tempArry = [];
		mfDate = ${list.mfDate}+'';
		mfDate = mfDate.substring(0,2) + "/" +  mfDate.substring(2,4);
		console.log();
		tempArry.push(mfDate);
		tempArry.push(${list.eng});
		tempArry.push(${list.gas});
		tempArry.push(${list.electric});
		tempArry.push(${list.water});
		tempArry.push(${list.trash});
		tempArry.push(${list.trashFood});
		totalArry.push(tempArry);
	</c:forEach>
	console.log(totalArry);

	$(function() {
	google.charts.load('current', {
		packages : [ 'corechart', 'line' ]
	});
	google.charts.setOnLoadCallback(drawLineColors);

	function drawLineColors() {
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'X');
		data.addColumn('number', '일반관리비');
		data.addColumn('number', '가스');
		data.addColumn('number', '전기');
		data.addColumn('number', '수도');
		data.addColumn('number', '생활폐기물');
		data.addColumn('number', '음식물폐기물');

		
		data.addRows(totalArry);

		var options = {
			hAxis : {
				title : '월'
			},
			vAxis : {
				title : '월별 에너지 사용량'
			},
			colors : [ '#a52714', '#097138', '#DAF7A6', '#FFC300', '#FF5733',
					'#581845' ],
					width : '100%',
	        height: 500
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
	});
</script>
</html>