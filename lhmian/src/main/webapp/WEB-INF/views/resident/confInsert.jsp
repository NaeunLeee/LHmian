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
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
							<li class="current"><a href="#">입주자 대표회의</a></li>
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
						<p class="by-sub-title">게시글 등록....</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
				<form id="frm" name="frm" action="confInsert" method="post">
					<div>
						<input type="text" id="confTitle" name="confTitle" class="form-control" placeholder="제목을 입력하세요.">
						<hr>
					</div>
					<div>
						<textarea id="confContent" name="confContent"></textarea>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<input type="hidden" name="confWriter" value="${name}">
					</div>
					<div align="center">
						<button type="button" id="registerBtn" class="btn btn-gyellow">등록</button>
						<button type="button" class="btn btn-default" onclick="loction.href='confList'">목 록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>

<script>
	$("#registerBtn").on("click", function () {
		
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