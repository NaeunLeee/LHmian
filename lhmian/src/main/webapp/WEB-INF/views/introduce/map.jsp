<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
 <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<style>
.color-gray{
	color:#9d9999
}
.color-org{
	color:#e58d0a;
}
.port-project-info{
	font-size:15px;
	border:none;
}

.padding-bottom-200{
	padding-bottom: 200px;
}


</style>



	<section>
	      <div class="pagenation-holder-no-bottom">
	        <div class="container">
	          <div class="row" style="float:left">
	              <ol class="breadcrumb">
	                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
	                <li><a href="${pageContext.request.contextPath}/introduce/myApt">우리 아파트</a></li>
	                <li class="current"><a href="${pageContext.request.contextPath}/introduce/map">오시는 길</a></li>
	              </ol>
	            </div>
	            </div>
	            
	          </div>
	    </section>
	<div class="clearfix"></div>
	<!-- end section -->
	<section class="section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">오시는길</h4>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>



      <div class="container padding-bottom-200" align="center">
			<div class="text-box white padding-4 col-7">
			
		<div class="margin-bottom-4" id="map" style="width:100%; height:500px;"></div>

	<div class="text-box col-md-6" align="left">
	<ul class="port-project-info">
	    <li><h4 class="font-weight-6">주소 및 연락처</h4></li>
	    <li><b><i class="fas fa-map-marker-alt color-gray"></i> 주소: </b>대구광역시 중구 중앙대로 403 5층</li>
	    <li><b><i class="fas fa-phone color-gray"></i> 전화번호:</b> 053-421-2460</li>
	    <li><b><i class="fas fa-fax color-gray"></i> 팩스:</b> 053-356-3939</li>
	    <li><b><i class="fas fa-home color-gray"></i> 홈페이지:</b> <a href="http://www.daeguoracle.com/" class="text-gyellow">www.daeguoracle.com</a></li>
    </ul>
	</div>
	
	<div class="text-box col-md-6" align="left" style="border:none;">
	<ul class="port-project-info">
	    <li><h4 class="font-weight-6">대중교통</h4></li>
	    <li><b><i class="fas fa-bus color-org"></i> 버스</b><br>약령시앞 : 204, 304, 349, 401, 410-1, 503, 518, 650, 706, 730,
	    <br> 909, 급행2, 북구2
	    <li><b><i class="fas fa-subway color-org"></i> 지하철</b><br>1호선 : 중앙로역(1번 출구, 도보 1~2분)
   		<br>2호선 : 반월당역(14번 출구, 도보 5~7분)</li>
    </ul>
	</div>
</div>
</div>
</section>
<div class="clearfix"></div>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4cd6069a11e9e7879a858cca60c2cac6"></script>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(35.86908602996183, 128.59329750537435), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.86908602996183, 128.59329750537435); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);    
</script>