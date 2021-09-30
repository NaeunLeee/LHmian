<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Printer - Responsive MultiPurpose HTML5 Template</title>
<meta name="keywords" content="" />
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile view -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link rel="shortcut icon" href="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.css">

<!-- Google fonts  -->

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yesteryear" rel="stylesheet"> 


<!-- Template's stylesheets -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/corporate.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/et-line-font/et-line-font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/settings.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/layers.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/navigation.css">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<link href="${pageContext.request.contextPath}/resources/js/accordion/css/smk-accordion.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/ytplayer/ytplayer.css" />
<link href="${pageContext.request.contextPath}/resources/js/tabs/css/responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jFlickrFeed/style.css" />
<!-- Template's stylesheets END -->

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Style Customizer's stylesheets -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/spectrum.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/style-customizer.css">
<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/less/skin.less">
<!-- Style Customizer's stylesheets END -->

<!-- Skin stylesheet -->

</head>
<body>
<!-- <div class="over-loader loader-live">
  <div class="loader">
			<div class="loader-item style4">
				<div class="cube1"></div>
				<div class="cube2"></div>
			</div>
		</div>
</div> -->
<!--end loading--> 

<!-- Style Customizer -->
<section id="style-customizer">
  <div class="style-customizer-wrap form-horizontal">
    <h4 class="sc-header uppercase">Style Customizer</h4>
    <h5 class="uppercase">Layout Style</h5>
    <div class="sc-variable-row form-group">
      <div class="radio-group col-xs-12">
        <input type="radio" name="sc-layout-type" id="sc-layout-type-boxed" class="sc-variable" data-key="layoutType" value="boxed" checked>
        <input type="radio" name="sc-layout-type" id="sc-layout-type-wide" class="sc-variable" data-key="layoutType" value="wide">
        <label for="sc-layout-type-wide" class="style-fweight-normal">Wide</label>
        <label for="sc-layout-type-boxed" class="style-fweight-normal">Boxed</label>
      </div>
    </div>
    <fieldset id="outer-bg-section">
      <h5 class="customizer-style-tytle-padd">Outer Background Styles</h5>
      <div class="sc-variable-row form-group">
        <div class="col-xs-12">
          <select name="sc-bg-outer-type" id="sc-bg-outer-type" data-key="outerBgType" class="sc-variable col-xs-8">
            <option value="color" selected>Solid color</option>
            <option value="pattern">Pattern</option>
            <option value="image">Image</option>
          </select>
          <div class="col-xs-4">
            <div id="sc-bg-outer-color-wrap">
              <input type="color" name="sc-bg-outer-color" id="sc-bg-outer-color" class="sc-variable" data-key="outerBgColor">
            </div>
            <div id="sc-bg-outer-image-wrap">
              <input type="file" accept="image/*" name="sc-bg-outer-image" id="sc-bg-outer-image" class="sc-variable sr-only" data-key="outerBgImage">
              <label for="sc-bg-outer-image" class="sc-btn" title="Upload image"><i class="fa fa-upload"></i> </label>
            </div>
          </div>
        </div>
      </div>
    </fieldset>
    <h5 class="customizer-style-tytle-padd">Color Options</h5>
    <div class="sc-variable-row form-group style-form-group">
      <label for="sc-color-prim" class="col-xs-8 control-label color-text">Primary Color</label>
      <div class="col-xs-4">
        <input type="color" id="sc-color-prim" class="sc-variable" data-key="colorPrimary">
      </div>
    </div>
    <div class="style-divider-line"></div>
    <div class="sc-variable-row form-group style-form-group style-tpadd">
      <label for="sc-color-second" class="col-xs-8 control-label color-text">Secondary Color</label>
      <div class="col-xs-4">
        <input type="color" id="sc-color-second" class="sc-variable" data-key="colorSecondary">
      </div>
    </div>
    <div class="style-divider-line"></div>
    <div class="sc-variable-row form-group style-form-group style-tpadd">
      <label for="sc-color-third" class="col-xs-8 control-label color-text">Tertiary Color</label>
      <div class="col-xs-4">
        <input type="color" id="sc-color-third" class="sc-variable" data-key="colorTertiary">
      </div>
    </div>
    <br/>
    <div class="form-group">
      <div class="col-xs-12">
        <button class="sc-btn" id="sc-download-css"><i class="fa fa-download"></i> Get CSS file</button>
      </div>
    </div>
    <br/>
    <br/>
    <div> <a class="sty-demo-btn" href="https://codelayers.net/templates/printer/demo/demo.html" target="_blank">Demos</a> </div>
  </div>
  <button id="sc-toggle" title="Styles Customizer"><i class="fa fa-wrench"></i> </button>
</section>
<div class="modal fade" tabindex="-1" role="dialog" id="afterSaveCSSFileModal" aria-labelledby="afterSaveCSSFileModalLabel">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="afterSaveCSSFileModalLabel">File saved</h4>
      </div>
      <div class="modal-body"> In order to apply the generated custom styles to your template, please follow these steps:
        <ol>
          <li class="sc-after-save-todo-point-file">Upload the "skin.css" file to "css" directory in your template</li>
          <li class="sc-after-save-todo-point-image">Upload the image file to "img" directory in your template. Keep the image file name unchanged.</li>
          <li class="sc-after-save-todo-point-stylesheet-code"> Copy this code and paste it into "index.html" file in your template, after the line marked as <code>&lt;!-- Skin stylesheet --&gt;</code>
            <pre><code>&lt;link rel="stylesheet" href="css/skin.css"&gt;</code></pre>
          </li>
          <li class="sc-after-save-todo-point-preloader"> Copy this code and paste it into "index.html" file in your template, after the line marked as <code>&lt;!-- Preloader icon --&gt;</code>
            <pre><code class="sc-preloader-html"></code></pre>
          </li>
        </ol>
      </div>
    </div>
  </div>
</div>
<!-- Style customizer END -->

<div class="wrapper-boxed">
  <div class="site-wrapper">
    <div class="col-md-12 nopadding">
      <div class="header-section style1 noborder no-bg fn-mar pin-style">
        <div class="container">
          <div class="mod-menu">
            <div class="row">
              <div class="col-sm-2"> <a href="index-corporate.html" title="" class="logo style-2 mar-4"> <img src="images/logo/f-logo.png" alt=""> </a> </div>
              <div class="col-sm-10">
                <div class="main-nav">
                  <ul class="nav navbar-nav top-nav">
                    <li class="search-parent"> <a href="javascript:void(0)" title="" class="m-link"><i aria-hidden="true" class="fa fa-search"></i></a>
                      <div class="search-box ">
                        <div class="content">
                          <div class="form-control">
                            <input type="text" placeholder="Type to search" />
                            <a href="#" class="search-btn mar-2"><i aria-hidden="true" class="fa fa-search"></i></a> </div>
                          <a href="#" class="close-btn mar-1">x</a> </div>
                      </div>
                    </li>
                    <li class="cart-parent"> <a href="javascript:void(0)" title="" class="m-link"> <i aria-hidden="true" class="fa fa-shopping-cart"></i> <span class="number mar2"> 4 </span> </a>
                      <div class="cart-box">
                        <div class="content">
                          <div class="row">
                            <div class="col-xs-8"> 2 item(s) </div>
                            <div class="col-xs-4 text-right"> <span>$99</span> </div>
                          </div>
                          <ul>
                            <li> <img src="http://placehold.it/80x80" alt=""> Jean & Teashirt <span>$30</span> <a href="#" title="" class="close-btn">x</a> </li>
                            <li> <img src="http://placehold.it/80x80" alt=""> Jean & Teashirt <span>$30</span> <a href="#" title="" class="close-btn">x</a> </li>
                          </ul>
                          <div class="row">
                            <div class="col-xs-6"> <a href="#" title="View Cart" class="btn btn-block btn-warning">View Cart</a> </div>
                            <div class="col-xs-6"> <a href="#" title="Check out" class="btn btn-block btn-primary">Check out</a> </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li class="visible-xs menu-icon"> <a href="javascript:void(0)" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false"> <i aria-hidden="true" class="fa fa-bars"></i> </a> </li>
                  </ul>
                  <div id="menu" class="collapse">
                    <ul class="nav navbar-nav">
                      <li class="mega-menu six-col active"> <a href="index.html">Home</a> <span class="arrow"></span>
                        <ul>
                          <li> <a href="#">Corporate Demos</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-corporate2.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 2</a> </li>
                              <li> <a href="index-corporate3.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 3</a> </li>
                              <li> <a href="index-corporate4.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 4</a> </li>
                              <li> <a href="index-corporate5.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 5</a> </li> 
                              <li> <a href="index-corporate6.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 6</a> </li>
                              <li> <a href="index-corporate7.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Layout 7</a> </li>
                              <li class="active"> <a href="index-corporate.html"><i class="fa fa-angle-right"></i> &nbsp; Corporate Default</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Categories 1</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-construction.html"><i class="fa fa-angle-right"></i> &nbsp; Construction</a> </li>
                              <li> <a href="index-restaurant.html"><i class="fa fa-angle-right"></i> &nbsp; Restaurant</a> </li>
                              <li> <a href="index-creative.html"><i class="fa fa-angle-right"></i> &nbsp; Creative</a> </li>
                              <li> <a href="index-hairsaloon.html"><i class="fa fa-angle-right"></i> &nbsp; Hair Saloon</a> </li>
                              <li> <a href="index-fashion.html"><i class="fa fa-angle-right"></i> &nbsp; Fashion</a> </li>
                              <li> <a href="index-gym.html"><i class="fa fa-angle-right"></i> &nbsp; Gym</a> </li>
                              <li> <a href="index-agro.html"><i class="fa fa-angle-right"></i> &nbsp; Agro</a> </li>
                              <li> <a href="index-band.html"><i class="fa fa-angle-right"></i> &nbsp; Band</a> </li>
                              <li> <a href="index-bar.html"><i class="fa fa-angle-right"></i> &nbsp; Bar</a> </li>
                              <li> <a href="index-beauty.html"><i class="fa fa-angle-right"></i> &nbsp; Beauty</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Categories 2</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-hotel.html"><i class="fa fa-angle-right"></i> &nbsp; Hotel</a> </li>
                              <li> <a href="index-jewellery.html"><i class="fa fa-angle-right"></i> &nbsp; Jewellery</a> </li>
                              <li> <a href="index-hosting.html"><i class="fa fa-angle-right"></i> &nbsp; Hosting</a> </li>
                              <li> <a href="index-transport.html"><i class="fa fa-angle-right"></i> &nbsp; Transport</a> </li>
                              <li> <a href="index-icecream.html"><i class="fa fa-angle-right"></i> &nbsp; Icecream</a> </li>
                              <li> <a href="index-bakery.html"><i class="fa fa-angle-right"></i> &nbsp; Bakery</a> </li>
                              <li> <a href="index-blog.html"><i class="fa fa-angle-right"></i> &nbsp; Blog</a> </li>
                              <li> <a href="index-blog2.html"><i class="fa fa-angle-right"></i> &nbsp; Blog 2</a> </li>
                              <li> <a href="index-builder.html"><i class="fa fa-angle-right"></i> &nbsp; Builder</a> </li>
                              <li> <a href="index-cafe.html"><i class="fa fa-angle-right"></i> &nbsp; Cafe</a> </li>
                              
                            </ul>
                          </li>
                          <li> <a href="#">Categories 3</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-barber.html"><i class="fa fa-angle-right"></i> &nbsp; Barber</a> </li>
                              <li> <a href="index-school.html"><i class="fa fa-angle-right"></i> &nbsp; School</a> </li>
                              <li> <a href="index-dental.html"><i class="fa fa-angle-right"></i> &nbsp; Dental</a> </li>
                              <li> <a href="index-winery.html"><i class="fa fa-angle-right"></i> &nbsp; Winery</a> </li>
                              <li> <a href="index-yoga.html"><i class="fa fa-angle-right"></i> &nbsp; Yoga</a> </li>
                              <li> <a href="index-church.html"><i class="fa fa-angle-right"></i> &nbsp; Church</a> </li>
                              <li> <a href="index-cafe2.html"><i class="fa fa-angle-right"></i> &nbsp; Cafe 2</a> </li>
                              <li> <a href="index-casino.html"><i class="fa fa-angle-right"></i> &nbsp; Casino</a> </li>
                              <li> <a href="index-charity.html"><i class="fa fa-angle-right"></i> &nbsp; Charity</a> </li>
                              <li> <a href="index-cosmetics.html"><i class="fa fa-angle-right"></i> &nbsp; Cosmetics</a> </li>
                              
                            </ul>
                          </li>
                          
                          <li> <a href="#">Categories 4</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-education.html"><i class="fa fa-angle-right"></i> &nbsp; Education</a> </li>
                              <li> <a href="index-farmer.html"><i class="fa fa-angle-right"></i> &nbsp; Farmer</a> </li>
                              <li> <a href="index-finance.html"><i class="fa fa-angle-right"></i> &nbsp; Finance</a> </li>
                              <li> <a href="index-finance2.html"><i class="fa fa-angle-right"></i> &nbsp; Finance 2</a> </li>
                              <li> <a href="index-hotel2.html"><i class="fa fa-angle-right"></i> &nbsp; hotel 2</a> </li>
                              <li> <a href="index-mechanic.html"><i class="fa fa-angle-right"></i> &nbsp; Mechanic</a> </li>  
                              <li> <a href="index-plumber.html"><i class="fa fa-angle-right"></i> &nbsp; Plumber</a> </li>
                              <li> <a href="index-pro-landing.html"><i class="fa fa-angle-right"></i> &nbsp; Product Landing</a> </li>
                              <li> <a href="index-realestate.html"><i class="fa fa-angle-right"></i> &nbsp; Realestate</a> </li>
                              <li> <a href="shop-full-width.html"><i class="fa fa-angle-right"></i> &nbsp; Shop</a> </li> 
                            </ul>
                          </li>
                          
                          <li> <a href="#">Categories 5</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-university.html"><i class="fa fa-angle-right"></i> &nbsp; University</a> </li>
                              <li> <a href="index-wedding.html"><i class="fa fa-angle-right"></i> &nbsp; Wedding</a> </li>  
                              <li> <a href="index-hairsaloon2.html"><i class="fa fa-angle-right"></i> &nbsp; Hair Saloon 2</a> </li>
                              <li> <a href="index-blog3.html"><i class="fa fa-angle-right"></i> &nbsp; Blog 3</a> </li>
                              <li> <a href="index-medical.html"><i class="fa fa-angle-right"></i> &nbsp; Medical</a> </li>
                              <li> <a href="#"><i class="fa fa-angle-right"></i> &nbsp; View all Demos</a> </li> 
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li> <a href="slider-kenburns.html" class="m-link">Pages</a> <span class="arrow"></span>
                        <ul class="dm-align-2">
                          <li> <a href="#">About <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-about1.html">About Style 1</a> </li>
                              <li> <a href="page-about2.html">About Style 2</a> </li>
                              <li> <a href="page-about3.html">About Style 3</a> </li>
                              <li> <a href="page-about4.html">About Style 4</a> </li>
                              <li> <a href="page-about5.html">About Me</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Services <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-services1.html">Services Style 1</a> </li>
                              <li> <a href="page-services2.html">Services Style 2</a> </li>
                              <li> <a href="page-services3.html">Services Style 3</a> </li>
                              <li> <a href="page-services4.html">Services Style 4</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Team <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-team-classic.html">Team Classic</a> </li>
                              <li> <a href="page-team-parallax.html">Team Parallax</a> </li>
                              <li> <a href="page-team-dark.html">Team dark Style</a> </li>
                              <li> <a href="page-team-creative.html">Team Creative</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">FAQ <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-faq1.html">FAQ Style 1</a> </li>
                              <li> <a href="page-faq2.html">FAQ Style 2</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Contact<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-contact.html">Contact Classic</a> </li>
                              <li> <a href="page-contact-left-sidebar.html">Contact Left Sidebar</a> </li>
                              <li> <a href="page-contact-right-sidebar.html">Contact Right Sidebar</a> </li>
                              <li> <a href="page-contact-map.html">Full Width Map</a> </li>
                              <li> <a href="page-contact-parallax.html">Contact Parallax</a> </li>
                              <li> <a href="page-contact-captcha.php">Contact With Captcha</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Other Pages 1<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-full-width.html">Full Width Page</a></li>
                              <li> <a href="page-left-sidebar.html">Left Sidebar</a></li>
                              <li> <a href="page-right-sidebar.html">Right Sidebar</a></li>
                              <li> <a href="page-packages.html">Package Plans</a></li>
                              <li> <a href="page-careers.html">Careers</a></li>
                              <li> <a href="page-coming-soon.html">Coming Soon</a></li>
                            </ul>
                          </li>
                          <li> <a href="#">Other Pages 2<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="page-login.html">Login</a></li>
                              <li> <a href="page-register.html">Register</a></li>
                              <li> <a href="page-sitemap.html">Sitemap</a></li>
                              <li> <a href="page-maintenance.html">Maintenance</a></li>
                              <li> <a href="page-404.html">404 Error Page</a></li>
                              <li> <a href="page-404-2.html">404 Error Page 2</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li> <a href="slider-kenburns.html" class="m-link">Features</a> <span class="arrow"></span>
                        <ul class="dm-align-2">
                          <li> <a href="#">Sliders <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="slider-kenburns.html">KenBurns</a> </li>
                              <li> <a href="slider-parallax.html">Parallax</a> </li>
                              <li> <a href="slider-3d.html">3D</a> </li>
                              <li> <a href="slider-carousel.html">Carousel</a> </li>
                              <li> <a href="slider-gallery.html">Gallery</a> </li>
                              <li> <a href="slider-scroll-effect.html">Scroll Efects</a> </li>
                              <li> <a href="slider-vimeo.html">Vimeo Video</a> </li>
                              <li> <a href="slider-youtube.html">Youtube Video</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Headers <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-beauty.html">Header Light</a> </li>
                              <li> <a href="index-cafe.html">Header Dark</a> </li>
                              <li> <a href="index-bakery.html">Header Modern</a> </li>
                              <li> <a href="index-hotel.html">Header Transparent</a> </li>
                              <li> <a href="index-farmer.html">Header Creative</a> </li>
                              <li> <a href="index-corporate4.html">Header Left Logo</a> </li>
                              <li> <a href="index-bakery.html">Header Center Logo</a> </li>
                              <li> <a href="index-mechanic.html">Header White</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Menu Styles <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-barber.html">Menu Transparent</a> </li>
                              <li> <a href="index-creative.html">Menu Left logo</a> </li>
                              <li> <a href="index-realestate.html">Menu Right Logo</a> </li>
                              <li> <a href="index-toys.html">Menu Dark</a> </li>
                              <li> <a href="index-bakery.html">Menu Center Logo</a> </li>
                              <li> <a href="index-agro.html">Menu Boxed</a> </li>
                              <li> <a href="index-icecream.html">Menu Center</a> </li><li> <a href="onepage-corporate.html">Menu One Page</a> </li>
                              <li> <a href="onepage-leftsidebar.html">Dark Left Side Menu</a> </li>
                              
                            </ul>
                          </li>
                          <li> <a href="#">Loading Styles<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="loading-style1.html">Loading Style 1</a> </li>
                              <li> <a href="loading-style2.html">Loading Style 2</a> </li>
                              <li> <a href="loading-style3.html">Loading Style 3</a> </li>
                              <li> <a href="loading-style4.html">Loading Style 4</a> </li>
                              <li> <a href="loading-style5.html">Loading Style 5</a> </li>
                              <li> <a href="loading-style6.html">Loading Style 6</a> </li>
                              <li> <a href="loading-style7.html">Loading Style 7</a> </li>
                              <li> <a href="loading-style8.html">Loading Style 8</a> </li>
                              <li> <a href="loading-style9.html">Loading Style 9</a> </li>
                              <li> <a href="loading-style10.html">Loading Style 10</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Footer Styles<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="index-corporate4.html">Footer Dark</a> </li>
                              <li> <a href="shop-full-width.html">Footer Light</a> </li>
                              <li> <a href="index-fashion.html">Footer Simple</a> </li>
                              <li> <a href="index-beauty.html">Footer Parallax</a> </li>
                              <li> <a href="index-corporate7.html">Footer Big</a> </li>
                              <li> <a href="index-pro-landing.html">Footer Modern</a> </li>
                              <li> <a href="shortcodes-maps.html">Footer With Map</a> </li>
                              <li> <a href="index-band.html">Footer Transparent</a> </li>
                              <li> <a href="index-cosmetics.html">Footer Classic</a> </li>
                            </ul>
                            
                          </li>
                          <li> <a href="#">Videos<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="shortcodes-videos.html">Youtube Videos</a> </li>
                              <li> <a href="shortcodes-videos.html">Vimeo Videos</a> </li>
                              <li> <a href="shortcodes-videos.html">HTML 5 Videos</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Layered PSD Files</a> </li>
                          <li> <a href="#">Unlimited Colors</a> </li>
                          <li> <a href="#">Wide & Boxed</a> </li>
                        </ul>
                      </li>
                      <li class="mega-menu"> <a href="header-style3.html" class="m-link">Portfolio</a> <span class="arrow"></span>
                        <ul>
                          <li> <a href="#" title="home samples">Portfolio columns</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="portfolio-1-columns.html"><i class="fa fa-angle-right"></i> &nbsp; One Column</a> </li>
                              <li> <a href="portfolio-2-columns.html"><i class="fa fa-angle-right"></i> &nbsp; Two Column</a> </li>
                              <li> <a href="portfolio-3-columns.html"><i class="fa fa-angle-right"></i> &nbsp; Three Column</a> </li>
                              <li> <a href="portfolio-4-columns.html"><i class="fa fa-angle-right"></i> &nbsp; Four Column</a> </li>
                              <li> <a href="portfolio-5-columns.html"><i class="fa fa-angle-right"></i> &nbsp; Five Column</a> </li>
                              <li> <a href="portfolio-6-columns.html"><i class="fa fa-angle-right"></i> &nbsp; Six Column</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Portfolio Styles</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="portfolio-masonry.html"><i class="fa fa-angle-right"></i> &nbsp; Masonry</a> </li>
                              <li> <a href="portfolio-masonry-projects.html"><i class="fa fa-angle-right"></i> &nbsp; Masonry-Projects</a> </li>
                              <li> <a href="portfolio-mosaic.html"><i class="fa fa-angle-right"></i> &nbsp; Mosaic</a> </li>
                              <li> <a href="portfolio-mosaic-flat.html"><i class="fa fa-angle-right"></i> &nbsp; Mosaic-Flat</a> </li>
                              <li> <a href="portfolio-mosaic-projects.html"><i class="fa fa-angle-right"></i> &nbsp; Mosaic-Projects</a> </li>
                              <li> <a href="portfolio-slider-projects.html"><i class="fa fa-angle-right"></i> &nbsp; slider-projects</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Portfolio Styles</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="portfolio-full-width.html"><i class="fa fa-angle-right"></i> &nbsp; Full Width</a> </li>
                              <li> <a href="portfolio-gallery.html"><i class="fa fa-angle-right"></i> &nbsp; Gallery</a> </li>
                              <li> <a href="portfolio-classic.html"><i class="fa fa-angle-right"></i> &nbsp; Classic</a> </li>
                              <li> <a href="portfolio-nospace.html"><i class="fa fa-angle-right"></i> &nbsp; No Space</a> </li>
                              <li> <a href="portfolio-boxed-size.html"><i class="fa fa-angle-right"></i> &nbsp; Boxed Size</a> </li>
                              <li> <a href="portfolio-modern.html"><i class="fa fa-angle-right"></i> &nbsp; Modern</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Portfolio Single Page</a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="portfolio-parallax.html"><i class="fa fa-angle-right"></i> &nbsp; Parallax Image</a> </li>
                              <li> <a href="portfolio-video.html"><i class="fa fa-angle-right"></i> &nbsp; Video Background</a> </li>
                              <li> <a href="portfolio-left-sidebar.html"><i class="fa fa-angle-right"></i> &nbsp; Left Sidebar</a> </li>
                              <li> <a href="portfolio-right-sidebar.html"><i class="fa fa-angle-right"></i> &nbsp; Right Sidebar</a> </li>
                              <li> <a href="portfolio-carousel.html"><i class="fa fa-angle-right"></i> &nbsp; Carousel</a> </li>
                              <li> <a href="portfolio-fullwidth-image.html"><i class="fa fa-angle-right"></i> &nbsp; Full width Image</a> </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="mega-menu five-col"> <a href="carousel-sliders.html" class="m-link">Shortcodes</a> <span class="arrow"></span>
                        <ul>
                          <li> <a href="#">Shortcodes 1</a> <span class="arrow"></span>
                            <ul>
                              <li><a href="shortcodes-accordions.html"><i class="fa fa-plus-circle"></i> &nbsp; Accordions</a> </li>
                              <li><a href="shortcodes-alerts.html"><i class="fa fa-exclamation" aria-hidden="true"></i> &nbsp; Alerts</a> </li>
                              <li><a href="shortcodes-animations.html"><i class="fa fa-bars"></i> &nbsp; Animations</a> </li>
                              <li><a href="shortcodes-blockquotes.html"><i class="fa fa-quote-right" aria-hidden="true"></i> &nbsp; Blockquotes</a> </li>
                              <li><a href="shortcodes-breadcrumbs.html"><i class="fa fa-share" aria-hidden="true"></i> &nbsp; Breadcrumbs</a> </li>
                              <li><a href="shortcodes-buttons.html"><i class="fa fa-external-link" aria-hidden="true"></i> &nbsp; Buttons</a> </li>
                              <li><a href="shortcodes-call-to-action.html"><i class="fa fa-level-up" aria-hidden="true"></i> &nbsp; Call to Action</a> </li>
                              <li><a href="shortcodes-clients-logos.html"><i class="fa fa-user" aria-hidden="true"></i> &nbsp; Clients Logos</a> </li>
                              <li><a href="shortcodes-carousel-sliders.html"><i class="fa fa-sort" aria-hidden="true"></i> &nbsp; Carousel Sliders</a> </li>
                              <li><a href="shortcodes-counters.html"><i class="fa fa-text-height" aria-hidden="true"></i> &nbsp; Counters</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Shortcodes 2</a> <span class="arrow"></span>
                            <ul>
                              <li><a href="shortcodes-content-boxes.html"><i class="fa fa-th" aria-hidden="true"></i> &nbsp; Content Boxes</a> </li>
                              <li><a href="shortcodes-data-tables.html"><i class="fa fa-table" aria-hidden="true"></i> &nbsp; Data Tables</a> </li>
                              <li><a href="shortcodes-date-pickers.html"><i class="fa fa-calendar" aria-hidden="true"></i> &nbsp; Date Pickers</a> </li>
                              <li><a href="shortcodes-dropcaps.html"><i class="fa fa-font" aria-hidden="true"></i> &nbsp; Dropcap & Highlight</a> </li>
                              <li><a href="shortcodes-dividers.html"><i class="fa fa-minus" aria-hidden="true"></i> &nbsp; Dividers</a> </li>
                               <li><a href="shortcodes-file-uploads.html"><i class="fa fa-upload" aria-hidden="true"></i> &nbsp; File Uploads</a> </li>
                              <li><a href="shortcodes-forms.html"><i class="fa fa-envelope" aria-hidden="true"></i> &nbsp; Forms</a> </li>
                              <li><a href="shortcodes-grids.html"><i class="fa fa-th-list" aria-hidden="true"></i> &nbsp; Grids</a> </li>
                              <li><a href="shortcodes-heading-styles.html"><i class="fa fa-text-height" aria-hidden="true"></i> &nbsp; Heading Styles</a> </li>
                              <li><a href="shortcodes-hover-styles.html"><i class="fa fa-picture-o" aria-hidden="true"></i> &nbsp; Hover Styles</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Shortcodes 3</a> <span class="arrow"></span>
                            <ul>
                              <li><a href="shortcodes-icon-boxes.html"><i class="fa fa-th-large" aria-hidden="true"></i> &nbsp; Icon Boxes</a> </li>
                              <li><a href="shortcodes-icon-circles.html"><i class="fa fa-circle-o" aria-hidden="true"></i> &nbsp; Icon Circles</a> </li>
                              <li><a href="shortcodes-countdown-timers.html"><i class="fa fa-bars" aria-hidden="true"></i> &nbsp; Countdown Timers</a> </li>
                              <li><a href="shortcodes-icon-lists.html"><i class="fa fa-list" aria-hidden="true"></i> &nbsp; Icon Lists</a> </li>
                              <li><a href="shortcodes-images.html"><i class="fa fa-picture-o" aria-hidden="true"></i> &nbsp; Images</a> </li>
                              <li><a href="shortcodes-labels-and-badges.html"><i class="fa fa-adjust" aria-hidden="true"></i> &nbsp; Labels and Badges</a> </li>
                              <li><a href="shortcodes-lightbox.html"><i class="fa fa-th" aria-hidden="true"></i> &nbsp; Lightbox</a> </li>
                              <li><a href="shortcodes-lists.html"><i class="fa fa-list-ul" aria-hidden="true"></i> &nbsp; Lists</a> </li>
                              <li><a href="shortcodes-maps.html"><i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp; Maps</a> </li>
                              <li><a href="shortcodes-modal-popup.html"><i class="fa fa-search-plus" aria-hidden="true"></i> &nbsp; Modal Popup</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Shortcode 4</a> <span class="arrow"></span>
                            <ul>
                              <li><a href="shortcodes-pagenation.html"><i class="fa fa-exchange" aria-hidden="true"></i> &nbsp; Pagenation</a> </li>
                              <li><a href="shortcodes-parallax-backgrounds.html"><i class="fa fa-align-center" aria-hidden="true"></i> &nbsp; Parallax Backgrounds</a> </li>
                              <li><a href="shortcodes-pricing-tables.html"><i class="fa fa-table" aria-hidden="true"></i> &nbsp; Pricing Tables</a> </li>
                              <li><a href="shortcodes-pie-charts.html"><i class="fa fa-pie-chart" aria-hidden="true"></i> &nbsp; Pie Charts</a> </li>
                              <li><a href="shortcodes-pricing-badges.html"><i class="fa fa-external-link"></i> &nbsp; Pricing Badges</a> </li>
                               <li><a href="shortcodes-progress-bars.html"><i class="fa fa-outdent" aria-hidden="true"></i> &nbsp; Progress Bars</a> </li>
<li><a href="shortcodes-process-steps.html"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> &nbsp; Process Steps</a> </li>
                              <li><a href="shortcodes-post-styles.html"><i class="fa fa-pencil" aria-hidden="true"></i> &nbsp; Post Styles</a> </li>
                              <li><a href="shortcodes-toogle-switches.html"><i class="fa fa-toggle-on" aria-hidden="true"></i> &nbsp; Toogle Switches</a> </li>
                              <li><a href="shortcodes-timeline.html"><i class="fa fa-align-left" aria-hidden="true"></i> &nbsp; Timeline</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Shortcode 5</a> <span class="arrow"></span>
                            <ul>
                              <li><a href="shortcodes-star-ratings.html"><i class="fa fa-star-half-o" aria-hidden="true"></i> &nbsp; Star Ratings</a> </li>
                              <li><a href="shortcodes-sections.html"><i class="fa fa-square-o" aria-hidden="true"></i> &nbsp; Sections</a> </li>
                              <li><a href="shortcodes-social-icons.html"><i class="fa fa-twitter" aria-hidden="true"></i> &nbsp; Social Icons</a> </li>
                              <li><a href="shortcodes-tabs.html"><i class="fa fa-th-large" aria-hidden="true"></i> &nbsp; Tabs</a> </li>
                              <li><a href="shortcodes-team.html"><i class="fa fa-user" aria-hidden="true"></i> &nbsp; Team</a> </li>
                              <li><a href="shortcodes-testimonials.html"><i class="fa fa-pencil-square"></i> &nbsp; Testimonials</a> </li>
                              <li><a href="shortcodes-tooltips.html"><i class="fa fa-font" aria-hidden="true"></i> &nbsp; Tooltips</a> </li>
                              <li><a href="shortcodes-toogles.html"><i class="fa fa-toggle-on" aria-hidden="true"></i> &nbsp; Toogles</a> </li>
                              <li><a href="shortcodes-typography.html"><i class="fa fa-text-height" aria-hidden="true"></i> &nbsp; Typography</a> </li>
                              <li><a href="shortcodes-videos.html"><i class="fa fa-play-circle" aria-hidden="true"></i> &nbsp; Videos</a> </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="right"> <a href="#" class="m-link">Blog</a> <span class="arrow"></span>
                        <ul class="dm-align-2">
                          <li> <a href="#">Classic <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="blog-full-width.html">Full Width</a> </li>
                              <li> <a href="blog-left-sidebar.html">Left Sidebar</a> </li>
                              <li> <a href="blog-right-sidebar.html">Right Sidebar</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Grids <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="blog-1-columns.html">One Column</a> </li>
                              <li> <a href="blog-2-columns.html">Two Column</a> </li>
                              <li> <a href="blog-3-columns.html">Three Column</a> </li>
                              <li> <a href="blog-4-columns.html">Four Column</a> </li>
                              <li> <a href="blog-5-columns.html">Five Column</a> </li>
                              <li> <a href="blog-6-columns.html">Six Column</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Default<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="blog-default-full-width.html">Full Width</a> </li>
                              <li> <a href="blog-default-left-sidebar.html">Left Sidebar</a> </li>
                              <li> <a href="blog-default-right-sidebar.html">Right Sidebar</a> </li>
                              <li> <a href="blog-default-author.html">Author Page</a> </li>
                              <li> <a href="blog-default-comments.html">Blog Comments</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Thumbnail<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="blog-full-width-thumbnail.html">Full Width</a> </li>
                              <li> <a href="blog-left-sidebar-thumbnail.html">Left Sidebar</a> </li>
                              <li> <a href="blog-right-sidebar-thumbnail.html">Right Sidebar</a> </li>
                              <li> <a href="blog-author-thumbnail.html">Author Page</a> </li>
                              <li> <a href="blog-comments-thumbnail.html">Blog Comments</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Single Post<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="blog-image-post.html">Image Post</a> </li>
                              <li> <a href="blog-video-post.html">Video Post</a> </li>
                              <li> <a href="blog-gallery-post.html">Gallery Post</a> </li>
                              <li> <a href="blog-sidebar-post.html">Sidebar Post</a> </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="right"> <a href="#" class="m-link">Shop</a> <span class="arrow"></span>
                        <ul>
                          <li> <a href="#">Default<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="shop-full-width.html">Full Width</a> </li>
                              <li> <a href="shop-left-sidebar.html">Left Sidebar</a> </li>
                              <li> <a href="shop-right-sidebar.html">Right Sidebar</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Grids <span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                                                            <li> <a href="shop-2-columns.html">Two Column</a> </li>
                              <li> <a href="shop-3-columns.html">Three Column</a> </li>
                              <li> <a href="shop-4-columns.html">Four Column</a> </li>
                              <li> <a href="shop-5-columns.html">Five Column</a> </li>
                              <li> <a href="shop-6-columns.html">Six Column</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Single Product<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="shop-single-full-width.html">Full Width</a> </li>
                              <li> <a href="shop-single-left-sidebar.html">Left Sidebar</a> </li>
                              <li> <a href="shop-single-right-sidebar.html">Right Sidebar</a> </li>
                              <li> <a href="shop-single-both-sidebar.html">both Sidebars</a> </li>
                            </ul>
                          </li>
                          <li> <a href="#">Order Process<span class="sub-arrow dark pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span> </a> <span class="arrow"></span>
                            <ul>
                              <li> <a href="shop-cart.html">Shoping Cart</a> </li>
                              <li> <a href="shop-checkout.html">Checkout</a> </li>
                              <li> <a href="shop-wishlist.html">Wishlist</a> </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--end menu--> 
      
    </div>
    <!--end menu-->
    
    <div class="clearfix"></div>
    
    <!-- START REVOLUTION SLIDER 5.0 -->
    <div class="slide-tmargin">
      <div class="slidermaxwidth">
        <div class="rev_slider_wrapper"> 
          <!-- START REVOLUTION SLIDER 5.0 auto mode -->
          <div id="rev_slider" class="rev_slider"  data-version="5.0">
            <ul>
              
              <!-- SLIDE  -->
              <li data-index="rs-1" data-transition="fade"> 
                <!-- MAIN IMAGE --> 
                <img src="http://placehold.it/2000x1300" alt=""  width="1920" height="1280"> 
                
                <!-- LAYER NR. 1 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-0"
            id="slide-1-layer-1" 
            data-x="['left','left','center','center']" data-hoffset="['570','450','0','0']" 
            data-y="['top','top','top','bottom']" data-voffset="['130','30','390','0']" 
            data-width="none" data-height="none" 
            data-whitespace="nowrap" 
            data-transform_idle="o:1;" 
            data-transform_in="x:right;s:1500;e:Power3.easeOut;" 
            data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
            data-start="2750" 
            data-responsive_offset="on" 
            style="z-index: 5;text-transform:left;"> <img src="http://placehold.it/900x1000" alt="" width="725" height="805" data-ww="['725','725','725','546']" data-hh="['805','805','805','606']" data-no-retina> </div>
                
                <!-- LAYER NR. 2 -->
                <div class="tp-caption roboto bold uppercase white tp-resizeme"
            id="slide-1-layer-2" 
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['340','200','80','80']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="1000" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Design</div>
                
                <!-- LAYER NR. 3 -->
                <div class="tp-caption raleway font-weight-2 uppercase white tp-resizeme"
            id="slide-1-layer-3" 
			data-x="['left','left','center','center']" data-hoffset="['330','330','110','70']" 
			data-y="['top','top','top','top']" data-voffset="['340','200','80','80']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="1000" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">&</div>
                
                <!-- LAYER NR. 4 -->
                <div class="tp-caption roboto bold uppercase white tp-resizeme"
            id="slide-1-layer-4"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['400','260','140','110']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="1500" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Consepts</div>
                
                <!-- LAYER NR. 5 -->
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme"
            id="slide-1-layer-5" 
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['480','340','210','170']" 
			data-width="300"
			data-height="2"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-transform_in="x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:300;s:300;" 
			data-mask_in="x:0px;y:0px;" 
			data-start="2000" 
			data-responsive_offset="on" 
			style="z-index: 6;text-transform:left;background-color:#fff;border-color:rgba(0, 0, 0, 0);"> </div>
                
                <!-- LAYER NR. 6 -->
                <div class="tp-caption roboto dark-grey uppercase white tp-resizeme"
            id="slide-1-layer-6"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['480','340','220','180']" 
			data-fontsize="['16','16','14','14']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="2500" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">onsectetuer adipiscing elit sit amet justo</div>
                
                <!-- LAYER NR. 7 -->
                <div class="tp-caption sbut1"
            id="slide-1-layer-7"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['580','440','340','280']"
			data-speed="800"
			data-start="3000"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-endspeed="300"
			data-captionhidden="off"
			style="z-index: 6"> <a href="#">Purchase Printer</a> </div>
              </li>
              
              <!-- SLIDE  -->
              <li data-index="rs-2" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb=""  data-rotate="0"  data-saveperformance="off"  data-title="" data-description=""> 
                
                <!-- MAIN IMAGE --> 
                <img src="http://placehold.it/2000x1300" alt=""  data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 -500" data-offsetend="0 500" data-bgparallax="10" class="rev-slidebg" data-no-retina> 
                
                <!-- LAYER NR. 1 -->
                <div class="tp-caption raleway fweight-2 white uppercase tp-resizeme rs-parallaxlevel-0"
            id="slide-2-layer-1" 
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['340','200','80','80']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"			 
			data-transform_in="x:[-105%];z:0;rX:0deg;rY:0deg;rZ:-90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
			data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
			data-start="1000" 
			data-splitin="chars" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.1" 						
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Smooth</div>
                
                <!-- LAYER NR. 2 -->
                <div class="tp-caption raleway fweight-4 white uppercase tp-resizeme rs-parallaxlevel-0"
            id="slide-2-layer-2" 
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['400','260','140','110']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"			 
			data-transform_in="x:[-105%];z:0;rX:0deg;rY:0deg;rZ:-90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
			data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
			data-start="1500" 
			data-splitin="chars" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.1" 						
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Ken Burns</div>
                
                <!-- LAYER NR. 3 -->
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme"
            id="slide-2-layer-3" 
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['480','340','210','170']" 
			data-width="300"
			data-height="2"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"
			data-transform_in="x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:300;s:300;" 
			data-mask_in="x:0px;y:0px;" 
			data-start="3000" 
			data-responsive_offset="on" 
			style="z-index: 6;text-transform:left;background-color:#fff;border-color:rgba(0, 0, 0, 0);"> </div>
                
                <!-- LAYER NR. 4 -->
                <div class="tp-caption roboto dark-grey uppercase white tp-resizeme"
            id="slide-2-layer-4"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['480','340','220','180']" 
			data-fontsize="['16','16','14','14']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="2500" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">onsectetuer adipiscing elit sit amet justo</div>
                
                <!-- LAYER NR. 5 -->
                <div class="tp-caption sbut1"
            id="slide-2-layer-5"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['580','440','340','280']"
			data-speed="800"
			data-start="3000"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-endspeed="300"
			data-captionhidden="off"
			style="z-index: 6"> <a href="#">Purchase Printer</a> </div>
              </li>
              
              <!-- SLIDE  -->
              <li data-index="rs-3" data-transition="parallaxtoright"> 
                <!-- MAIN IMAGE --> 
                <img src="images/sliders/ce4-16.jpg" alt=""  width="1920" height="1280"> 
                
                <!-- LAYER NR. 1 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-1" 
			id="slide-3-layer-1" 
			data-x="['right','right','center','center']" data-hoffset="['0','-130','0','0']" 
			data-y="['middle','middle','middle','bottom']" data-voffset="['50','50','211','100']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="x:right;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-start="1000" 
			data-responsive_offset="on" 									
			style="z-index: 5;"><img src="images/sliders/macbookpro.png" alt="" width="660" height="400" data-ww="['660','660','660','660']" data-hh="['400','400','400','400']" data-no-retina> </div>
                
                <!-- LAYER NR. 2 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-1" 
			id="slide-3-layer-2" 
			data-x="['right','right','center','center']" data-hoffset="['100','-20','0','2']" 
			data-y="['top','top','top','bottom']" data-voffset="['330','280','555','168']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="2200" 
			data-responsive_offset="on" 									
			style="z-index: 6;"><img src="images/sliders/laptop-screen.jpg" alt="" width="456" height="285" data-ww="['456','456','456','456']" data-hh="['285','285','285','285']" data-no-retina> </div>
                
                <!-- LAYER NR. 3 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-2" 
			id="slide-3-layer-3" 
			data-x="['left','left','center','center']" data-hoffset="['590','450','-130','-60']" 
			data-y="['top','top','top','bottom']" data-voffset="['320','260','550','20']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="x:right;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-start="2000" 
			data-responsive_offset="on" 									
			style="z-index: 7;"><img src="images/sliders/ipad.png" alt="" width="300" height="375" data-ww="['300','300','300','300']" data-hh="['375','375','375','375']" data-no-retina> </div>
                
                <!-- LAYER NR. 4 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-2" 
			id="slide-3-layer-4" 
			data-x="['left','left','left','center']" data-hoffset="['639','500','155','-60']" 
			data-y="['top','top','top','bottom']" data-voffset="['381','320','610','75']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="3050" 
			data-responsive_offset="on" 
			style="z-index: 8;"><img src="images/sliders/ipad-screen.jpg" alt="" width="202" height="260" data-ww="['202','202','202','202']" data-hh="['260','260','260','260']" data-no-retina> </div>
                
                <!-- LAYER NR. 5 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-3" 
			id="slide-3-layer-5" 
			data-x="['left','left','left','left']" data-hoffset="['540','420','100','150']" 
			data-y="['top','top','top','top']" data-voffset="['385','330','622','640']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="x:right;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-start="3000" 
			data-responsive_offset="on" 									
			style="z-index: 9;"><img src="images/sliders/iphone.png" alt="" width="185" height="315" data-ww="['185','185','185','185']" data-hh="['315','315','315','315']" data-no-retina> </div>
                
                <!-- LAYER NR. 6 -->
                <div class="tp-caption   tp-resizeme rs-parallaxlevel-3" 
			id="slide-3-layer-6" 
			data-x="['left','left','left','left']" data-hoffset="['571','450','130','180']" 
			data-y="['top','top','top','top']" data-voffset="['445','390','680','700']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" 
			data-transform_out="opacity:0;s:1500;e:Power4.easeIn;s:1500;e:Power4.easeIn;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="4000" 
			data-responsive_offset="on" 									
			style="z-index: 10;"><img src="images/sliders/iphone-screen.jpg" alt="" width="120" height="200" data-ww="['120','120','120','120']" data-hh="['200','200','200','200']" data-no-retina> </div>
                
                <!-- LAYER NR. 7 -->
                <div class="tp-caption raleway fweight-2 white tp-resizeme rs-parallaxlevel-0"
			id="slide-3-layer-7"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['340','200','80','80']" 
			data-fontsize="['70','70','50','30']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:1000;e:Power2.easeOut;" 
			data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="4000" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Mouse</div>
                
                <!-- LAYER NR. 8 -->
                <div class="tp-caption raleway fweight-2 white tp-resizeme rs-parallaxlevel-0"
			id="slide-3-layer-8"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['400','260','140','110']" 
			data-fontsize="['80','80','50','30']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:1000;e:Power2.easeOut;" 
			data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
			data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
			data-start="4500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Parallax</div>
                
                <!-- LAYER NR. 9 -->
                <div class="tp-caption raleway dark-grey white tp-resizeme rs-parallaxlevel-0"
            id="slide-3-layer-9"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['470','340','220','180']" 
			data-fontsize="['16','16','14','14']"
			data-lineheight="['70','70','70','50']"
			data-transform_idle="o:1;tO:0% 50%;"
			data-transform_in="x:-50px;rY:-90deg;opacity:0;s:2000;e:Back.easeOut;" 
			data-transform_out="s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-start="5000" 
			data-splitin="lines" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 
			style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 30px;">Onsectetuer adipiscing elit sit amet justo</div>
                
                <!-- LAYER NR. 10 -->
                <div class="tp-caption sbut1 rs-parallaxlevel-0"
            id="slide-3-layer-10"
			data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['580','440','340','280']"
			data-speed="800"
			data-start="5500"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-endspeed="300"
			data-captionhidden="off"
			style="z-index: 6"> <a href="#">Purchase Printer</a> </div>
              </li>
              
              <!-- SLIDE  -->
              <li data-index="rs-4" data-transition="parallaxtoleft" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-saveperformance="off"  data-title="HTML5 Video" data-description=""> 
                <!-- MAIN IMAGE --> 
                <img src="http://placehold.it/2000x1300"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina> 
                
                <!-- BACKGROUND VIDEO LAYER -->
                <div class="rs-background-video-layer" 
			data-forcerewind="on" 
			data-volume="mute" 
			data-videowidth="100%" 
			data-videoheight="100%" 
			data-videomp4="video/Working-Space.mp4" 
			data-videopreload="preload" 
			data-videoloop="none" 
			data-forceCover="1" 
			data-aspectratio="16:9" 
			data-autoplay="true" 
			data-autoplayonlyfirsttime="false" 
			data-nextslideatend="true" > </div>
                
                <!-- LAYER NR. 1 -->
                <div class="tp-caption roboto bold uppercase white tp-resizeme rs-parallaxlevel-0"
			id="slide-4-layer-1" 
			data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
			data-y="['middle','middle','middle','middle']" data-voffset="['0','0','-100','-100']" 
			data-fontsize="['70','70','70','45']"
			data-lineheight="['70','70','70','50']"
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" 
			data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
			data-start="1000" 
			data-splitin="chars" 
			data-splitout="none" 
			data-responsive_offset="on" 
			data-elementdelay="0.05" 									
			style="z-index: 6; white-space: nowrap;">HTML5 VIDEO </div>
                
                <!-- LAYER NR. 2 -->
                <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0" 
			id="slide-4-layer-2" 
			data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
			data-y="['middle','middle','middle','middle']" data-voffset="['52','52','-30','-30']" 
			data-width="none"
			data-height="none"
			data-whitespace="nowrap"
			data-transform_idle="o:1;"						 
			data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
			data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
			data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
			data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
			data-start="1500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 
			style="z-index: 7; white-space: nowrap;">AND LOTS OF OTHER MEDIA </div>
                
                <!-- LAYER NR. 3 -->
                <div class="tp-caption sbut1"
            id="slide-4-layer-3"
			data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
			data-y="['top','top','top','top']" data-voffset="['550','500','600','550']"
			data-speed="800"
			data-start="2000"
			data-transform_in="y:bottom;s:1500;e:Power3.easeOut;"
			data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" 
			data-endspeed="300"
			data-captionhidden="off"
			style="z-index: 6"> <a href="#">Purchase Printer</a> </div>
              </li>
            </ul>
          </div>
          <!-- END REVOLUTION SLIDER --> 
        </div>
      </div>
      <!-- END REVOLUTION SLIDER WRAPPER --> 
    </div>
    <div class="clearfix"></div>
    <!-- END OF SLIDER WRAPPER -->
    
    <section class="sec-padding section-light">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">popular services</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">Lorem ipsum dolor sit amet, consectetuer </p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-3 margin-bottom">
              <div class="inner-box text-center">
                <div class="iconbox-small center outline-gray-2 round"><span class="icon-lightbulb"></span></div>
                <h5 class="uppercase less-mar-1">Advertising</h5>
                <div class="title-line"></div>
                <br/>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit sit amet justo et elitSuspendisse et</p>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-3 margin-bottom">
              <div class="inner-box text-center">
                <div class="iconbox-small center outline-gray-2 round"><span class="icon-bike"></span></div>
                <h5 class="uppercase less-mar-1">Branding Design</h5>
                <div class="title-line"></div>
                <br/>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit sit amet justo et elitSuspendisse et</p>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-3 margin-bottom">
              <div class="inner-box text-center">
                <div class="iconbox-small center outline-gray-2 round"><span class="icon-camera"></span></div>
                <h5 class="uppercase less-mar-1">photography</h5>
                <div class="title-line"></div>
                <br/>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit sit amet justo et elitSuspendisse et</p>
              </div>
            </div>
          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    <section class="sec-tpadding-2">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6 nopadding">
            <div class="ce4-feature-box-1 margin-bottom">
               <div class="img-box-main"> 
               <div class="img-box">
                 <img src="http://placehold.it/900x1000" alt="" class="img-responsive"/> 
                 </div>
                 </div>

              </div>
          </div>
          <!--end item-->
          
          <div class="col-md-6 margin-bottom text-center nopadding">
          
          
          <div class="ce4-feature-box-48">
          
          <div class="text-box-main">
          <div class="text-box">
          <div class="col-xs-12 nopadding">
                <div class="sec-title-container text-center">
                <br/><br/>
                  <h4 class="ce4-big-title uppercase font-weight-b">Digital<br/>Creative<br/>Studio<span>.</span></h4>
                  <h6>Since - 1964</h6>
                </div>
              </div>
              <div class="clearfix"></div>
              <!--end title-->
          
          
           <h4 class="raleway">Suspendisse et justo Praesent mattis augue Lorem ipsum dolor amet consectetuer. </h4>
             <br/>
             <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est Curabitur eget orci Cras mattis .</p>
             
             <div class="clearfix"></div>

             <a href="#" class="ce4-readmore-big">Read our all services</a>

          </div>
          </div>
          </div>
          <!--end right box-->

          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    
   <section class="sec-padding">
        <div class="container">
          <div class="row">
          
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">What We Do</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">Lorem ipsum dolor sit amet, consectetuer </p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          
            <div class="col-md-4">
              <h4 class="nopadding uppercase">Praesent mattis</h4>
              <h3 class="uppercase font-weight-5">Magna sem </h3>
              <h6>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo.</h6>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo et augue Aliquam.Lorem ipsum dolor sit amet.</p>
              <br/>
              <a class="btn btn-dark-3 uppercase btn-xround" href="#">Read more</a> </div>
            <!--end item-->
            
            <div class="col-md-8">
            <ul class="ce4-icon-text-list">
            
            <li>
             <div class="iconbox-small left outline-gray-2 round"><span class="icon-laptop"></span></div>
                  <div class="text-box-right">
                    <h5 class="uppercase less-mar-2">Responsive</h5>
                    <p>Lorem ipsum dolor sit amet sit justo et consectetuer adipiscing. </p>
                  </div>
            </li>
            
            <li>
             <div class="iconbox-small left outline-gray-2 round"><span class="icon-layers"></span></div>
                  <div class="text-box-right">
                    <h5 class="uppercase less-mar-2">Psd Files</h5>
                    <p>Lorem ipsum dolor sit amet sit justo et consectetuer adipiscing. </p>
                  </div>
            </li>
            
            
            <li>
             <div class="iconbox-small left outline-gray-2 round"><span class="icon-pencil"></span></div>
                  <div class="text-box-right">
                    <h5 class="uppercase less-mar-2">Clean Code</h5>
                    <p>Lorem ipsum dolor sit amet sit justo et consectetuer adipiscing. </p>
                  </div>
            </li>
            
            <li>
             <div class="iconbox-small left outline-gray-2 round"><span class="icon-chat"></span></div>
                  <div class="text-box-right">
                    <h5 class="uppercase less-mar-2">24/7 Support</h5>
                    <p>Lorem ipsum dolor sit amet sit justo et consectetuer adipiscing. </p>
                  </div>
            </li>
            
            
            
            </ul>
              

            </div>
            <!--end item--> 
          </div>
        </div>
      </section>
      <div class="clearfix"></div>
      <!-- end section -->
    
    <section>
      <div class="container-fluid">
        <div class="row no-gutter">  
         <div class="col-md-4">
         <div class="ce4-feature-box-46 mar-top">
         <div class="img-box">
         <div class="overlay">
         <div class="text-box">
         <h4 class="text-white less-mar-1">Layered PSD Files</h4>
         <p class="text-white">Lorem ipsum dolor sit amet</p>
         </div>
         </div>
         <img src="http://placehold.it/1000x800" alt="" class="img-responsive"/>
         </div>
         </div>
         </div>
         <!--end item -->
         
         <div class="col-md-4">
         <div class="ce4-feature-box-46 middle-item">
         <div class="img-box">
         <div class="border-big"></div>
         <div class="overlay">
         <div class="text-box">
         <h4 class="text-white less-mar-1">Responsive Design</h4>
         <p class="text-white">Lorem ipsum dolor sit amet</p>
         </div>
         </div>
         <img src="http://placehold.it/1000x900" alt="" class="img-responsive"/>
         </div>
         </div>
         </div>
         <!--end item -->
         
        <div class="col-md-4">
         <div class="ce4-feature-box-46 mar-top">
         <div class="img-box">
         <div class="overlay">
         <div class="text-box">
         <h4 class="text-white less-mar-1">Excellent Support</h4>
         <p class="text-white">Lorem ipsum dolor sit amet</p>
         </div>
         </div>
         <img src="http://placehold.it/1000x800" alt="" class="img-responsive"/>
         </div>
         </div>
         </div>
         <!--end item -->

        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    
    
    <section class="ce4-parallax-sec-2">
      <div class="section-overlay bg-opacity-7">
        <div class="container sec-tpadding-3">
          <div class="row">
            
		<div class="col-md-6">
        <div class="ce4-feature-box-47">
        <img src="http://placehold.it/570x700" alt="" class="img-responsive"/>
        </div>
        </div>
        <!--end item-->
        
        <div class="col-md-6 text-left">
        <div class="col-divider-margin-5"></div>
        <div class="col-xs-12 nopadding">
                <div class="sec-title-container text-left">
                
                  <h4 class="ce4-big-title text-white uppercase font-weight-b">Creative<br/>Digital<br/>Agency<br/>Studio<span>.</span></h4>
                </div>
              </div>
              <div class="clearfix"></div>
              <!--end title-->
              
              <h4 class="raleway text-light">Suspendisse et justo Praesent mattis augue Lorem ipsum dolor sit amet consectetuer adipiscing. </h4>
             <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit Suspendisse et justo Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est Curabitur eget orci Cras mattis commodo augue.</p> 
              
              <div class="clearfix"></div> 
             <a href="#" class="ce4-readmore-big less-pad">Read More About</a>
             
        </div>
        <!--end item-->
            
          </div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!--end section-->

  
  <section class="sec-tpadding-4 sec-bpadding-2">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">Our Process</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">Lorem ipsum dolor sit amet, consectetuer </p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-29 margin-bottom light">
              <div class="iconbox-xmedium left round icon">01</div>
              <div class="text-box-right more-padding-2">
                <h4 class="uppercase title">User Research</h4>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo.</p>
                <br/>
                <a class="read-more" href="#">Read more &nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-29 margin-bottom">
              <div class="iconbox-xmedium left round icon">02</div>
              <div class="text-box-right more-padding-2">
                <h4 class="uppercase title">Design of interface</h4>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo.</p>
                <br/>
                <a class="read-more" href="#">Read more &nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-29 margin-bottom light">
              <div class="iconbox-xmedium left round icon">03</div>
              <div class="text-box-right more-padding-2">
                <h4 class="uppercase title">UI Develope</h4>
                <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo.</p>
                <br/>
                <a class="read-more" href="#">Read more &nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
            </div>
          </div>
          <!--end item--> 
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
  <div class="divider-line solid light"></div>
    <section class="sec-tpadding-2">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">featured projects</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">lorem ipsum dolor sit amet</p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div>
            <div id="js-filters-mosaic-flat" class="cbp-l-filters-buttonCenter">
              <div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> All
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".print" class="cbp-filter-item"> Graphic
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".web-design" class="cbp-filter-item"> Branding
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".graphic" class="cbp-filter-item"> Products
                <div class="cbp-filter-counter"></div>
              </div>
              <div data-filter=".motion" class="cbp-filter-item"> Photography
                <div class="cbp-filter-counter"></div>
              </div>
            </div>
            <div id="js-grid-mosaic-flat" class="cbp cbp-l-grid-mosaic-flat">
              <div class="cbp-item web-design graphic"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item print motion"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item print motion"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item motion graphic"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item web-design print"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item print motion"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item print motion"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
              <div class="cbp-item print motion"> <a href="http://placehold.it/800x600" class="cbp-caption cbp-lightbox" data-title="Bolt UI<br>by Tiberiu Neamu">
                <div class="cbp-caption-defaultWrap"> <img src="http://placehold.it/800x600" alt=""> </div>
                <div class="cbp-caption-activeWrap">
                  <div class="cbp-l-caption-alignCenter">
                    <div class="cbp-l-caption-body">
                      <div class="cbp-l-caption-title">Lorem ipsum dolor sit</div>
                    </div>
                  </div>
                </div>
                </a> </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    <section class="sec-tpadding-2">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">Meet Our Team</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">lorem ipsum dolor sit amet</p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-6 nopadding">
            <div class="ce4-feature-box-4">
              <div class="img-main">
              <div class="img-box">
              <div class="sc-icons-box">
                    <ul class="sc-icons">
                      <li><a target="_blank" class="twitter" href="https://twitter.com/codelayers"><i class="fa fa-twitter"></i></a></li>
                      <li><a target="_blank" href="https://www.facebook.com/codelayers"><i class="fa fa-facebook"></i></a></li>
                      <li><a class="active" href="#"><i class="fa fa-google-plus"></i></a></li>
                      <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                  </div>
              <img src="http://placehold.it/900x800" alt="" class="img-responsive"/>
              </div>
              <div class="clearfix"></div>
              <br/>
              <div class="text">
                  <h5 class="less-mar-1 text-white">Benjamin</h5>
                  <p class="text-gyellow">Founder & CEO</p>
                  <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras sit amet justo sit amet elit sit et lorem ipsum dolor  Praesent mattis commodo augue Aliquam consectetuer.</p>
                </div>
                
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-6 nopadding">
            <div class="ce4-feature-box-4 bg-light">
              <div class="img-main">
              <div class="img-box">
              <div class="sc-icons-box">
                    <ul class="sc-icons">
                      <li><a target="_blank" class="twitter" href="https://twitter.com/codelayers"><i class="fa fa-twitter"></i></a></li>
                      <li><a target="_blank" href="https://www.facebook.com/codelayers"><i class="fa fa-facebook"></i></a></li>
                      <li><a class="active" href="#"><i class="fa fa-google-plus"></i></a></li>
                      <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                  </div>
              <img src="http://placehold.it/900x800" alt="" class="img-responsive"/>
              </div>
              <div class="clearfix"></div>
              <br/>
              <div class="text">
                  <h5 class="less-mar-1">Madison</h5>
                  <p class="text-gyellow">Customer Support</p>
                  <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras sit amet justo sit amet elit sit et lorem ipsum dolor  Praesent mattis commodo augue Aliquam consectetuer.</p>
                </div>
                
              </div>
            </div>
          </div>
          <!--end item--> 
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    <section class="sec-padding">
      <div class="container">
        <div class="row slide-controls-2">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">Our Company History</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">lorem ipsum dolor sit amet</p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div id="owl-demo3" class="owl-carousel owl-theme">
            <div class="item">
              <div class="col-md-6">
                <div class="ce4-feature-box-5 active margin-bottom">
                  <div class="circle"> 1964 </div>
                  <div class="text-box">
                  <h5 class="title">Company Foundation</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p>
                  </div>
                </div>
              </div>
              <!--end item-->
              
              <div class="col-md-6">
                <div class="ce4-feature-box-6 margin-bottom">
                  <div class="circle"> 1968 </div>
                 <div class="text-box"> 
                 <h5 class="title">Established Company Teams</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p>
                  </div>
                </div>
              </div>
              <!--end item-->
              
              <div class="clearfix"></div>
              <div class="col-divider-margin-3"></div>
              <div class="col-md-6">
                <div class="ce4-feature-box-5 margin-bottom">
                  <div class="circle"> 1970 </div>
                  <div class="text-box">
                  <h5 class="title">Company Business Success</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p>
                  </div>
                </div>
              </div>
              <!--end item-->
              
              <div class="col-md-6">
                <div class="ce4-feature-box-6 margin-bottom">
                  <div class="circle"> 1984 </div>
                  <div class="text-box"><h5 class="title">Company Growth & Awards</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p></div>
                </div>
              </div>
              <!--end item--> 
              
            </div>
            <!--end carousel item-->
            
            <div class="item">
              <div class="col-md-6">
                <div class="ce4-feature-box-5 active margin-bottom">
                  <div class="circle"> 1964 </div>
                  <div class="text-box"><h5 class="title">Company Foundation</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p></div>
                </div>
              </div>
              <!--end item-->
              
              <div class="col-md-6">
                <div class="ce4-feature-box-6 margin-bottom">
                  <div class="circle"> 1968 </div>
                 <div class="text-box"> <h5 class="title">Established Company Teams</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p></div>
                </div>
              </div>
              <!--end item-->
              
              <div class="clearfix"></div>
              <div class="col-divider-margin-3"></div>
              <div class="col-md-6">
                <div class="ce4-feature-box-5 margin-bottom">
                  <div class="circle"> 1970 </div>
                 <div class="text-box"> <h5 class="title">Company Business Success</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p></div>
                </div>
              </div>
              <!--end item-->
              
              <div class="col-md-6">
                <div class="ce4-feature-box-6 margin-bottom">
                  <div class="circle"> 1984 </div>
                  <div class="text-box"><h5 class="title">Company Growth & Awards</h5>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse et justo. Praesent mattis commodo .</p></div>
                </div>
              </div>
              <!--end item--> 
              
            </div>
            <!--end carousel item--> 
            
          </div>
          <!--end carousel--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    <section>
      <div class="divider-line solid light"></div>
      <div class="container-fluid">
        <div class="row sec-tpadding-2">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1">latest from the blog</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">lorem ipsum dolor sit amet</p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="ce4-feature-box-7">
            <div class="container">
              <div class="col-md-12 nopadding">
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="img-box-main">
                    <div class="img-box"> <img src="http://placehold.it/700x750" alt="" class="img-responsive"/> </div>
                    <div class="text">
                      <h5 class="uppercase text-white less-mar-1"><a href="#">Nullam Rhoncus Feugiat</a></h5>
                      <div class="blog-post-info"> <span><i class="fa fa-user"></i> By Benjamin</span> <span><i class="fa fa-comments-o"></i> 15 Comments</span></div>
                      <br/>
                      <p>Lorem ipsum dolor sit amet sit et consectetuer adipiscing elit justo elit Suspendisse et justo Praesent. </p>
                    </div>
                  </div>
                </div>
                <!--end item-->
                
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="img-box-main">
                    <div class="img-box"> <img src="http://placehold.it/700x750" alt="" class="img-responsive"/> </div>
                    <div class="text">
                      <h5 class="uppercase text-white less-mar-1"><a href="#">Vestibulum ante ipsum</a></h5>
                      <div class="blog-post-info"> <span><i class="fa fa-user"></i> By Benjamin</span> <span><i class="fa fa-comments-o"></i> 15 Comments</span></div>
                      <br/>
                      <p>Lorem ipsum dolor sit amet sit et consectetuer adipiscing elit justo elit Suspendisse et justo Praesent. </p>
                    </div>
                  </div>
                </div>
                <!--end item-->
                
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="img-box-main">
                    <div class="img-box"> <img src="http://placehold.it/700x750" alt="" class="img-responsive"/> </div>
                    <div class="text">
                      <h5 class="uppercase text-white less-mar-1"><a href="#">Quisque tempus ligula</a></h5>
                      <div class="blog-post-info"> <span><i class="fa fa-user"></i> By Benjamin</span> <span><i class="fa fa-comments-o"></i> 15 Comments</span></div>
                      <br/>
                      <p>Lorem ipsum dolor sit amet sit et consectetuer adipiscing elit justo elit Suspendisse et justo Praesent. </p>
                    </div>
                  </div>
                </div>
                <!--end item--> 
                
              </div>
            </div>
          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    
     <section class="sec-bpadding-2 section-dark">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1 white"></div>
              <h4 class="uppercase font-weight-7 less-mar-1 text-white">What Our Clients Says</h4>
              <div class="clearfix"></div>
              <p class="by-sub-title">lorem ipsum dolor sit amet</p>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-44 margin-bottom">
              <div class="inner-box">
                <div class="imgbox-tiny left round overflow-hidden"><img src="http://placehold.it/70x70" alt="" class="img-responsive"/></div>
                <div class="text-box-right">
                  <p>Duis tincidunt sapien eget accumsan cursus lectus ante euismod odio.</p>
                  <h6 class="less-mar-1 padding-top-1 text-white">Isabella</h6>
                  <p class="text-gyellow">Manager- mediatricks</p>
                </div>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-44 margin-bottom">
              <div class="inner-box">
                <div class="imgbox-tiny left round overflow-hidden"><img src="http://placehold.it/70x70" alt="" class="img-responsive"/></div>
                <div class="text-box-right">
                  <p>Duis tincidunt sapien eget accumsan cursus lectus ante euismod odio.</p>
                  <h6 class="less-mar-1 padding-top-1 text-white">Michael</h6>
                  <p class="text-gyellow">Manager- mediatricks</p>
                </div>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="ce4-feature-box-44 margin-bottom">
              <div class="inner-box">
                <div class="imgbox-tiny left round overflow-hidden"><img src="http://placehold.it/70x70" alt="" class="img-responsive"/></div>
                <div class="text-box-right">
                  <p>Duis tincidunt sapien eget accumsan cursus lectus ante euismod odio.</p>
                  <h6 class="less-mar-1 padding-top-1 text-white">Charlotte</h6>
                  <p class="text-gyellow">Manager- mediatricks</p>
                </div>
              </div>
            </div>
          </div>
          <!--end item-->
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
<section class="section-dark">
      <div class="container">
      <div class="divider-line solid light opacity-1"></div>
        <div class="row section-less-padding">
          <ul class="clients-list grid-cols-6 hover-4 noborder">
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>
    <li><a href="#"><img src="http://placehold.it/400x300" alt=""></a></li>						
	</ul>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
  
  
    <section>
      <div class="container">
        <div class="row sec-tpadding-2">
          <div class="ce4-feature-box-11">
            <div class="col-md-8">
              <div class="ce4-feature-box-10">
                <h4 class="uppercase less-mar-1">signup for newsletter</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. </p>
                <br/>
                <input type="search" placeholder="Email Address">
                <input name="search" value="Subscribe" class="submit-btn" type="submit">
              </div>
              <div class="clearfix"></div>
              <br/>
              <div class="col-md-8 text-left">
                <h3 class="text-gyellow"><i class="fa fa-phone" aria-hidden="true"></i> &nbsp;1234 567 891</h3>
              </div>
              <div class="clearfix"></div>
              <br/>
            </div>
            <!--end item-->
            
            <div class="col-md-4"> <img src="http://placehold.it/600x1000" alt="" class="img-responsive"/> </div>
            <!--end item--></div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
    
    <section class="section-dark sec-padding">
      <div class="container ">
        <div class="fo-sec-3">
          <div class="primary-box">
            <div class="col-md-9">
              <h4 class="uppercase less-mar-1 text-white">Many More Home Pages and Beautiful Multi Page Layouts</h4>
              <p class="text-white">Lorem ipsum dolor sit amet consectetuer adipiscing elit Suspendisse et justo Praesent.</p>
            </div>
            <div class="col-md-3">
              <div class="margin-top2"></div>
              <a class="btn btn-border white btn-large pull-right uppercase" href="#">Contact Us</a></div>
          </div>
        </div>
        <div class="row"> <br/>
          <div class="col-md-3 col-sm-12 colmargin clearfix margin-bottom">
            <div class="fo-map">
            <div class="footer-logo"><img src="images/logo/f-logo.png" alt=""/></div>
           <p>Consectetuer adipiscing elit Suspendisse et justo Praesent mattis commodo</p>
           
           <address>
        <strong>Address:</strong>
        <br>
        No.28 - 63739 street lorem ipsum,
        <br>
        ipsum City, Country
        </address>
        
		<span><strong>Phone:</strong> + 1 (234) 567 8901</span><br>
        <span><strong>Email:</strong> email@example.com </span><br>
        <span><strong>Fax:</strong> + 1 (234) 567 8901</span>
        </div>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-sm-12 col-xs-12 bmargin clearfix margin-bottom">
            <div class="item-holder">
              <h4 class="text-white uppercase less-mar3 font-weight-5">Recent Posts</h4>
              <div class="footer-title-bottomstrip gyellow"></div>
              <div class="clearfix"></div>
              <div class="fo-posts">
                <div class="image-left"><img src="images/ce4-1.jpg" alt=""/></div>
                <div class="text-box-right">
                  <h6 class="less-mar3 uppercase nopadding text-white"><a href="#">Pellentesque </a></h6>
                  <p>Lorem ipsum dolor sit</p>
                  <div class="post-info"> <span>By John Doe</span><span> May 19</span> </div>
                </div>
              </div>
              <div class=" divider-line light solid light opacity-1 "></div>
              <br/>
              <br/>
              <br/>
              <br/>
              <br/>
              <br/>
              <div class="fo-posts">
                <div class="image-left"><img src="images/ce4-2.jpg" alt=""/></div>
                <div class="text-box-right">
                  <h6 class="less-mar3 uppercase nopadding text-white"><a href="#">Aliquam Pulvinar </a></h6>
                  <p>Lorem ipsum dolor sit</p>
                  <div class="post-info"> <span>By John Doe</span><span> May 19</span> </div>
                </div>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-xs-12 clearfix margin-bottom">
            <h4 class="text-white uppercase less-mar3 font-weight-5">Tags</h4>
            <div class="clearfix"></div>
            <div class="footer-title-bottomstrip gyellow"></div>
            <ul class="footer-tags">
              <li><a href="#">Animation</a></li>
              <li><a href="#">Art</a></li>
              <li><a href="#">Photography</a></li>
              <li><a class="active" href="#">Design</a></li>
              <li><a href="#">Responsive</a></li>
              <li><a href="#">Develop</a></li>
              <li><a href="#">Branding</a></li>
              <li><a href="#">Clean</a></li>
            </ul>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-xs-12 clearfix margin-bottom">
            <h4 class="text-white uppercase less-mar3 font-weight-5">Flickr Gallery</h4>
            <div class="clearfix"></div>
            <div class="footer-title-bottomstrip gyellow"></div>
           
            <ul id="basicuse" class="thumbs"></ul>
            <br/>
            <a class="read-more gyellow-2" href="#">View full Gallery &nbsp; <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
          </div>
          <!--end item-->
          
          <div class="clearfix"></div>
          <div class="col-divider-margin-2"></div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!--end section-->
    
    <section class="sec-moreless-padding">
      <div class="container">
        <div class="row">
          <div class="fo-copyright-holder text-center">
            <div class="social-iconbox">
              <div class="side-shape1"><img src="images/fo-icon-box-shape1.png" alt=""/></div>
              <div class="side-shape1 right-icon"><img src="images/fo-icon-box-shape2.png" alt=""/></div>
              <ul class="sc-icons">
                <li><a target="_blank" class="twitter" href="https://twitter.com/codelayers"><i class="fa fa-twitter"></i></a></li>
                <li><a target="_blank" href="https://www.facebook.com/codelayers"><i class="fa fa-facebook"></i></a></li>
                <li><a class="active" href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              </ul>
            </div>
            Copyright © 2019 <a href="https://1.envato.market/printer-html-by-codelayers">printer</a> By <a href="https://1.envato.market/codelayers">Codelayers</a> | All rights reserved. </div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section --> 
    
    <a href="#" class="scrollup"></a><!-- end scroll to top of the page--> 
    
  </div>
  <!--end site wrapper--> 
</div>
<!--end wrapper boxed--> 

<!-- Scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script> 
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/style-customizer.js"></script> 
<!-- Scripts END --> 

<!-- Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/jquery.mb.YTPlayer.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/elementvideo-custom.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ytplayer/play-pause-btn.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/main-mosaic3.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/accordion/js/smk-accordion.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/accordion/js/custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/tabs/js/responsive-tabs.min.js" type="text/javascript"></script> 

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
		arrows: {
		style:"erinyen",
		enable:true,
		hide_onmobile:true,
		hide_under:778,
		hide_onleave:true,
		hide_delay:200,
		hide_delay_mobile:1200,
		tmp:'',
		left: {
		h_align:"left",
		v_align:"center",
		h_offset:80,
		v_offset:0
		},
		right: {
		h_align:"right",
		v_align:"center",
		h_offset:80,
		v_offset:0
		}
		}
		,
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
	 gridheight: [868,768,1000,950],
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
<script type="text/javascript">
                var tpj = jQuery;

                var revapi280;
                tpj(document).ready(function() {
                    if (tpj("#rev_slider_280_1").revolution == undefined) {
                        revslider_showDoubleJqueryError("#rev_slider_280_1");
                    } else {
                        revapi280 = tpj("#rev_slider_280_1").show().revolution({
                            sliderType: "hero",
                            jsFileLocation: "../../revolution/js/",
                            sliderLayout: "auto",
                            dottedOverlay: "none",
                            delay: 9000,
                            navigation: {},
                            responsiveLevels: [1240, 1024, 778, 480],
                            visibilityLevels: [1240, 1024, 778, 480],
                            gridwidth: [1000, 1024, 778, 480],
                            gridheight: [520, 520, 420, 420],
                            lazyType: "none",
							parallax: {
									type:"mouse+scroll",
									origo:"slidercenter",
									speed:2000,
									levels:[1,2,3,20,25,30,35,40,45,50],
									disable_onmobile:"on"
								},
                            shadow: 0,
                            spinner: "spinner2",
                            autoHeight: "off",
                            fullScreenAutoWidth: "off",
                            fullScreenAlignForce: "off",
                            fullScreenOffsetContainer: "",
                            fullScreenOffset: "60",
                            disableProgressBar: "on",
                            hideThumbsOnMobile: "off",
                            hideSliderAtLimit: 0,
                            hideCaptionAtLimit: 0,
                            hideAllCaptionAtLilmit: 0,
                            debugMode: false,
                            fallbacks: {
                                simplifyAll: "off",
                                disableFocusListener: false,
                            }
                        });
                    }
                }); /*ready*/
            </script> 

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

<script>
    $(window).load(function(){
      setTimeout(function(){

        $('.loader-live').fadeOut();
      },1000);
    })

  </script>
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>

</body>
</html>
