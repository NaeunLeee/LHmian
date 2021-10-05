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

 <section class="sec-padding">
  <div class="container">
  <div class="row">
  
  <div class="col-md-12">
  <img src="http://placehold.it/2000x900" alt="" class="img-responsive"/>                           
  </div>
  <!--end item-->
  
  <div class="col-divider-margin-6"></div>
  
    <div class="col-md-12">
  <ul class="port-project-info">
    <li><h3 style="font-weight: 700">총 0000세대 (일반 0000세대/조합 0000세대/임대 000세대)</h3></li>
    <li><span>date:</span> 26 August 2019</li>
    <li><span>Skills:</span> PSD / HTML5 / CSS3</li>
    <li><span>Client:</span>Benjamin</li>
    <li><span>Website:</span> <a href="#" class="text-gyellow">www.example.com</a></li>
</ul>
<div class="clearfix"></div>
  </div>
  <!--end item-->

  
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