<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 운영 정보 공개</title>

<style>
	#uploadDiv {
		display: none;
	}
	.bi.bi-x-circle-fill {
		cursor: pointer;
	}
	.container {
		width: 80%;
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
<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-12 col-xs-12 section-white">
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
			<div class="col-md-8">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">게시글을 조회 및 수정합니다.</p>
				</div>
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item">
						<a class="nav-link active" href="#">운영 정보 공개</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admNoticeList">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/admin/admCsList">민원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">투표</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">분실물 보관소</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">일정 관리</a>
					</li>
				</ul>
				<div class="row">
					<div class="text-box white padding-4 col-7">
							<div class="text-box">
								<div class="col-md-12">
									<div class="col" style="width:100px; font-size:12px;">${info.oiType}</div>
								</div>
								<div class="text-box">
								<h4 class="col-md-8 font-weight-7" style="margin-top: 5px;">${info.oiTitle}</h4>
								<h6 class="col-md-4" style="float: right; text-align: end;">
								작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" /></h6>
							</div>
							</div>
							
							<hr>
							<div class="text-box padding-2 border" style="margin-bottom: 20px;">
								${info.oiContent}
							</div>
							<div>
								<c:if test="${info.oiFileid != null}">
									<div class="col-md-2">
										첨부파일
									</div>
									<div class="col-md-10">
										<a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>&nbsp;&nbsp;
										<i class="bi bi-x-circle-fill" id="fileDelBtn"></i>
									</div>
								</c:if>
							</div>
						<br><br><br>
						<div align="center">
							<button type="button" class="btn btn-default" id="modifyBtn">수정</button>
							<button type="button" class="btn btn-default" id="deleteBtn">삭제</button>
							<button type="button" class="btn btn-default" onclick="location.href='../admin/admOpeInfoList'">목록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	// 첨부파일 확장자 체크
	function checkExtension(filename) {
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		if (regex.test(filename)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	};
	
	// 첨부파일 업로드 함수
	$('#uploadBtn').on("click", function() {
		var formData = new FormData(document.frm);
		var inputFile = $('[name="uploadFile"]');
		var files = inputFile[0].files;
	
		// 파일이 여러개 들어올 걸 대비해서... -> 너무 복잡해져서 파일은 일단 하나만..ㅠ
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
			success : function(datas) {
				var li = "";
				var str = "";
	
				for (i=0; i<datas.length; i++) {
					var obj = datas[i];
					var fileCallPath 
						= encodeURIComponent(obj.oiFilepath + "/" + obj.oiFileid + "_" + obj.oiFilename);
					var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
	
					li += "<li>";
					li += "<span> "+ obj.oiFilename + "</span>";
					li += "</li>";
	
					str += "<input type='hidden' id='oiFilename' name='oiFilename' value='" + obj.oiFilename + "'>";
					str += "<input type='hidden' id='oiFileid' name='oiFileid' value='" + obj.oiFileid + "'>";
					str += "<input type='hidden' id='oiFilepath' name='oiFilepath' value='" + obj.oiFilepath + "'>";
	
				}
				$('#uploaded').html(li);
				$('#frm').append(str);
			}
		});
	});

	// 게시글 수정
	$('#modifyBtn').on("click", function() {
		
		if ($(this).attr('id') == 'modifyBtn') {
	
			if (confirm('내용 수정 후에 완료 버튼을 눌러주세요.')) {
				$('#oiTitle').attr("disabled", false);
				$('#oiContent').attr("disabled", false);
				$('#uploadDiv').css('display', 'block');
				$(this).attr('id', 'updateBtn').html('완료');
			}
			
		} else if ($(this).attr('id') == 'updateBtn') {
			
			if (confirm('수정사항을 반영하시겠습니까?')) {
				var oiFileid;
				var oiFilename;
				var oiFilepath;
				
				// 내용만 수정할 때 첨부파일 정보는 그대로 db에 넘겨주기 위해
				if ($('#fileDiv').attr('data-oiFileid') != null) {
					oiFileid = $('#fileDiv').attr('data-oiFileid');
					oiFilename = $('#fileDiv').attr('data-oiFilename');
					oiFilepath = $('#fileDiv').attr('data-oiFilepath');
				} else if ($('#fileDiv').attr('data-oiFileid') == null) {
					oiFileid = $('#oiFileid').val();
					oiFilename = $('#oiFilename').val();
					oiFilepath = $('#oiFilepath').val();
				}
				
				$.ajax({
					url: "opeInfoUpdate",
					type: "post",
					dataType: "json",
					data: JSON.stringify({
						oiNo: $('#oiNo').val(),
						oiTitle: $('#oiTitle').val(),
						oiContent: $('#oiContent').val(),
						oiFileid: oiFileid,
						oiFilename: oiFilename,
						oiFilepath: oiFilepath
					}),
					contentType: 'application/json',
					success: function (data) {
						alert("수정이 완료되었습니다!");
						console.log(data);
					},
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
				
				$('#oiTitle').attr('disabled', true);
				$('#oiContent').attr('disabled', true);
				$(this).attr('id', 'modifyBtn').html('수정');
			}
		}
		
	});
	
	// 게시글 삭제
 	$('#deleteBtn').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$('#deleteForm').submit();
		}
	});
 	
 	// 첨부파일 삭제
	$('#fileDelBtn').on("click", function() {
		if (confirm('첨부파일을 삭제하시겠습니까?')) {
			
			$.ajax ({
				url: "opeInfoDelFile",
				type: "post",
				dataType: "json",
				data: JSON.stringify({
					oiNo: $('#oiNo').val(),
				}),
				contentType: 'application/json',
				success: function (data) {
					alert('삭제가 완료되었습니다.');
					console.log(data);
					$('#fileDiv').empty();
				},
				error: function (data) {
					alert('다시 시도해주세요.');
				}
			})
		}
	})
	
 	
</script>

</html>