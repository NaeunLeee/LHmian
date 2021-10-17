<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/bootstrap/bootstrap.min.css">
<!-- 윤지민님 전용 -->
<script src="${pageContext.request.contextPath}/resources/js/yjmFunction/functions.js"></script>

<!-- Google fonts  -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yesteryear"
	rel="stylesheet">

<!-- Template's stylesheets -->
<link rel="stylesheet" type="text/css"
	href="/app/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="/app/resources/css/shortcodes.css">
<link rel="stylesheet"
	href="/app/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/css/theme-default.css">
<link rel="stylesheet"
	href="/app/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/css/corporate.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/fonts/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css"
	media="screen">
<link rel="stylesheet"
	href="/app/resources/fonts/et-line-font/et-line-font.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/revolution-slider/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/revolution-slider/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/revolution-slider/css/navigation.css">
<link rel="stylesheet"
	href="/app/resources/js/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="/app/resources/js/owl-carousel/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/cubeportfolio/cubeportfolio.min.css">
<link rel="stylesheet"
	href="/app/resources/js/accordion/css/smk-accordion.css">
<link rel="stylesheet" href="/app/resources/js/ytplayer/ytplayer.css">
<link rel="stylesheet" type="text/css"
	href="/app/resources/js/tabs/css/responsive-tabs.css" media="all">
<link rel="stylesheet" href="/app/resources/js/jFlickrFeed/style.css">
<link rel="stylesheet" href="/app/resources/css/gym.css">
<style>
    input[type="checkbox"] {
        -webkit-appearance: none;
        position: relative;
        width: 16px;
        height: 16px;
        cursor: pointer;
        outline: none !important;
        border: 1px solid #eeeeee;
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
</style>
<script>
	$(function() {
		$('#closeBtn').on('click', function() {
			window.close();
		})
	})
</script>
</head>
<body>
	<tiles:insertAttribute name="content"/>
</body>
</html>