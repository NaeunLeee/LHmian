<!-- 10/15 스타일 추가-->
<style>
#full {
	padding-bottom: 0px;
	padding-left: 0px;
	padding-right: 0px;
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
	<body id="full">	
		<br><br><br><br><br><br><br>
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
    <br><br><br><br><br>

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