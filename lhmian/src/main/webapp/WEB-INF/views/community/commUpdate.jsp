<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>

<style>
	.ck-editor__editable {
	    min-height: 400px;
	}
</style>

<!-- CKeditor 적용으로 인한 일부수정(10/11) : 이나은 -->

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
							<li class="current"><a href="#">커뮤니티</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">커뮤니티</h4>
						<div class="clearfix"></div>

						<p class="by-sub-title">게시글을 작성해주세요.</p>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
				<form role="form" id="frm" name="frm" action="commUpdate" method="post">
					<div>
						<input type="text" id="commTitle" name="commTitle" class="form-control" value="${comm.commTitle}">
						<hr>
					</div>
					<div>
						<textarea class="form-control" id="commContent" name="commContent">${comm.commContent}</textarea>
					</div>
					<br><br>
					<div>
						<input type="hidden" id="commNo" name="commNo" value="${comm.commNo}">
						<input type="hidden" id="id" name="id" value="${user.username}"> 
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<button type="button" class="btn btn-gyellow" id="btnRegister">수정</button>
				        <button type="reset" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/commlist'">목록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	$("#btnRegister").on("click", function () {
		
		if ($('#commTitle').val() == "") {
			alert('양식을 모두 입력해주세요.');
		} else {
			frm.submit();
		}
	});
	
    ClassicEditor.create(document.querySelector('#commContent'))
	 .catch(error => { console.error(error); });
	
</script>
