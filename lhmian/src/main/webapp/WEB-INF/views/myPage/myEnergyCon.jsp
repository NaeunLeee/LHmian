<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.col-md-12 {
	margin: 10px;
}

.margin-bottom {
	margin-bottom: 50px;
	padding-bottom: 0
}

table {
	text-align: center;
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
			<div class="energyTable">
				
			</div>
		</div>
	</div>
</section>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pie-charts/chart/chart.js" type="text/javascript"></script>
<script>
	$(document).ready( function() {
		var thisData;
		var lastData;
		var thisDate;
		var lastDate;
	//차트-첫 로딩시 현재 월 차트 보여주고, 월 버튼 클릭시 해당 월의 데이터 표시
	var tagBar = "";
	tagBar += '<h4 class="uppercase">1년 그래프</h4>'
			+ '<br/>'
			+ '<canvas id="myBarChart"></canvas>'
	$(".bar-chart").html(tagBar);
	
	//금년데이터
	$.ajax({
		url : "thisEnergy",
		type : "get",
		data : {
			columnName : "ENG"
		},
		async: false,
		success : function(datas) {
			var data = [];
			var date = [];
			for(let i=0; i<datas.length; i++) {
				data.push(datas[i].eng);
				//mfDate에서 월만 추출
				var year;
				var month;
				var thisYear;
				
				year = datas[i].mfDate.substr(0, 2);
				month = datas[i].mfDate.substr(2, 3);
				thisYear = "20" + year + "." + month;
				//console.log(thisYear);
				date.push(thisYear);
			}
			thisData = data;
			thisDate = date;
			//console.log(thisData);
			//console.log(mfDate);
		},
		error : function(error) {
			console.log(error);
		}
	});
	
	//작년데이터
	$.ajax({
		url : "lastEnergy",
		type : "get",
		data : {
			columnName : "ENG"
		},
		async: false,
		success : function(datas) {
			var data = [];
			var date = [];
			if(datas.length != 12) {
				var temp = 12 - datas.length;
				for(let i=0; i<temp; i++) {
					data.push(0);
					date.push(" ");
				}
				for(let i=0; i<datas.length; i++) {
					data.push(datas[i].eng);
					
					//mfDate에서 월만 추출
					var year;
					var month;
					var lastYear;
					
					year = datas[i].mfDate.substr(0, 2);
					month = datas[i].mfDate.substr(2, 3);
					lastYear = "20" + year + "." + month;
					//console.log(lastYear);
					date.push(lastYear);
				}
			}
			lastData = data;
			lastDate = date;
			//console.log(lastData);
		},
		error : function(error) {
			console.log(error);
		}
	});

	bar(thisData, lastData);

	/* 바차트(월별) */
	function bar(thisData, lastData) {
		console.log(thisData);
		var ctx = document.getElementById('myBarChart').getContext('2d'); 
		var chart = new Chart(ctx, { 
			// type : 'bar' = 막대차트를 의미합니다. 
			type: 'bar', 
			data: { 
				labels: [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "],
				// 큰 분류(하단 데이터 이름)
			datasets: [ 
				{ label: '금년', //작은 분류 
 				backgroundColor: [ 'rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)','rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)' ,'rgba(75,192,192,1)', 'rgba(75,192,192,1)', 'rgba(75,192,192,1)'],
				data: thisData
				},
				{ label: '전년', //작은 분류 
	 				backgroundColor: [ 'rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)','rgba(215,236,162,1)','rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)', 'rgba(215,236,162,1)','rgba(215,236,162,1)' ],
					data: lastData
				}
			]}
		});
	};
	
	//lastDate lastData thisDate thisData

	var tagBar = "";
			tagBar += '<table border="1" id="frm">'
					+ '		<tr>'
					+ '			<th rowcols="2">금년</th>';
			
			for(let i=0; i<thisDate.length; i++) {
				tagBar += '<td>' + thisDate[i] + '</td>';
			}
			
			tagBar += '		</tr>'
					+ '		<tr>'
					+ '		<th></th>';
					
			for(let i=0; i<thisData.length; i++) {
				tagBar += '<td>' + thisData[i] + '</td>';
			}
	
			tagBar += '		</tr>'
			+ '				<tr>'
			+ '					<th rowcols="2">작년</th>';
			
			for(let i=0; i<lastDate.length; i++) {
				tagBar += '<td>' + lastDate[i] + '</td>';
			}
			tagBar += ' 	</tr>'
					+ '		<tr>'
					+ '		<th></th>';
				
			for(let i=0; i<lastData.length; i++) {
				tagBar += '<td>' + lastData[i] + '</td>';
			}
			
			tagBar += '		</tr>'
					+ '		<tr id="compare">'
					+ '			<th>비교값</th>';

			 for(let i=0; i<thisData.length; i++) {
			tagBar += '<td>' + (thisData[i] - lastData[i]) + '</td>';
			 console.log(thisData[i] - lastData[i]);
			} 
	
			tagBar += '		</tr>'
					+ '		<tr>'
					+ '			<th>비교아이콘</th>'; 
					
			function test(){

				var table1 = document.getElementById("frm");

				console.log(table1.rows[4].cells[0].innerHTML);


			}


				
				
			/* if('td' < -10 ) {
				tagBar += '<td><tmg src="${pageContext.request.contextPath}/resources/images/red.png"></td>';
			}else if(-10 <= 'td' < 10) {
				tagBar += '<td><tmg src="${pageContext.request.contextPath}/resources/images/yellow.png"></td>';
			}else if( 10 <= 'td') {
				tagBar += '<td><tmg src="${pageContext.request.contextPath}/resources/images/green.png"></td>';
			} */
		
			tagBar += '		</tr>'
					+ '</table>';
	$(".energyTable").html(tagBar);

		
	
});
</script>