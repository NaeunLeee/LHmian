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



.cbp-item {
	margin-bottom:30px;
	width: 300px;
	height: 300px;
	overflow: hidden;
}

.status {
	display: inline-block;
}



.table-style-2 { 
width : 500px;
}

th {
	text-align: center;
	background-color: #EEEEEE;
}

tr {
border-bottom : 1px solid lightgray;
border-top : 1px solid lightgray;
height : 80px;
}

td {
border-left: 1px solid lightgray;
text-align:left;
padding-left:10px;

}

textarea {
width : 100%;
height : 60px;
resize: none;
}

::-webkit-scrollbar {	
  display: none;
}

.void {
	white-space: pre-wrap;
}

.modal-header {
	border-bottom: 0;
	padding-bottom:
}

.modal-footer {
	text-align:center;
	border:0
}

.pl-title-line-1 {
	margin: 10px auto 10px auto;
}


</style>


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
	<section>
		<div class="pagenation-holder">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/office/office">관리 사무소</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/itemLost/lostList">분실물 보관소</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">분실물 보관소</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title" style="font-size: 13px;">주인을 기다리고 있어요. <br>분실물은 관리사무소에서 찾아가세요~~!</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
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
									<div class="cbp-l-caption-title void">${item.lostContent}</div>
									<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
					<button type="button" class="btn btn-border light" onclick="lostModify(${item.lostNo})">수정</button>
					</div>
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
									<div class="cbp-l-caption-title void">${item.lostContent}</div>
									<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate} / 수정일자 : ${item.lostUpdate}</div>

								</div>
								<button type="button" class="btn-yj btn-gyellow" onclick="lostModify(${item.lostNo})">수정</button>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
		<div class="col-sm-12" align="center">
	<button type="button" id="register" class="btn btn-default">등록</button>
		</div>
	</div>
	</div>
	</section>
	<section class="sec-padding section-light">
	
	

	<!-- 수정 모달 -->
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
									<div class="text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">분실물 수정</h4>
						<div class="clearfix"></div>
					</div>
								</div>
							</div>
							<div class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-gyellow" id="lostModal">저장</button>
								<button type="button" class="btn btn-gyellow" data-dismiss="modal" id="modalClose">닫기</button>
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
				+  '	<section class="sec">'
				+  '		<div class="container" style="margin-left:25px">'
				+  '			<div class="row">'
				+  '				<table class="table-style-2">'
				+  '					<tr>'
				+  '					  <th>분실물번호</th>'
				+  '					  <td><input type="hidden" name="lostNo" value="' + data.lostNo + '">' + data.lostNo + '</td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>등록일자</th>'
				+  '					  <td>' + data.lostDate + '</td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>수령여부</th>'
				+  '					  <td><select class="form-control" name="lostStatus" style="width:100px">'
				+  '					 		 <option value="' + data.lostStatus + '">' + data.lostStatus + '</option>'
				+  '					 		 <option value="수령완료">수령완료</option></select></td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>분실물내용</th>'
				+  '					  <td><textarea name="lostContent" class="form-control">' + data.lostContent + '</textarea></td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th>분실물파일</th>'
				+  '					  <td><input type="file" name="lostChangeImg" style="padding-bottom:5px">'
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