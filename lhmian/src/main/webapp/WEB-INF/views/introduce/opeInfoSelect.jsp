<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	#oiType {
		width: 80px;
		float: left;
		margin-right: 10px;
		border: 1px solid lightgray;
		text-align: center;
		font-weight: bold;
	}
	#oiTitle {
		width: 300px;
		float: left;
		border: 1px solid lightgray;
		padding-left: 10px;
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
							<li><a href="${pageContext.request.contextPath}/introduce/myApt">우리 아파트</a></li>
							<li class="current"><a href="#">운영 정보 공개</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">운영 정보 공개</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">투명한 운영 정보 공개로 ... 어쩌구..ㅋㅋ</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="text-box white padding-4 col-7">
					<div>
						<div id="oiType"><h5>${info.oiType}</h5></div>
						<div id="oiTitle"><h5>${info.oiTitle}</h5></div>
						<div style="float: right;">
							작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" /> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" />
						</div>
						<hr>
						<div class="text-box padding-2 border" style="margin-bottom: 20px;">
							${info.oiContent}
						</div>
						<c:if test="${info.oiFileid != null}">
							<div class="col-md-1">
								첨부파일
							</div>
							<div class="col-md-11">
								<a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>
							</div>
						</c:if>
					</div>
					<br>
					<div align="center">
						<button type="button" class="btn btn-default" onclick="location.href='../introduce/opeInfoList'">목 록</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

</html>