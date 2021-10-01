<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>schedule</h3>
		<div id="wrapper">
			<div id="loading"></div>
			<div id="calendar"></div>
		</div>

		<div class="panel panel-default">

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
						<label class="checkbox-inline"> <input class='filter'
							type="checkbox" value="관리자" checked>관리자
						</label>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/ko.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/fullcalendar/js/main2.js"></script>
</body>
</html>