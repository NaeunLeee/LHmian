<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.pr-feature-box-4 {
	width: 100%;
	float: left;
	padding: 10px;
	border: 2px solid #fff;
}

.pr-feature-box-4 .img-box {
	position: relative;
	width: 100%;
	float: left;
}

.pr-feature-box-4 .img-box .date-box {
	position: absolute;
	width: 40%;
	float: left;
	padding: 8px 15px;
	left: 20px;
	color: #fff;
	font-size: 16px;
	bottom: 20px;
	background-color: #ecae3d;
}

.pr-feature-box-4 .title-line {
	width: 50%;
	margin: 10px 50% 27px 0;
	height: 1px;
	background-color: #e4e4e4;
}

.col-md-4 {
	padding: 0 10px 20px 10px;
}

.pr-feature-box-4 .img-box .date-box {
	width: 30%;
}

#vote-content {
	height: 227px;
	!
	important;
}
</style>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a
								href="${pageContext.request.contextPath}/myPage/myPage">마이
									페이지</a></li>
							<li class="current"><a href="#">투표</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
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
						<h4 class="uppercase font-weight-7 less-mar-1">투표</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">투표를 어쩌구~~~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->

				<c:forEach var="list" items="${list }">
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="pr-feature-box-4 margin-bottom">
							<div class="img-box">

								<c:if test="${list.over eq '투표마감'}">
									<div class="date-box text-center"
										style="background-color: #727272" data-over="${list.over}">${list.over}</div>
								</c:if>
								<c:if test="${list.over eq '진행중'}">
									<div class="date-box text-center" data-over="${list.over}">${list.over}</div>
								</c:if>
								<c:if test="${list.over eq '진행예정'}">
									<div class="date-box text-center"
										style="background-color: #A5C768" data-over="${list.over}">${list.over}</div>
								</c:if>

								<img
									src="${pageContext.request.contextPath}/resources/images/black_pooh.png"
									alt="" class="img-responsive">
							</div>
							<div id="vote-content" class="text-box white padding-4 text-left">
								<h5>${list.voteTitle }</h5>
								<div class="title-line"></div>
								<p>
									투표 기간<br>
									<fmt:formatDate value="${list.voteStart }" pattern="yyyy-MM-dd" />
									~
									<fmt:formatDate value="${list.voteEnd }" pattern="yyyy-MM-dd" />
								</p>
								<c:if test="${list.over eq '진행중'}">
									<div class="text-right">
										<a class="btn btn-light" href="vote?no=${list.voteNo }"><i
											class="bi bi-pencil-square"></i> &nbsp;투표하기</a>
									</div>
								</c:if>
								<c:if test="${list.over eq '투표마감'}">
									<div class="text-right">
										<a class="btn btn-light" href="voteResult?no=${list.voteNo }"><i
											class="bi bi-pencil-square"></i> &nbsp;결과보기</a>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>



			</div>
		</div>
	</section>
</body>
<script>
	//투표마감된 부분에 회색 커튼 치기

	/* 	 const box = $('.pr-feature-box-4');

	 for (let i=0; i < $(box).length; i++) {
	 console.log($(box).eq(i).children().children().attr('data-over'));
	 if ($(box).eq(i).children().children().attr('data-over') == '투표마감') {
	 console.log($('#vote-content'));

	 }
	
	 }  */
</script>
</html>