<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<title>LHmian</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.css">

<!-- Google fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yesteryear" rel="stylesheet">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">

<!-- Template's stylesheets -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/shortcodes.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/theme-default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/corporate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/et-line-font/et-line-font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/settings.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/layers.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/revolution-slider/css/navigation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/accordion/css/smk-accordion.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/ytplayer/ytplayer.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/tabs/css/responsive-tabs.css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jFlickrFeed/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gym.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mechanic.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- 
<style type="text/css">
	
	body {
		font-family: 'NanumSquare' !important;
	}

</style> -->

<style>



    input[type="checkbox"] {
        -webkit-appearance: none;
        position: relative;
        width: 16px;
        height: 16px;
        cursor: pointer;
        outline: none !important;
        border: 1px solid #dcdcdc;
        border-radius: 2px;
        background: #fbfbfb;
    }
 
    input[type="checkbox"]::before {
        content: "\2713";
        position: absolute;
        top: 50%;
        left: 50%;
        overflow: hidden;
        transform: scale(0) translate(-50%, -50%);
        line-height: 1;
    }
 
    input[type="checkbox"]:hover {
        border-color: rgba(170, 170, 170, 0.5);
    }
 
    input[type="checkbox"]:checked {
        background-color: #ecae3d;
        border-color: rgba(255, 255, 255, 0.3);
        color: white;
    }
 
    input[type="checkbox"]:checked::before {
        border-radius: 2px;
        transform: scale(1) translate(-50%, -50%)
    }
	
    .sec-title-container-padding-top > h4 {
       font-size: 30px;
    }
    
    .sec-title-container-padding-topbottom > h4 {
       font-size: 30px;
    }
</style>
<!-- Template's stylesheets END -->
</head>

<body>

	<header>
		<tiles:insertAttribute name="header" />
	</header>

	<div>
		<!-- 컨텐트 -->
		<tiles:insertAttribute name="content" />
	</div>

	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>

</body>



</html>
