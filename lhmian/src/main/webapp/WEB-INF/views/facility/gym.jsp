<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 헬스장</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
	.card {
		margin: 10px;
	}
</style>

</head>
<body>
<div class="row" style="margin: 20px;">
	<h3>프로그램</h3>
</div>
<div class="row" style="margin: 20px;">
	<div class="card col-3">
		<div class="card-header">요가</div>
		<div class="card-body">
			<div>
				요가~~~
			</div>
			<div>
				<button type="button" id="yogaTime" class="btn btn-primary" data-toggle="modal" data-target="#yogaModal">시간표</button>
			</div>	
		</div>
	</div>
	
	<div class="card col-3">
		<div class="card-header">필라테스</div>
		<div class="card-body">
			<div>
				필테~~~
			</div>
			<div>
				<button type="button" id="pilTime" class="btn btn-primary" data-toggle="modal" data-target="#pilModal">시간표</button>
			</div>	
		</div>
	</div>
	
	<div class="card col-3">
		<div class="card-header">스피닝</div>
		<div class="card-body">
			<div>
				스피닝~~~
			</div>
			<div>
				<button type="button" id="spinTime" class="btn btn-primary" data-toggle="modal" data-target="#spinModal">시간표</button>
			</div>	
		</div>
	</div>
</div>

<!-- 요가 시간표 모달 -->
<div class="modal" id="yogaModal">
	<div class="modal-dialog">
		<div class="modal-content">
		<!-- Modal Header -->
			<div class="modal-header">
				<h5 class="modal-title">요가</h5>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
		<!-- Modal body -->
		<div class="modal-body">
			<div>
				<table border="1">
					<tr align="center">
						<th width="200">프로그램</th>
						<th width="150">월</th>
						<th width="150">화</th>
						<th width="150">수</th>
						<th width="150">목</th>
						<th width="150">금</th>
						<th width="150"></th>
					</tr>
					<c:forEach items="${yogaTime}" var="yoga">
						<tr align="center">
							<td>${yoga.gxTitle}</td>
							<td>${yoga.gxMon}</td>
							<td>${yoga.gxTue}</td>
							<td>${yoga.gxWed}</td>
							<td>${yoga.gxThu}</td>
							<td>${yoga.gxFri}</td>
							<td><button type="button">등록</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		<br>
      </div>
    </div>
  </div>
</div>

<!-- 필라테스 시간표 모달 -->
<div class="modal" id="pilModal">
	<div class="modal-dialog">
		<div class="modal-content">
		<!-- Modal Header -->
			<div class="modal-header">
				<h5 class="modal-title">필라테스</h5>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
		<!-- Modal body -->
		<div class="modal-body">
			<div>
				<table border="1">
					<tr align="center">
						<th width="200">프로그램</th>
						<th width="150">월</th>
						<th width="150">화</th>
						<th width="150">수</th>
						<th width="150">목</th>
						<th width="150">금</th>
						<th width="150"></th>
					</tr>
					<c:forEach items="${pilTime}" var="pil">
						<tr align="center">
							<td>${pil.gxTitle}</td>
							<td>${pil.gxMon}</td>
							<td>${pil.gxTue}</td>
							<td>${pil.gxWed}</td>
							<td>${pil.gxThu}</td>
							<td>${pil.gxFri}</td>
							<td><button type="button">등록</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		<br>
      </div>
    </div>
  </div>
</div>

<!-- 스피닝 시간표 모달 -->
<div class="modal" id="spinModal">
	<div class="modal-dialog">
		<div class="modal-content">
		<!-- Modal Header -->
			<div class="modal-header">
				<h5 class="modal-title">스피닝</h5>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
		<!-- Modal body -->
		<div class="modal-body">
			<div>
				<table border="1">
					<tr align="center">
						<th width="200">프로그램</th>
						<th width="150">월</th>
						<th width="150">화</th>
						<th width="150">수</th>
						<th width="150">목</th>
						<th width="150">금</th>
						<th width="150"></th>
					</tr>
					<c:forEach items="${spinTime}" var="spin">
						<tr align="center">
							<td>${spin.gxTitle}</td>
							<td>${spin.gxMon}</td>
							<td>${spin.gxTue}</td>
							<td>${spin.gxWed}</td>
							<td>${spin.gxThu}</td>
							<td>${spin.gxFri}</td>
							<td><button type="button">등록</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		<br>
      </div>
    </div>
  </div>
</div>


<br>
</body>

<script>
</script>

</html>