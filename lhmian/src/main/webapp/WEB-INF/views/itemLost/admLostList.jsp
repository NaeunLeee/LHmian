<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<style>
.cbp-caption-defaultWrap, .cbp-caption-activeWrap {
	-webkit-transition: -webkit-transform 0.6s cubic-bezier(0.19, 1, 0.22, 1);
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
	margin-bottom: 30px;
	width: 300px;
	height: 300px;
	overflow: hidden;
}

.status {
	display: inline-block;
}


.table-style-2 {
	width: 500px;

}

th {
	text-align: center;
	background-color: #EEEEEE;
	width: 100px
}

tr {
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
}

.tr-h50 {
	height: 50px;
}

.tr-h60 {
	height: 60px;
}

.tr-h70 {
	height: 70px;
}

.tr-h150 {
	height: 150px;
}

td {
	border-left: 1px solid lightgray;
	text-align: left;
	padding-left: 15px;
}

textarea {
	width: 380px !important;
	height: 120px !important;
	resize: none;
}

::-webkit-scrollbar {
	display: none;
}

.void {
	white-space: pre-wrap;
	height: 135px;
	overflow: hidden
}

.h4-margin {
	margin-left: 35px;
}

.modal-header {
	border-bottom: 0;
}

.modal-footer {
	text-align: center;
	border: 0
}

.pl-title-line-1 {
	margin: 10px auto 10px auto;
}

.bg2-featurebox-3 .postinfo-box {
	padding: 35px !important;
	height: 300px;
	position: relative;
}

.img-responsive {
	width: 100%
}

button {
	padding: 4px 13px !important;
	border-radius: 4px !important;
}

/* .update-btn{
	position: absolute;
	bottom:0;
	left:50%;
	margin-bottom:20px;
}
 */
.no-margin {
	margin: 0
}

.img-gray {
	-webkit-filter: grayscale(100%);
	filter: gray;
	position: relative;
}

.image-gray .text {
	position: absolute;
	top: 40px;
	left: 80px;
}

.trans-15 {
	background-color: rgba(0, 0, 0, 0.15) !important;
}


</style>


<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg);">
				<img class="nodisplay-image" src="${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner trans-15"></div>
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
					<h4 class="font-weight-7 less-mar-1">분실물 보관소</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">
						주인을 기다리고 있어요. <br>분실물은 관리사무소에서 찾아가세요~~!
					</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>
	<div class="col-sm-12" align="center">
		<button type="button" id="register" class="btn btn-default">등록</button>
	</div>
	<section class="section-light">
		<div class="container">
			<div class="row">
				<c:forEach items="${lost}" var="item">
					<c:if test="${item.lostStatus eq '수령전'}">
						<div class="col-md-4 col-sm-6 col-xs-12">
							<div class="bg2-featurebox-3">
								<div class="img-box">
									<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="" class="img-responsive" />
								</div>
								<div class="postinfo-box">
									<!-- <h4 class="dosis uppercase title"><a href="#">Aliquam Rhoncus</a></h4> -->
									<div class="blog-post-info">
										<span><i class="fas fa-map-marker-alt"></i>&nbsp; 습득장소: ${item.foundLocation}</span>
									</div>
									<div class="blog-post-info">
										<span><i class="bi bi-calendar-check"></i> 습득일자: ${item.lostDate}</span>
									</div>
									<br />
									<p class="void">${item.lostContent}</p>
									<div class="col-sm-12" align="center">
										<button type="button" class="btn btn-border light" onclick="lostModify(${item.lostNo})">수정</button>
									</div>

								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
				<br>
				<c:forEach items="${lost}" var="item">
					<c:if test="${item.lostStatus eq '수령완료'}">
						<div class="col-md-4 col-sm-6 col-xs-12">
							<div class="bg2-featurebox-3">
								<div class="img-box">
									<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="" class="img-responsive img-gray" />
								</div>

								<div class="postinfo-box">
									<!-- <h4 class="dosis uppercase title"><a href="#">Aliquam Rhoncus</a></h4> -->
									<div class="blog-post-info">
										<span><i class="fas fa-map-marker-alt"></i>&nbsp; 습득장소: ${item.foundLocation}</span>
									</div>
									<div class="blog-post-info">
										<span><i class="bi bi-calendar-check"></i> 습득일자: ${item.lostDate}</span>
									</div>
									<br />
									<p class="void">${item.lostContent}</p>
									<div class="col-sm-12" align="center"></div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->

	<!--  모달 -->
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
									<h4 class="h4-margin font-weight-7 less-mar-1"></h4>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<div class="modal-body" align="center"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-gyellow save"></button>
							<button type="button" class="btn btn-gyellow" data-dismiss="modal" id="modalClose">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Template's stylesheets -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/blog2.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/et-line-font/et-line-font.css">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/tabs/css/responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<!-- Scripts -->
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script>
<script src="${pageContext.request.contextPath}/resources/js/sticky/js/jquery.sticky.js"></script>
<!-- Scripts END -->
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>
<script>
 //수정모달   
function lostModify(n) {
	$('#LaFModal').modal('show');
	$('.modal-title h4').html('분실물 수정');
	$('.modal-footer .save').attr("id", 'lostModal');
	$('.modal-footer .save').html('저장');
	$.ajax({
		url : "lostModifyForm",
		type: "get",
		data : {lostNo : n},
		success : function(data) {
			var tag ="";
			tag += '<form method="post" id="modalUpdate" action="lostModify?${_csrf.parameterName }=${_csrf.token }" enctype="multipart/form-data">'
				+  '	<section class="sec">'
				+  '		<div class="container" style="width:100%">'
				+  '			<div class="row">'
				+  '				<table class="table-style-2">'
				+  '					<tr class="tr-h50">'
				+  '					  <th>분실물번호</th>'
				+  '					  <td><input type="hidden" name="lostNo" value="' + data.lostNo + '">' + data.lostNo + '</td>'
				+  '					</tr>'
				+  '					<tr class="tr-h50">'
				+  '					  <th>등록일자</th>'
				+  '					  <td>' + data.lostDate + '</td>'
				+  '					</tr>'
				+  '					<tr class="tr-h60">'
				+  '					  <th>수령여부</th>'
				+  '					  <td><select class="form-control" name="lostStatus" style="width:90px; height:">'
				+  '					 		 <option value="' + data.lostStatus + '">' + data.lostStatus + '</option>'
				+  '					 		 <option value="수령완료">수령완료</option></select></td>'
				+  '					</tr>'
				+  '					<tr class="tr-h150">'
				+  '					  <th>분실물내용</th>'
				+  '					  <td><textarea rows="5" onkeydown="return limitLines(this, event)" id="lostContent" name="lostContent" class="form-control">' + data.lostContent + '</textarea></td>'
				+  '					</tr>'
				+  '					<tr>'
				+  '					  <th class="tr-h70">분실물파일</th>'
				+  '					  <td><input type="file" name="lostChangeImg" style="padding-bottom:5px">'
				+  '						<p class="no-margin" align="left">기등록 파일 : ' + data.lostFile + '</p></td>'
				+  '					</tr>'
				+  '				</table>'
				+  '			</div>'
				+  '		</div>'
				+  '	</section>'
				+  '</form>'
			$("#LaFModal .modal-body").html(tag);
		}
	});
	
	//수정모달 저장버튼
	$('#lostModal').on('click', function() {
		var lostContent = $('#lostContent').val();
		if(!lostContent){
	    	alert("습득물에 대한 설명은 비워두실수 없습니다. \n 내용을 반드시 입력해주세요.");
	    }else{
			modalUpdate.submit();
	    }
	});
};

//등록모달
$('#register').on('click', function() {
	//$(location).attr('href', 'admLostInsert');
	$('#LaFModal').modal('show');
	$('.modal-title h4').html('분실물 등록');
	$('.modal-footer .save').attr("id", 'insertModal');
	$('.modal-footer .save').html('등록');
	$.ajax({
		url : "admLostInsertForm",
		type: "get",
		success : function() {
			var tag ="";
				tag += '<form method="post" id="modalInsert" action="admLostInsert?${_csrf.parameterName }=${_csrf.token }" enctype="multipart/form-data">'
					+  '	<section class="sec">'
					+  '		<div class="container" style="width:100%">'
					+  '			<div class="row">'
					+  '				<table class="table-style-2">'
					+  '					<tr class="tr-h50">'
					+  '					  <th>습득일자</th>'
					+  '					  <td><input type="date"  id="lostDate" name="lostDate"></td>'
					+  '					</tr>'
					+  '					<tr class="tr-h50">'
					+  '					  <th>습득장소</th>'
					+  '					  <td><input type="text" id="foundLocation" name="foundLocation"></td>'
					+  '					</tr>'
					+  '					<tr class="tr-h60">'
					+  '					  <th>분실물내용</th>'
					+  '					  <td><textarea id="lostContent" name="lostContent" placeholder="분실물 내용을 작성하세요."></textarea></td>'
					+  '					</tr>'
					+  '					  <th class="tr-h70">분실물파일</th>'
					+  '					  <td><input type="file" id="lostImg" name="lostImg"></td>'
					+  '					</tr>'
					+  '				</table>'
					+  '			</div>'
					+  '		</div>'
					+  '	</section>'
					+  '</form>'
				$("#LaFModal .modal-body").html(tag);
			}
		});

	//등록모달 저장버튼
	$('#insertModal').on('click', function() { 
		var lostDate = $('#lostDate').val();
		var foundLocation = $('#foundLocation').val();
		var lostContent = $('#lostContent').val();
		var lostImg = $('#lostImg').val();
		if(!lostDate){
       	 	alert("습득일을 지정해주세요.");
	    }else if(!foundLocation){
	    	alert("습득장소를 입력해주세요.");
	    }else if(!lostContent) {
	    	alert("습득물에 대한 상세한 내용을 입력해주세요.");
	    }else if(!lostImg) {
	    	alert("습득물 사진을 첨부해주세요.");
	    }else{
			modalInsert.submit();
	    }
	});
});
</script>