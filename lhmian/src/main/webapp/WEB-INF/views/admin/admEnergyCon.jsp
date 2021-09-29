<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>에너지사용량-관리자</title>
</head>
<body>
  <div id="chart_div"></div>

</body>
<script>
google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawLineColors);

function drawLineColors() {
      var data = new google.visualization.DataTable();
      data.addColumn('number', 'X');
      data.addColumn('number', '일반관리비');
      data.addColumn('number', '가스');
      data.addColumn('number', '전기');
      data.addColumn('number', '수도');
      data.addColumn('number', '생활폐기물');
      data.addColumn('number', '음식물폐기물');
      
      data.addRows([
    	  [0, 0, 0],    [1, 10, 5, 10, 5, 10, 5],   [2, 23, 15, 23, 15, 23, 15],  [3, 17, 9, 17, 9, 17, 9],   [4, 18, 10],  [5, 9, 5],
          [6, 11, 3],   [7, 27, 19],  [8, 33, 25],  [9, 40, 32],  [10, 32, 24], [11, 35, 27],
          [12, 30, 22], [13, 40, 32], [14, 42, 34], [15, 47, 39], [16, 44, 36], [17, 48, 40],
          [18, 52, 44], [19, 54, 46], [20, 42, 34], [21, 55, 47], [22, 56, 48], [23, 57, 49],
          [24, 60, 52], [25, 50, 42], [26, 52, 44], [27, 51, 43], [28, 49, 41], [29, 53, 45],
          [30, 55, 47], [31, 60, 52], [32, 61, 53], [33, 59, 51], [34, 62, 54], [35, 65, 57],
          [36, 62, 54], [37, 58, 50], [38, 55, 47], [39, 61, 53], [40, 64, 56], [41, 65, 57],
          [42, 63, 55], [43, 66, 58], [44, 67, 59], [45, 69, 61], [46, 69, 61], [47, 70, 62],
          [48, 72, 64], [49, 68, 60], [50, 66, 58], [51, 65, 57], [52, 67, 59], [53, 70, 62],
          [54, 71, 63], [55, 72, 64], [56, 73, 65], [57, 75, 67], [58, 70, 62], [59, 68, 60],
          [60, 64, 56], [61, 60, 52], [62, 65, 57], [63, 67, 59], [64, 68, 60], [65, 69, 61],
          [66, 70, 62], [67, 72, 64], [68, 75, 67], [69, 80, 72]
      ]);
	}
	
      var options = {
        hAxis: {
          title: '월'
        },
        vAxis: {
          title: '월별 에너지 사용량'
        },
        colors: ['#a52714', '#097138', '#DAF7A6', '#FFC300', '#FF5733', '#581845']
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
      chart.draw(data, options);
	})
    }
</script>
</html>