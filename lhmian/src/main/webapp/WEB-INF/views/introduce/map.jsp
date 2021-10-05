<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>
      <div class="pagenation-holder">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h4>평형도</h4>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">우리 아파트</a></li>
                <li class="current"><a href="${pageContext.request.contextPath}/introduce/phaseDiagram">평형도</a></li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
<div class="clearfix"></div>
<!-- end section -->



<section class="sec-padding" style="padding-bottom: 20px;">
      <div class="container">
        <div class="row">
          <div class="clearfix">
<div id="map" style="width:500px;height:400px;"></div>
</div>
</div>
</div>
</section>

      <div class="container" style="margin-bottom: 100px;">
        <div class="row">
  <div class="col-divider-margin-6"></div>
  
    <div class="col-md-12">
  <ul class="port-project-info" style="font-size: 16px;">
    <li><span>주소:</span> John Doe</li>
    <li><span>버스:</span> 26 August 2019</li>
    <li><span>지하철:</span> PSD / HTML5 / CSS3</li>
    <li><span>전화번호:</span>Benjamin</li>
<!--     <li><span>Website:</span> <a href="#" class="text-gyellow">www.example.com</a></li>-->
</ul>
</div>
</div>
</div>
<div class="clearfix"></div>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4cd6069a11e9e7879a858cca60c2cac6"></script>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>