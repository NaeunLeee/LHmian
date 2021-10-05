<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 운영 정보 등록</title>
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
								<div class="text text-center"></div>
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
							<li><a href="${pageContext.request.contextPath}/admin/adminPage">관리자 페이지</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/admOpeInfoList">운영 정보 목록</a></li>
							<li class="current"><a href="#">운영 정보 게시</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-5">
					<div class="col-xs-12 nopadding">
						<div class="sec-title-container-padding-topbottom text-center">
							<div class="pl-title-line-1"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">입주자 대표회의</h4>
							<div class="clearfix"></div>
							<p class="by-sub-title">입주자 대표회의... 설명이 필요해..</p>
						</div>
					</div>
					<div class="clearfix"></div>
					<form id="frm" name="frm" action="admOpeInfoInsert" method="post">
						<div>
							<select name="oiType" class="form-control" style="width: 150px; float: left;">
								<option value="관리규약">관리규약</option>
								<option value="재무제표">재무제표</option>
								<option value="안전관리">안전관리</option>
							</select> &nbsp;&nbsp; 
							<input type="text" name="oiTitle" class="form-control" style="width: 500px; float: left;" placeholder="제목을 입력하세요.">
							<hr>
						</div>
						<div>
							<textarea rows="10" cols="50" name="oiContent" class="form-control"></textarea>
						</div>
					</form>
					<div>
						<input type="file" class="file" name="uploadFile" class="form-control" style="float: left;">
						<button type="button" id="uploadBtn" class="btn btn-default" style="float: left; margin-left: 200px;">파일 첨부</button>
						<ul id="uploaded"></ul>
					</div>
				</div>
				<br>
			</div>
		</div><br><br>
		<div align="center">
			<button type="button" id="insertBtn" class="btn btn-gyellow">등	록</button>
			<button type="reset" class="btn btn-default">취 소</button>
			<button type="button" class="btn btn-default" onclick="location.href='../admin/admOpeInfoList'">목 록</button>
		</div>
	</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(function() {
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");

		function checkExtension(filename) {
			if (regex.test(filename)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
		;

		// 파일 첨부 버튼 이벤트
		$('#uploadBtn')
				.on(
						"click",
						function() {
							var formData = new FormData(document.frm);
							var inputFile = $('[name="uploadFile"]');
							var files = inputFile[0].files;

							for (i = 0; i < files.length; i++) {
								if (!checkExtension(files[i].name)) {
									return;
								} else {
									formData.append("uploadFile", files[i]);
								}
							}

							$
									.ajax({
										processData : false,
										contentType : false,
										url : "opeInfoFileAttach",
										data : formData,
										type : 'POST',
										success : function(datas) {
											var li = "";
											var str = "";

											for (i = 0; i < datas.length; i++) {
												var obj = datas[i];
												var fileCallPath = encodeURIComponent(obj.oiFilepath
														+ "/"
														+ obj.oiFileid
														+ "_" + obj.oiFilename);
												var fileLink = fileCallPath
														.replace(new RegExp(
																/\\/g), "/");

												li += "<li>";
												li += "<span> "
														+ obj.oiFilename
														+ "</span>";
												li += "</li>";

												str += "<input type='hidden' name='oiFilename' value='" + obj.oiFilename + "'>";
												str += "<input type='hidden' name='oiFileid' value='" + obj.oiFileid + "'>";
												str += "<input type='hidden' name='oiFilepath' value='" + obj.oiFilepath + "'>";

											}
											$('#uploaded').html(li);
											$('#frm').append(str);
										}
									});

						});

		// 등록 버튼 이벤트
		$('#insertBtn').on("click", function() {
			$('#frm').submit();
		});

	});
</script>

</html>