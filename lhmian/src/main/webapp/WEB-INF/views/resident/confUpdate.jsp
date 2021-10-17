<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>

<style>
	.ck-editor__editable {
	    min-height: 400px;
	}
</style>

</head>
<body>

<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
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
							<li><a href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/resident/confList">입주자 대표회의</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">입주자 대표회의</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">게시글을 수정합니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
				<form id="frm" name="frm" action="confUpdate" method="post">
					<div>
						<input type="text" id="confTitle" name="confTitle" class="form-control" value="${conf.confTitle}">
						<hr>
					</div>
					<div>
						<textarea id="confContent" name="confContent">${conf.confContent}</textarea>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<input type="hidden" name="confWriter" value="${name}">
						<input type="hidden" name="confNo" value="${conf.confNo}">
					</div>
					<br><br>
					<div align="center">
						<button type="button" id="updateBtn" class="btn btn-gyellow">수정</button>
						<button type="button" class="btn btn-default" onclick="location.href='confList'">목록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>

<script>
	$("#updateBtn").on("click", function () {
		
		if ($('#confTitle').val() == "") {
			alert('양식을 모두 입력해주세요.');
		} else {
			frm.submit();
		}
	});
	
	ClassicEditor.create(document.querySelector('#confContent'))
	 .catch(error => { console.error(error); });
	
</script>

</html>
