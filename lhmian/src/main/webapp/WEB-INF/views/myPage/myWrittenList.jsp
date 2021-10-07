<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<style>
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

/* .tabstyle-7 .responsive-tabs li {
	background-color: #f5f5f5;
}

.tabstyle-7 .responsive-tabs li a {
	margin: 0px 10px 0px;
	padding: 10px;
}

.btn-white {
	color: #101010;
	background-color: #fff;
	border: 1px solid lightgray;
}
.btn-white:hover {
	color: #fff;
	background-color: #101010;
} */

.tab-navicon {
	background-color: #fff;
}
.tab-navicon:hover {
	background-color: #101010;
}


</style>

</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(http://placehold.it/1500x1000);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner">
							<div class="overlay"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class=" clearfix"></div>
	</div>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이 페이지</a></li>
							<li class="current"><a href="#">작성글 조회</a></li>
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
							<h4 class="uppercase font-weight-7 less-mar-1">작성글 조회</h4>
							<div class="clearfix"></div>
							<p class="by-sub-title">작성한 글을 조회하는 페이지...</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
		<div>
			<section class="sec-tpadding-2">
				<div class="container">
					<div class="row">
						<div class="col-12 margin-bottom">
							<div class="tab-navbar-main-style-7 tabstyle-7">
								<ul class="responsive-tabs">
									<li>
										<div class="tab-navicon">
											<a href="#example-1-tab-1" target="_self">커뮤니티</a>
										</div>
									</li>
									<li>
										<div class="tab-navicon"> 
											<a href="#example-1-tab-2" class="no-border" target="_self">민 원</a>
										</div>
									</li>
									<li>
										<div class="tab-navicon"> 
											<a href="#example-1-tab-3" class="no-border" target="_self">입주자 대표회의</a>
										</div>
									</li>
								</ul>
							</div>
							<div class="clearfix"></div>
							<div class="tab-content-style-7">
								<div class="responsive-tabs-content">
									<div id="example-1-tab-1" class="responsive-tabs-panel">
										<div style="margin: 30px 50px 20px;">
											<div style="margin-left: 20px;">
												<div class="title-line-3 align-left"></div>
												<h4 class="uppercase font-weight-7 less-mar-1">커뮤니티 - 내 게시글</h4><br>
											</div>
											<div>
												<table class="table">
													<thead>
														<tr>
															<th>번호</th>
															<th>제목</th>
															<th>작성일자</th>
															<th>조회수</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${commList}" var="comm">
															<tr class="tr_1" onclick="location.href='${pageContext.request.contextPath}/get?commNo=${comm.commNo}'">
																<td>${comm.commNo}</td>
																<td>${comm.commTitle}</td>
																<td><fmt:formatDate value="${comm.commDate}" type="both" pattern="yy-MM-dd" /></td>
																<td>${comm.commHit}</td>		
														</c:forEach>
													</tbody>
												</table>
											</div>
											<div style="margin-left: 20px;">
												<div class="title-line-3 align-left"></div>
												<h4 class="uppercase font-weight-7 less-mar-1">커뮤니티 - 내 댓글</h4><br>
											</div>
											<div>
												<table class="table">
													<thead>
														<tr>
															<th>번호</th>
															<th>내용</th>
															<th>작성일자</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${replyList}" var="cmt">
															<tr class="tr_1" onclick="location.href='${pageContext.request.contextPath}/get?commNo=${cmt.commNo}'">
																<td>${cmt.rownum}</td>
																<td>${cmt.cmtContent}</td>
																<td><fmt:formatDate value="${cmt.cmtDate}" type="both" pattern="yy-MM-dd" /></td>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!--end panel 1-->
										
									<div class="clearfix"></div>
									<br />
									<div id="example-1-tab-2" class="responsive-tabs-panel">
										<div style="margin: 30px 50px 20px;">
											<div style="margin-left: 20px;">
												<div class="title-line-3 align-left"></div>
												<h4 class="uppercase font-weight-7 less-mar-1">민원 - 내 게시글</h4><br>
											</div>
											<table class="table">
												<thead>
													<tr>
														<th>No</th>
														<th>제목</th>
														<th>작성일자</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${csList}" var="cs">
														<tr class="tr_1" onclick="location.href='${pageContext.request.contextPath}/office/csSelect?csNo=${cs.csNo}'">
															<td>${cs.csNo}</td>
															<td>${cs.csTitle}</td>
															<td><fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" /></td>
															<td>
																<c:if test="${not empty cs.csAnswer}">답변완료</c:if>
																<c:if test="${empty cs.csAnswer}">처리중</c:if>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											
										</div>
									</div>
									<!--end panel 2-->
									
									<div class="clearfix"></div>
									<br />
									<div id="example-1-tab-3" class="responsive-tabs-panel">
										<div style="margin: 30px 50px 20px;">
											<div style="margin-left: 20px;">
												<div class="title-line-3 align-left"></div>
												<h4 class="uppercase font-weight-7 less-mar-1">입주자 대표회의 - 내 게시글</h4><br>
											</div>
											<table class="table">
												<tr>
													<th>No</th>
													<th>제목</th>
													<th>작성일자</th>
													<th>최종수정</th>
												</tr>
												<c:forEach items="${confList}" var="conf">
													<tr class="tr_1" onclick="location.href='${pageContext.request.contextPath}/resident/confSelect?confNo=${conf.confNo}'">
														<td>${conf.confNo}</td>
														<td>${conf.confTitle}</td>
														<td><fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" /></td>
														<td><fmt:formatDate value="${conf.confUpdate}" pattern="yy-MM-dd" /></td>
													</tr>
												</c:forEach>
											</table>
											
										</div>
									</div>
									<!--end panel 3-->
								</div>
							</div>
							<!--end column-->
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	</section>

</body>

<script>
	var actionForm = $('#actionForm');

	$('#pageBtn a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});
</script>

</html>