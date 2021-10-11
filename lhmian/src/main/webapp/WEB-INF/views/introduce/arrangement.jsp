<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<section>
      <div class="pagenation-holder">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h4>배치도</h4>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">우리 아파트</a></li>
                <li class="current"><a href="${pageContext.request.contextPath}/introduce/phaseDiagram">배치도</a></li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
<div class="clearfix"></div>
<!-- end section -->

 <section class="sec-padding">
  <div class="container">
  <div class="row">
  <div class="cbp-item print motion">
            <a href="http://placehold.it/1200x900" class="cbp-caption cbp-lightbox"
               data-title="WhereTO App<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap">
                    <img src="http://placehold.it/760x900" alt="">
                </div>
                <div class="cbp-caption-activeWrap">
                    <div class="cbp-l-caption-alignCenter">
                        <div class="cbp-l-caption-body">
                            <div class="cbp-l-caption-title">WhereTO App</div>
                            <div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
  </div>
  </div>
  </section>
  
<div class="clearfix"></div>

 <section class="sec-padding">
  <div class="container">
  <div class="row">



<div id="js-grid-mosaic" class="cbp cbp-l-grid-mosaic">
        <div class="cbp-item web-design graphic" >
            <a href="http://placehold.it/1200x900" class="cbp-caption cbp-lightbox"
               data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap">
                    <img src="${pageContext.request.contextPath }/resources/images/sliders/배치도2.png" alt="">
                </div>
                <div class="cbp-caption-activeWrap">
                    <div class="cbp-l-caption-alignCenter">
                        <div class="cbp-l-caption-body" >
                            <div class="cbp-l-caption-title">Bolt UI</div>
                            <div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="cbp-item print motion" style="margin-left:10px;">
            <a href="http://placehold.it/1200x900" class="cbp-caption cbp-lightbox"
               data-title="World Clock Widget<br>by Paul Flavius Nechita">
                <div class="cbp-caption-defaultWrap">
                    <img src="${pageContext.request.contextPath }/resources/images/sliders/배치도22.png" alt="">
                </div>
                <div class="cbp-caption-activeWrap">
                    <div class="cbp-l-caption-alignCenter">
                        <div class="cbp-l-caption-body">
                            <div class="cbp-l-caption-title">World Clock Widget</div>
                            <div class="cbp-l-caption-desc">by Paul Flavius Nechita</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

  </div>
  </div>
  </div>
  </section>
<div class="clearfix"></div>
  <!-- end section -->

<!-- Scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/style-customizer.js"></script> 
<!-- Scripts END --> 

<!-- Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/parallax/jquery.parallax-1.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
<script>
$('#basicuse').jflickrfeed({
limit: 6,
qstrings: {
id: '133294431@N08'
},
itemTemplate: 
'<li>' +
'<a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a>' +
'</li>'
});
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/mosaic.js"></script> 
<script>
    $(window).load(function(){
      setTimeout(function(){

        $('.loader-live').fadeOut();
      },1000);
    })

  </script>
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>
  --%>
  
  
  
  
  
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.col-divider-margin-6{
	margin-top:130px
}
</style>

<section>
      <div class="pagenation-holder">
        <div class="container">
          <div class="row" style="float:left">
              <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/introduce/myApt">우리 아파트</a></li>
                <li class="current"><a href="${pageContext.request.contextPath}/introduce/arrangement">배치도</a></li>
              </ol>
            </div>
            </div>
        
        </div>
    </section>
<div class="clearfix"></div>

 <section>
      <div class="divider-line solid light"></div>
      <div class="container">
        <div class="row sec-padding">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <h5 class="uppercase font-weight-4 nopadding">자연에 예술 조경을 더해 명품 대단지를 완성하다</h5>
              <h2 class="uppercase font-weight-7 less-mar-1">Awesome Feature<span class="text-gyellow">s.</span></h2>
              <div class="ce4-title-line-1 less-mar"></div>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 40px"> <br/>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">엘리시아가든</h5>
              <div class="title-line"></div>
              <br/>
              <p>단지를 대표하는 <br>소나무와 함께 넓게 펼쳐진 <br>중심 커뮤니티</p>
            </div>
            <!--end feature box-->
            
            <div class="col-divider-margin-6"></div>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">조명폰드</h5>
              <div class="title-line"></div>
              <br/>
              <p>주위를 감싸는 수경시설과 그늘아래에서 여유를 즐기는 감성 공간</p>
            </div>
            <!--end feature box-->
            
            <div class="col-divider-margin-6"></div>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">바닥분수</h5>
              <div class="title-line"></div>
              <br/>
              <p>타원형의 광장을 따라 바닥분수와 휴게공간이 연결되는 생동감 넘치는 공간</p>
            </div>
            <!--end feature box--> 
            
          </div>
          <!--end item-->
          
          <div class="col-md-6 col-sm-6 col-xs-12"> <img src="${pageContext.request.contextPath }/resources/images/sliders/세로배치도.jpg" alt="" class="img-responsive"/> </div>
          <!--end item-->
          
          <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 40px"> <br/>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">산책로</h5>
              <div class="title-line"></div>
              <br/>
              <p>구릉형 지형을 따라 걷고 사색하며 눈앞에 펼쳐진 경관을 감상할 수 있는 산책로</p>
            </div>
            <!--end feature box-->
            
            <div class="col-divider-margin-6"></div>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">어린이 놀이터</h5>
              <div class="title-line"></div>
              <br/>
              <p>자녀와 부모가 함께 즐기는 다목적 공간으로 흥미로운 이야기가 있는 테마형 어린이놀이터</p>
            </div>
            <!--end feature box-->
            
            <div class="col-divider-margin-6"></div>
            <div class="ce4-feature-box-19 margin-bottom">
              <h5 class="uppercase title font-weight-5 nopadding title">주민운동시설</h5>
              <div class="title-line"></div>
              <br/>
              <p>가족의 건전한 여가 활동과 삶의 활기를 찾는 운동공간</p>
            </div>
            <!--end feature box--> 
            
          </div>
          <!--end item--> 
        </div>
      </div>
    </section>








<%--  <section class="sec-padding">
  <div class="container">
  <div class="row">
  
  <div class="col-md-12">
  <img src="${pageContext.request.contextPath }/resources/images/sliders/배치도.jpg" alt="" class="img-responsive"/>                           
  </div> --%>
  <!--end item-->
  
<!--   <div class="col-divider-margin-6"></div>
  
    <div class="col-md-12">
  <ul class="port-project-info">
    <li><h3 style="font-weight: 700">총 0000세대 (일반 0000세대/조합 0000세대/임대 000세대)</h3></li>
    <li><span>date:</span> 26 August 2019</li>
    <li><span>Skills:</span> PSD / HTML5 / CSS3</li>
    <li><span>Client:</span>Benjamin</li>
    <li><span>Website:</span> <a href="#" class="text-gyellow">www.example.com</a></li>
</ul>
<div class="clearfix"></div>
  </div> -->
  <!--end item-->

  <!-- 
  </div>
  </div>
  </section> -->
<div class="clearfix"></div>
  <!-- end section -->
  
  
  
  <!-- Scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/style-customizer.js"></script> 
<!-- Scripts END --> 

<!-- Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/parallax/jquery.parallax-1.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
<script>
$('#basicuse').jflickrfeed({
limit: 6,
qstrings: {
id: '133294431@N08'
},
itemTemplate: 
'<li>' +
'<a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a>' +
'</li>'
});
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/slider-projects.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/parallax/jquery.parallax-1.1.3.js"></script>  
<script>
    $(window).load(function(){
      setTimeout(function(){

        $('.loader-live').fadeOut();
      },1000);
    })

  </script>
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>