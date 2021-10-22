<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
<link href="${pageContext.request.contextPath}/resources/js/file-upload/fileinput.css" rel="stylesheet" type="text/css" />

<style>
	.ck-editor__editable {
	    min-height: 400px;
	}
	#uploadDiv {
		display: none;
	}
	.bi.bi-x-circle-fill {
		cursor: pointer;
	}
	.container {
		width: 85%;
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

<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white">
				<div class="pages-sidebar-item">
					<ul class="pages-sidebar-links">
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a class="active" href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
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
				<div>
					<ul class="nav nav-tabs nav-justified">
						<li class="nav-item">
							<a class="nav-link active" href="admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admNoticeList">공지사항</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admCsList">민원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admVoteList">투표</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admSked">일정 관리</a>
						</li>
					</ul>
				</div>
				<div></div><br><br><br>
				<div>
					<form id="frm" name="frm" action="admOpeInfoUpdate" method="post">
						<div>
							<select name="oiType" id="oiType" class="form-control" style="width: 18%; float: left;" data-oiType="${info.oiType}">
								<option value="관리규약">관리규약</option>
								<option value="재무제표">재무제표</option>
								<option value="안전관리">안전관리</option>
							</select> &nbsp;&nbsp; 
							<input type="text" name="oiTitle" class="form-control" style="width: 80%; float: left;" value="${info.oiTitle}">
							<hr>
						</div>
						<div>
							<textarea id="oiContent" name="oiContent" class="form-control">${info.oiContent}</textarea>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							<input type="hidden" id="oiNo" name="oiNo" value="${info.oiNo}">
						</div>
					</form>
					<div id="uploadedFile" style="padding: 10px;">
						<c:if test="${info.oiFileid != null}">
							<div class="col-md-3">
								<i class="bi bi-file-earmark-arrow-down"></i>&nbsp;&nbsp;첨부파일
							</div>
							<div class="col-md-9">
								<a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>&nbsp;&nbsp;
								<i class="bi bi-x-circle-fill" id="fileDelBtn"></i>
							</div>
						</c:if>
					</div>
					<div id="fileUpload" style="margin-top: 10px;">
						<c:if test="${info.oiFileid == null}">
							<div style="width: 20%;">
								<input type="file" class="file" id="uploadFile" name="uploadFile" style="float: left;">
							</div>
							<div style="width: 75%; float: right;">
								<input type="text" id="uploaded" class="form-control" value="첨부파일 없음" readonly>
							</div>
						</c:if>
					</div>
				</div><br><br><br>
				<div class="row" align="center">
					<button type="button" id="updateBtn" class="btn btn-dark">수정</button>
					<button type="button" class="btn btn-default" onclick="location.href='admOpeInfoList'">목록</button>
				</div>
				</div>
				<br>
			</div><br><br>
		</div>
	</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";

	$(function() {
		
		$('#oiType').val($('#oiType').attr('data-oiType')).prop("selected", true);
		
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
		$(document).on("change", '#uploadFile', function() {
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

			$.ajax({
				processData : false,
				contentType : false,
				url : "opeInfoFileAttach",
				data : formData,
				type : 'POST',
				beforeSend: function(xhr) {
		            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		        },
				success : function(datas) {
					var str = "";
					var filename = "";

					for (i = 0; i < datas.length; i++) {
						var obj = datas[i];
						var fileCallPath = encodeURIComponent(obj.oiFilepath + "/"
											+ obj.oiFileid + "_" + obj.oiFilename);
						var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");

						str += "<input type='hidden' name='oiFilename' value='" + obj.oiFilename + "'>";
						str += "<input type='hidden' name='oiFileid' value='" + obj.oiFileid + "'>";
						str += "<input type='hidden' name='oiFilepath' value='" + obj.oiFilepath + "'>";
						
						filename = obj.oiFilename;
					}
					$('#uploaded').val(filename);
					$('#frm').append(str);
				}
			});

		});

		// 등록 버튼 이벤트
		$('#updateBtn').on("click", function() {
			
			if ($('#oiType').val() == "" || $('#oiTitle').val() == "") {
		    	alert('양식을 모두 입력해주세요.');
		    } else {
				$('#frm').submit();
		    }
		});
		
		// 첨부파일 삭제
		$('#fileDelBtn').on("click", function() {
			if (confirm('파일을 삭제하시겠습니까?')) {
				$.ajax({
					url: 'opeInfoDelFile',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			        },
			        type: 'POST',
			        data: JSON.stringify({ 
			        	oiNo: $('#oiNo').val()
			        }),
			        contentType: 'application/json',
			        success: function() {
			        	$('#uploadedFile').empty();
			        	alert('삭제되었습니다.');
			        	
			        	var str = "";
			        	
			        	str += '<div style="width: 20%">';
			        	str += '<input type="file" class="file" id="uploadFile" name="uploadFile" style="float: left;">';
			        	str += '</div>';
			        	str += '<div style="width: 75%; float: right;">';
			        	str += '<input type="text" id="uploaded" class="form-control" value="첨부파일 없음" readonly>';
			        	str += '</div>';
			        	
			        	
			        	$('#fileUpload').html(str);
			        }
				});
			}
		})
		
	});
	
    ClassicEditor.create(document.querySelector('#oiContent'))
    			 .catch(error => { console.error(error); });
	
</script>

</html>