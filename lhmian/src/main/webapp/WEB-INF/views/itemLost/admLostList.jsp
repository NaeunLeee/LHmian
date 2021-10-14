<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<!-- Style Customizer's stylesheets -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/spectrum.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/style-customizer.css">
<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/less/skin.less">
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/masonry.js"></script>

<style>
	.cbp-caption-defaultWrap, .cbp-caption-activeWrap {
		-webkit-transition: -webkit-transform 0.6s
			cubic-bezier(0.19, 1, 0.22, 1);
		transition: transform 0.6s cubic-bezier(0.19, 1, 0.22, 1);
	}
	
	.cbp-caption-defaultWrap {
		position: relative;
	}
	
	.statusDone {
		-webkit-filter: grayscale(80%);
	}
	
	.cbp-item:hover .cbp-caption-defaultWrap {
		-webkit-transform: translateY(-30px);
		transform: translateY(-30px);
	}
	
	.cbp-item:hover .cbp-caption-activeWrap {
		-webkit-transform: translateY(-57px);
		transform: translateY(-57px);
	}
	
	#register {
		display : inline-block;
		float: right;
	
	}
	
	.cbp-item {
		margin: 0 30px 20px 0;
		width: 300px;
		height: 250px;
		overflow: hidden;
	}
	
	.status {
		display: inline-block;
	}
	
	.container {
		width : 85%;
	
	}
	
	.table-style-2 { 
		width : 500px;
	}
	
	tr {
		border-bottom : 1px solid lightgray;
		height : 80px;
	}
	
	textarea {
		width : 280px;
		height : 60px;
	}
	
	h4 {
		margin : 0 0 0;
	}
	
	.modal-footer {
		padding-right : 40%;
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

<!-- 10/14 관리자 페이지에 맞춰 디자인 일부 수정: 이나은 -->

<br><br>
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
			<div class="col-md-2 col-sm-6 col-xs-12 section-white">
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
			<div class="col-md-10 col-sm-6 col-xs-12">
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
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admVoteList">투표</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admSchedule">일정 관리</a>
					</li>
				</ul>
				<div class="text-box white padding-4 col-10">
					<button id="register" class="btn btn-gyellow">등록</button>
					<c:forEach items="${lost}" var="item">
						<c:if test="${item.lostStatus eq '수령전'}">
							<div class="status">
								<div class="cbp-item web-design">
									<div class="cbp-caption-defaultWrap">
										<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="">
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">
												<div class="cbp-l-caption-title">${item.lostContent}</div>
												<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate}</div>
											</div>
										</div>
									</div>
								</div>
								<button type="button" class="btn-yj btn-gyellow" onclick="lostModify(${item.lostNo})">수정</button>
							</div>
						</c:if>
					</c:forEach>
					<br>
					<c:forEach items="${lost}" var="item">
						<c:if test="${item.lostStatus eq '수령완료'}">
							<div class="status">
								<div class="cbp-item web-design statusDone">
									<div class="cbp-caption-defaultWrap">
										<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="">
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">
												<div class="cbp-l-caption-title">${item.lostContent}</div>
												<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate} / 수정일자 : ${item.lostUpdate}</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sec-padding">
	<div class="container">
		<div class="row text-center">
			<div id="LaFModal" tabindex="-1" role="dialog" aria-labelledby="modal-switch-label" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" data-dismiss="modal" class="close">
								<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
							</button>
							<div id="modal-switch-label" class="modal-title">
								<h4>분실물 수정</h4>
							</div>
						</div>
						<div class="modal-body"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-gyellow" data-dismiss="modal" id="modalClose">닫기</button>
							<button type="button" class="btn btn-gyellow" id="lostModal">저장</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
 //수정모달
function lostModify(n) {
	$(LaFModal).modal('show');
	$.ajax({
		url : "lostModifyForm",
		type: "get",
		data : {lostNo : n},
		success : function(data) {
			var tag ="";
			tag += '<form method="post" id="frm" action="lostModify?${_csrf.parameterName }=${_csrf.token }" enctype="multipart/form-data">'
				+  '	<section class="sec-padding-yj">'
				+  '		<div class="container">'
				+  '			<div class="row">'
				+  '				<table class="table-style-2">'
				+  '					<tr>'
				+  '					  <th>분실물번호</th>'
				+  '					  <td><input type="hidden" name="lostNo" value="' + data.lostNo + '">' + data.lostNo + '</td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>분실물내용</th>'
				+  '					  <td><textarea name="lostContent" width="300px">' + data.lostContent + '</textarea></td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>등록날짜</th>'
				+  '					  <td>' + data.lostDate + '</td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>수령여부</th>'
				+  '					  <td><select name="lostStatus">'
				+  '					 		 <option value="' + data.lostStatus + '">' + data.lostStatus + '</option>'
				+  '					 		 <option value="수령완료">수령완료</option></select></td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>분실물파일</th>'
				+  '					  <td><input type="file" name="lostChangeImg">'
				+  '						<p align="left">기등록 파일 : ' + data.lostFile + '</p></td>'
				+  '					</tr>'
				+  '				</table>'
				+  '			</div>'
				+  '		</div>'
				+  '	</section>'
				+  '</form>'
			$("#LaFModal .modal-body").html(tag);
		}
	});
};

$(function() {
	//등록
	$('#register').on('click', function() {
		$(location).attr('href', 'admLostInsert');
	});

	//모달 저장버튼
	$('#lostModal').on('click', function() {
		console.log('ggg');
		frm.submit();
	});
});
</script>