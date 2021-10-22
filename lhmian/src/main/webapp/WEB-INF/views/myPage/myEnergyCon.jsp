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

img {
	width : 100px;
	height : 100px;
}

th, td {
width : 100px;
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
			<div class="btn1 col-md-12" id="categoryDiv">
				<label><input type="checkbox" class="check" id="eng" value="eng" >일반관리비</label>
				<label><input type="checkbox" class="check" id="gas"value="gas" >가스</label>
				<label><input type="checkbox" class="check" id="electric" value="electric" >전기</label>
				<label><input type="checkbox" class="check" id="water" value="water" >수도</label>
				<label><input type="checkbox" class="check" id="trash" value="trash" >생활폐기물</label>
				<label><input type="checkbox" class="check" id="trashFood" value="trash_food" >음식물폐기물</label>
				단위 : kWh
			</div>
			 <h4 class="uppercase">1년 그래프</h4>
				<br/>
			<canvas id="myBarChart"></canvas>
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
		// 체크 박스 하나만 클릭
      $(document).on("click", 'input[type="checkbox"]', function(){
         // 체크박스가 클릭 되었을 때
         if($(this).prop('checked')){  
            $('input[type="checkbox"]').prop('checked', false);
            $(this).prop('checked', true);
         }
      });
		
		var category;
		category =  $('#eng').val();
		thisYear(category);
		
      $(document).on("click", 'input', function(){
    	thisYear($(this).val()); 
      });
		
		var thisData;
		var lastData;
		var thisDate;
		var lastDate;
	//차트-첫 로딩시 현재 월 차트 보여주고, 월 버튼 클릭시 해당 월의 데이터 표시
	var tagBar = "";
	
	function thisYear(category) {	
		//금년데이터
		$.ajax({
			url : "thisEnergy",
			type : "get",
			data : {
				columnName : category
			},
			async: false,
			success : function(datas) {
				var data = [];
				var date = [];
				for(let i=0; i<datas.length; i++) {
				if(category == "eng") {
					data.push(datas[i].eng);
				}else if(category == "gas") {
					data.push(datas[i].gas);
				}
				else if(category == "electric") {
					data.push(datas[i].electric);
				}
				else if(category == "water") {
					data.push(datas[i].water);
				}
				else if(category == "trash") {
					data.push(datas[i].trash);
				}
				else if(category == "trash_food") {
					data.push(datas[i].trashFood);
				}
					//mfDate에서 월만 추출
					var year;
					var month;
					var thisYear;
					
					year = datas[i].mfDate.substr(0, 2);
					month = datas[i].mfDate.substr(2, 3);
					thisYear = "20" + year + "." + month;
					date.push(thisYear);
				}
				thisData = data;
				thisDate = date;
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
				columnName : category
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
						if(category == "eng") {
							data.push(datas[i].eng);
						}else if(category == "gas") {
							data.push(datas[i].gas);
						}
						else if(category == "electric") {
							data.push(datas[i].electric);
						}
						else if(category == "water") {
							data.push(datas[i].water);
						}
						else if(category == "trash") {
							data.push(datas[i].trash);
						}
						else if(category == "trash_food") {
							data.push(datas[i].trashFood);
						}
						
						//mfDate에서 월만 추출
						var year;
						var month;
						var lastYear;
						
						year = datas[i].mfDate.substr(0, 2);
						month = datas[i].mfDate.substr(2, 3);
						lastYear = "20" + year + "." + month;
						date.push(lastYear);
					}
				}
				lastData = data;
				lastDate = date;
			},
			error : function(error) {
				console.log(error);
			}
		});
		
		
		bar(thisData, lastData);
	
		/* 바차트(월별) */
		function bar(thisData, lastData) {
			var ctx = document.getElementById('myBarChart').getContext('2d'); 
			var labelName = [];
			var thisColor = [];
			var lastColor = [];
			for(let i=0; i<12; i++) {
				labelName.push(" ");
				thisColor.push('rgba(75,192,192,1)');
				lastColor.push('rgba(215,236,162,1)');
				var chart = new Chart(ctx, { 
					// type : 'bar' = 막대차트를 의미합니다. 
					type: 'bar', 
					data: { 
						labels: labelName,
						// 큰 분류(하단 데이터 이름)
					datasets: [ 
						{ label: '금년', //작은 분류 
		 				backgroundColor: thisColor,
						data: thisData
						},
						{ label: '전년', //작은 분류 
			 				backgroundColor: lastColor,
							data: lastData
						}
					]}
				});
			};
		};
	
		//위 데이터를 테이블로 뿌려줌
		var tagBar = "";
			tagBar += '<table border="1" id="chartTable">'
					+ '		<tr>'
					+ '			<th>금년</th>';
			
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
			+ '					<th>작년</th>';
			
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
			} 	
			 
			tagBar += '		</tr>'
					+ '</table>';
						
			//일단 테이블을 닫고 다음 td값들을 append			
			$(".energyTable").html(tagBar);	
				
			//태그바 초기화
			tagBar="";	
			var data = $("#compare").children();
			
			tagBar += '		<tr>'
					+ '			<th>비교아이콘</th>'; 
					
			for(let i=1; i<data.length; i++) {
				 temp = parseInt(data.eq(i).text());
				 //temp값에 따라 스마일마크 이미지 달라짐
				if(temp < -10 ) {
					tagBar += '<td>123<img src="${pageContext.request.contextPath}/resources/images/green.png"></td>';		
				}else if(temp < 10) {
					tagBar += '<td>234<img src="${pageContext.request.contextPath}/resources/images/yellow.png"></td>';
				}else{
					tagBar += '<td>345<img src="${pageContext.request.contextPath}/resources/images/red.png"></td>';
				} 
			}
			tagBar += '	</tr>';
				
		$('#chartTable').append(tagBar);
		}
});
</script>