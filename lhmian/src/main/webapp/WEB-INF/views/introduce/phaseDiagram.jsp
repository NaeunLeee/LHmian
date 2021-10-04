<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<!--        <div id="js-filters-lightbox-gallery2" class="cbp-l-filters-button cbp-l-filters-left">
            <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">All</div>
            <div data-filter=".graphic" class="cbp-filter-item">Graphic</div>
            <div data-filter=".logos" class="cbp-filter-item">Logo</div>
            <div data-filter=".motion" class="cbp-filter-item">Motion</div>
        </div> -->
        
        <div id="js-filters-lightbox-gallery2" class="cbp-l-filters-buttonCenter">
<!--               <div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> All
                <div class="cbp-filter-counter"></div>
              </div> -->
              <div data-filter=".print" class="cbp-filter-item"> qqraphic
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".web-design" class="cbp-filter-item"> Branding
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".graphic" class="cbp-filter-item"> Graphic
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".motion" class="cbp-filter-item"> Photography
                <div class="cbp-filter-counter"></div>
              </div>
            </div>
    </div>
    
    
 <%--    <div id="js-grid-lightbox-gallery" class="cbp">
        <div class="cbp-item web-design graphic print motion">
            <a href="js/cubeportfolio/ajax-lightbox-gallery/project1.html" class="cbp-caption cbp-singlePageInline" data-title="World Clock Widget<br>by Paul Flavius Nechita" rel="nofollow">
                <div class="cbp-caption-defaultWrap">
                    <img src="http://placehold.it/1200x900" alt="">
                </div>
                <div class="cbp-caption-activeWrap">
                    <div class="cbp-l-caption-alignLeft">
                        <div class="cbp-l-caption-body">
                            <div class="cbp-l-caption-title">World Clock Widget</div>
                            <div class="cbp-l-caption-desc">by Paul Flavius Nechita</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="cbp-item web-design logos identity graphic">
            <a href="js/cubeportfolio/ajax-lightbox-gallery/project1.html" class="cbp-caption cbp-singlePageInline" data-title="Bolt UI<br>by Tiberiu Neamu" rel="nofollow">
                <div class="cbp-caption-defaultWrap">
                    <img src="http://placehold.it/1200x900" alt="">
                </div>
                <div class="cbp-caption-activeWrap">
                    <div class="cbp-l-caption-alignLeft">
                        <div class="cbp-l-caption-body">
                            <div class="cbp-l-caption-title">Bolt UI</div>
                            <div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div> --%>
    
    
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    
    
    
     <!-- START REVOLUTION SLIDER 5.0 -->

    		<div class="rev_slider_wrapper"> 
      <!-- START REVOLUTION SLIDER 5.0 auto mode -->
      		<div id="rev_slider" class="rev_slider"  data-version="5.0">
        	<ul>
          
          <!-- SLIDE  -->
          <li data-transition="fade"> 
            
            <!-- MAIN IMAGE --> 
            <img src="${pageContext.request.contextPath }/resources/images/sliders/ce3-1.jpg" alt=""  width="1920" height="1280"> 
            
            <!-- LAYER NR. 1 -->
            <div class="tp-caption" 
			data-x="['left','left','center','center']" data-hoffset="['10','40','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['50','120','30','10']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			 data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-start="1000" 
			data-responsive_offset="off" 
			data-responsive="on"			
			style="z-index: 5;text-transform:left;"> <img src="${pageContext.request.contextPath }/resources/images/sliders/phase-100.png" alt="" data-ww="['650px','302px','450','290']" data-hh="['550px','260px','387','249']" data-no-retina style="width: 250px;"> </div>
            
            <!-- LAYER NR. 2 -->
            <div class="tp-caption ce3-text-1 tp-resizeme" 
			data-x="['left','left','left','left']" data-hoffset="['700','395','80','80']" 
			data-y="['top','top','top','top']" data-voffset="['210','180','180','120']"
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
			data-transform_out="opacity:0;s:1000;s:1000;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="1500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 
			style="z-index: 5; white-space: nowrap;"></div>
            
            <!-- LAYER NR. 3 -->
            <div class="tp-caption roboto bold text-dark tp-resizeme" 
            data-x="['left','left','left','left']" data-hoffset="['730','450','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['180','180','420','220']"
            data-width="['auto','auto','auto','auto']"
            data-height="['auto','auto','auto','auto']"
            data-transform_idle="o:1;"
            data-fontsize="['60','60','40','30']"
            data-lineheight="['130','130','130','100']"
            data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
            data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
            data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
            data-start="2000" 
            data-splitin="none" 
            data-splitout="none" 
            data-responsive_offset="on"     
            style="z-index: 5; white-space: nowrap; font-size: 45px; line-height: 30px;">74㎡A </div>
            
            <!-- LAYER NR. 3 -->
<!--             <div class="tp-caption roboto bold text-dark tp-resizeme" 
           data-x="['left','left','left','left']" data-hoffset="['870','450','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['200','200','450','250']"
            data-width="['auto','auto','auto','auto']"
            data-height="['auto','auto','auto','auto']"
            data-transform_idle="o:1;"
            data-fontsize="['60','60','40','30']"
            data-lineheight="['130','130','130','100']"                             
            data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
            data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
            data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
            data-start="2500" 
            data-splitin="none" 
            data-splitout="none" 
            data-responsive_offset="on"     
            style="z-index: 5; white-space: nowrap; font-size: 30px; line-height: 30px;">Are </div>
            
            LAYER NR. 3
            <div class="tp-caption roboto bold text-dark tp-resizeme" 
           data-x="['left','left','left','left']" data-hoffset="['870','450','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['250','250','490','290']"
            data-width="['auto','auto','auto','auto']"
            data-height="['auto','auto','auto','auto']"
            data-transform_idle="o:1;"
            data-fontsize="['60','60','40','30']"
            data-lineheight="['130','130','130','100']"                             
            data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
            data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
            data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
            data-start="3000" 
            data-splitin="none" 
            data-splitout="none" 
            data-responsive_offset="on" 
    
            style="z-index: 5; white-space: nowrap; font-size: 30px; line-height: 30px;">Printer </div>
             -->
            <!-- LAYER NR. 3 -->
            <div class="tp-caption br-text-3 tp-resizeme" 
			data-x="['left','left','left','left']" data-hoffset="['730','450','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['300','300','580','380']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-fontsize="['15','15','15','13']"
			data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
			data-transform_out="opacity:0;s:1000;s:1000;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="2500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 
			style="z-index: 5; white-space: nowrap;">1BL | 전용면적: 51.94㎡ | 공급면적: 68.82㎡ | 계약면적: 104.43㎡ <br/>
              3BL | 전용면적: 51.94㎡ | 공급면적: 70.14㎡ | 계약면적: 106.56㎡</div>
            
            <!-- LAYER NR. 4 -->
            <div class="tp-caption sbut2"
			data-x="['left','left','left','left']" data-hoffset="['730','450','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['470','450','680','480']"
			data-speed="800"
			data-start="3000"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-endspeed="300"
			data-captionhidden="off"
			style="z-index: 6"> </div>
          </li>
          <!-- 첫 화면 끝 -->
          
          
          <!-- SLIDE  -->
          <li data-transition="fade"> 
            
            <!-- MAIN IMAGE --> 
            <img src="images/sliders/ce3-1.jpg" alt=""  width="1920" height="1280"> 
            
            <!-- LAYER NR. 1 -->
            
           <div class="tp-caption" 
			data-x="['left','left','center','center']" data-hoffset="['10','40','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['100','120','30','10']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			 data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-start="1000" 
			data-responsive_offset="off" 
			data-responsive="on"			
			style="z-index: 5;text-transform:left;"> <img src="${pageContext.request.contextPath }/resources/images/sliders/phase-100.png" class="img-responsive" alt=""  data-ww="['580px','302px','450','290']" data-hh="['480px','260px','387','249']" data-no-retina > </div>
			
            
            <!-- LAYER NR. 3 -->
            <div class="tp-caption" 
			data-x="['right','right','center','center']" data-hoffset="['10','40','100','100']" 
			data-y="['top','top','top','top']" data-voffset="['100','120','30','10']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			 data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-start="1500" 
			data-responsive_offset="off" 
			data-responsive="on"			
			style="z-index: 5;text-transform:left;"> <img src="${pageContext.request.contextPath }/resources/images/sliders/phase-100.png" class="img-responsive" alt=""  data-ww="['580px','302px','450','290']" data-hh="['480px','260px','387','249']" data-no-retina > </div>
            
 		</li>
        </ul>
        <div class="tp-leftarrow tparrows   noSwipe" style="top: 50%; transform: matrix(1, 0, 0, 1, 20, -20); left: 0px; visibility: hidden; opacity: 0;"></div>
        <div class="tp-rightarrow tparrows   noSwipe" style="top: 50%; transform: matrix(1, 0, 0, 1, -60, -20); left: 100%; visibility: hidden; opacity: 0;"></div>
      </div>
      <!-- END REVOLUTION SLIDER --> 
    </div>
    <div class="clearfix"></div>
    <!-- END OF SLIDER WRAPPER -->
    
    
    
    
    
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/lightbox-gallery.js"></script>

<!-- 슬라이드 Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jFlickrFeed/jflickrfeed.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/main-mosaic3.js"></script> 

<!-- REVOLUTION JS FILES --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
(Load Extensions only on Local File Systems ! 
The following part can be removed on Server for On Demand Loading) --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script> 
<script type="text/javascript">
	var tpj=jQuery;			
	var revapi4;
	tpj(document).ready(function() {
	if(tpj("#rev_slider").revolution == undefined){
	revslider_showDoubleJqueryError("#rev_slider");
	}else{
		revapi4 = tpj("#rev_slider").show().revolution({
		sliderType:"standard",
		jsFileLocation:"js/revolution-slider/js/",
		sliderLayout:"auto",
		dottedOverlay:"none",
		delay:9000,
		navigation: {
		keyboardNavigation:"off",
		keyboard_direction: "horizontal",
		mouseScrollNavigation:"off",
		onHoverStop:"off",
		arrows:{enable:true},
		touch:{
		touchenabled:"on",
		swipe_threshold: 75,
		swipe_min_touches: 1,
		swipe_direction: "horizontal",
		drag_block_vertical: false
	}
	,
										
										
										
	},
		viewPort: {
		enable:true,
		outof:"pause",
		visible_area:"80%"
	},
	responsiveLevels:[1240,1024,778,480],
	gridwidth:[1240,1024,778,480],
	gridheight:[740,640,830,580],
	lazyType:"smart",
		parallax: {
		type:"mouse",
		origo:"slidercenter",
		speed:2000,
		levels:[2,3,4,5,6,7,12,16,10,50],
		},
	shadow:0,
	spinner:"off",
	stopLoop:"off",
	stopAfterLoops:-1,
	stopAtSlide:-1,
	shuffle:"off",
	autoHeight:"off",
	hideThumbsOnMobile:"off",
	hideSliderAtLimit:0,
	hideCaptionAtLimit:0,
	hideAllCaptionAtLilmit:0,
	disableProgressBar:"on",
	debugMode:false,
		fallbacks: {
		simplifyAll:"off",
		nextSlideOnWindowFocus:"off",
		disableFocusListener:false,
		}
	});
	}
	});	/*ready*/
</script> 


<script>
    $(window).load(function(){
      setTimeout(function(){

        $('.loader-live').fadeOut();
      },1000);
    })

  </script>
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>