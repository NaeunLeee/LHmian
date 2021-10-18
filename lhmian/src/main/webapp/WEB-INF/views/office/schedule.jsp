<!-- 10/15 스타일 추가-->
<style>
body{
	padding:0 !important;
}
</style>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link href='${pageContext.request.contextPath}/resources/fullcalendar/css/main.css' type="text/css" rel='stylesheet' />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fullcalendar/vendor/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fullcalendar/vendor/css/fullcalendar.min.css" />
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/fullcalendar/vendor/css/select2.min.css' />
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/fullcalendar/vendor/css/bootstrap-datetimepicker.min.css' />
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">

	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/office/office">관리 사무소</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/office/schedule">일정</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">일정</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">아파트의 일정들을 확인할 수 있습니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	  
	  
	  

	  <div class="container">


        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <div class="panel panel-default" style="display: none;">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="카테고리1">카테고리1</option>
                            <option value="카테고리2">카테고리2</option>
                            <option value="카테고리3">카테고리3</option>
                            <option value="카테고리4">카테고리4</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline">
                        <input class='filter' type="checkbox" value="관리자" checked>관리자</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->
	<section class="sec-padding"></section>
	</section>
	
	<!-- 10/01 resources -> fullcalendar로 수정함 -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/vendor/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/js/addEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/js/etcSetting.js"></script>
</body>