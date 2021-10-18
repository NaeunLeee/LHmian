<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>

<style>
.btn-gyellow-yj {
	height: 30px;
	color: #fff;
	background-color: #ecae3d;
	padding: 0 30px;
}

.ck-editor__editable {
	min-height: 400px;
}

.trans-15 {
	background-color: rgba(0, 0, 0, 0.15) !important;
}
</style>

<!-- 10/11 추가: 이나은 -->
<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
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
						<li class="current"><a href="#">민원</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">민원</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">게시글 등록....</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<form id="frm" name="frm" action="csUpdateBoard" method="post">
				<div>
					<input type="text" id="csTitle" name="csTitle" class="form-control" value="${cs.csTitle}">
					<hr>
				</div>
				<div>
					<textarea id="csContent" name="csContent">${cs.csContent}</textarea>
				</div>
				<input type="hidden" name="csNo" id="csNo" value="${cs.csNo}">
				<input type="hidden" name="id" id="id" value="${user.username}">
				<input type="hidden" name="houseInfo" value="${user.HOUSEINFO}">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"> <br>
				<br>
				<div align="center">
					<button type="button" id="updateBtn" class="btn btn-gyellow-yj">수정</button>
					<button type="button" onclick="location.href='csList'" class="btn btn-gyellow-yj">목록</button>
				</div>
			</form>
		</div>
	</div>
</section>
<script>
	$("#updateBtn").on("click", function () {
		
		if ($('#csTitle').val() == "") {
			alert('양식을 모두 입력해주세요.');
		} else {
			frm.submit();
		}
	});
	
	ClassicEditor.create(document.querySelector('#csContent')).catch(error => { console.error(error); });
	
</script>