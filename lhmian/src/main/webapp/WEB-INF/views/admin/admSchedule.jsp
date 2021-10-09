<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<style>
	.container {
		width: 85%;
	}
	.tr_1 {
	   cursor: pointer;
	   text-align: center;
	}
	
	th {
	   text-align: center;
	   background-color: #EEEEEE;
	}
	
	.tr_1:hover {
	   background-color: #f5f5f5;
	}
	
	table {
	   background-color: white;
	}
	.pagination>li>a {
	   color: black;
	}
	
	.form-control {
	   display: inline-block;
	}
	.nav-tabs.nav-justified>li>a {
		margin: 0px 1px 0px;
		background-color: #f5f5f5;
	}
	.nav-tabs.nav-justified>li>a:hover {
		background-color: #C8C6C6;
	}
	.nav-tabs.nav-justified>li>.active {
		background-color: #C8C6C6;
	}
</style>


</head>
<body>
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
<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-12 col-xs-12 section-white">
				<div class="pages-sidebar-item">
					<h5 class="uppercase pages-sidebar-item-title">관리자</h5>
					<ul class="pages-sidebar-links">
						<li><a href="#">관리비</a></li>
						<li><a href="#">에너지 사용량</a></li>
						<li><a href="#">회원 관리</a></li>
						<li><a class="active" href="#">게시글 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-8">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">게시글을 조회 및 수정합니다.</p>
				</div>
				
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admOpeInfoList">운영 정보 공개</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admNoticeList">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admCsList">민원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">투표</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">분실물 보관소</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="#">일정 관리</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<jsp:include page="${pageContext.request.contextPath}/admSked"></jsp:include>


</body>

    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/js/addEvent.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath}/fullcalendar/js/etcSetting.js"></script>

</html>