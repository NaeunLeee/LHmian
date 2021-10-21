<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>
</head>

<style>
	.void {
		white-space: pre-wrap;	/* 공백, 엔터키 보존 */
	}
	
	.info {
		padding-right: 5px;
	}

	#confContent {
		margin:20px 0;
		width: 100%;
		min-height: 200px;
		background-color:transparent; 
		border:none;
	}
	
	#confTitle {
		font-size: 20px;
		height: 35px;
	}
</style>

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
                  <p class="by-sub-title" style="font-size: 13px;">동대표 주민들이 모여 회의하는 공간입니다.</p>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
      </div>

		<div class="container">
			<div class="row">
				<div class="text-box white padding-4 col-7" >
					<div class="text-box">
						<div id="confTitle" class="col-md-12 font-weight-7" style="height:35px; font-size:20px">${conf.confTitle}</div>
							<div class="text-box">
								<h6 class="info col-md-4 padding-4" style="font-size:14px;">| ${conf.confWriter}</h6>
								<h6 class="info col-md-8 padding-4" style="text-align:right">
									<i class="bi bi-calendar"></i> 작성일자 : <fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" />
									<c:if test="${not empty conf.confUpdate}"> | 수정일자 : <fmt:formatDate value="${conf.confUpdate}" pattern="yy-MM-dd" /></c:if>
								</h6>
							</div>
						<div class="text-box padding-2 void" id="confContent">${conf.confContent}</div>
						<div class="padding-4 col-sm-12 " align="right">
							<c:if test="${conf.confWriter eq name}">
								<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="modifyBtn">수정</button>
								<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="deleteBtn">삭제</button>
							</c:if>	
							<button type="button" class="btn btn-border light" style="padding: 4px 13px;" onclick="location.href='confList'" >목록</button>
						</div>
						<div>
							<form id="deleteForm" name="deleteForm" action="confDelete" method="post">
								<input id="confNo" name="confNo" type="hidden" value="${conf.confNo}">
								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	$('#deleteBtn').on("click", function() {
		if (confirm('정말로 삭제하시겠습니까?')) {
			$('#deleteForm').submit();
		}
	});
	
	$('#modifyBtn').on("click", function() {
		
		if (confirm('수정하시겠습니까?')) {
			$(location).attr('href','confUpdate?confNo=' + $('#confNo').val());
		}
		
	});
	
/* 	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}"; 
	
	$('#modifyBtn').on("click", function() {
		if ($(this).attr('id') == 'modifyBtn') {
	
			if (confirm('수정하시겠습니까?')) {
				$('#confTitle').attr("disabled", false);
				$('#confContent').attr("disabled", false);
				$(this).attr('id', 'updateBtn').html('완료');
			}
			
		} else if ($(this).attr('id') == 'updateBtn') {
			
			if (confirm('수정사항을 반영하시겠습니까?')) {
				
				$.ajax({
					url: "confUpdate",
					type: "post",
					dataType: "json",
					data: JSON.stringify({
						confNo: $('#confNo').val(),
						confTitle: $('#confTitle').val(),
						confContent: $('#confContent').val()
					}),
					contentType: 'application/json',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					success: function (data) {
						alert("수정이 완료되었습니다!");
						console.log(data);
					},
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				});
				
				$('#confTitle').attr('disabled', true);
				$('#confContent').attr('disabled', true);
				$(this).attr('id', 'modifyBtn').html('수정');
			}
		}
		
	});	 */
	

	
</script>

</html>