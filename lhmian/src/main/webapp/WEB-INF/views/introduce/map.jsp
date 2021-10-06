<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
						<div class="overlay">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="">우리아파트</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/introduce/map">오시는길</a></li>
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
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">오시는길</h4>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>



      <div class="container" align="center">
			<div class="text-box white padding-4 col-7">
			
<div id="map" style="width:100%;height:500px;"></div>

      <div class="container" style="margin-bottom: 100px;">
        <div class="row">
  <div class="col-divider-margin-6"></div>
  
    <div class="col-md-12" >
  <ul class="port-project-info" style="font-size: 16px;" align="left">
    <li><b>주소: </b>대구광역시 중구 중앙대로 403 (남일동 135-1, 5층) 태왕 아너스 타워</li>
    <li><b>버스:</b><br>&nbsp &nbsp- 약령시앞 : 204, 304, 349, 401, 410-1, 503, 518, 650, 706, 730, 909, 급행2, 북구2
    <br>&nbsp &nbsp- 약령시건너(동성로입구) : 204, 304, 349, 401, 410, 503, 518, 650, 706, 730, 급행2</li>
    <li><b>지하철: </b><br>&nbsp &nbsp- 1호선 : 중앙로역(1번 출구, 도보 1~2분)
    <br>&nbsp &nbsp- 2호선 : 반월당역(14번 출구, 도보 5~7분)</li>
    <li><b>전화번호:</b> 053-421-2460</li>
<!--     <li><span>Website:</span> <a href="#" class="text-gyellow">www.example.com</a></li>-->
</ul>
</div>
</div>
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