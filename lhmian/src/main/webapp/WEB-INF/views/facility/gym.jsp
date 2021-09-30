<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 헬스장</title>

</head>
<body>

    <section class="sec-padding">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container less-padding-3 text-center">
              <p class="uppercase less-mar-1 text-gyellow lspace-sm nopadding">what we offer</p>
              <h3 class="uppercase font-weight-7 less-mar-1">POPULAR CLASSES</h3>
              <div class="clearfix"></div>
              <div class="gm-title-line-1"></div>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="gm-feature-box-1 margin-bottom">
              <div class="img-box">
                <div class="time">7 pm - 9 pm</div>
                <img src="http://placehold.it/600x650" alt="" class="img-responsive"/> </div>
              <div class="text-box padding-4">
                <h5 class="uppercase title">Body Building</h5>
                <p>Lorem ipsum dolor sit Suspendisse consectetuer sit amet et justo </p>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="gm-feature-box-1 margin-bottom">
              <div class="img-box">
                <div class="time">7 pm - 9 pm</div>
                <img src="http://placehold.it/600x650" alt="" class="img-responsive"/> </div>
              <div class="text-box padding-4">
                <h5 class="uppercase title">group classes</h5>
                <p>Lorem ipsum dolor sit Suspendisse consectetuer sit amet et justo </p>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="gm-feature-box-1 active margin-bottom">
              <div class="img-box">
                <div class="time">7 pm - 9 pm</div>
                <img src="http://placehold.it/600x650" alt="" class="img-responsive"/> </div>
              <div class="text-box padding-4">
                <h5 class="uppercase title">Yoga Classes</h5>
                <p>Lorem ipsum dolor sit Suspendisse consectetuer sit amet et justo </p>
              </div>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="gm-feature-box-1 margin-bottom">
              <div class="img-box">
                <div class="time">7 pm - 9 pm</div>
                <img src="http://placehold.it/600x650" alt="" class="img-responsive"/> </div>
              <div class="text-box padding-4">
                <h5 class="uppercase title">fitness classes</h5>
                <p>Lorem ipsum dolor sit Suspendisse consectetuer sit amet et justo </p>
              </div>
            </div>
          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->


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