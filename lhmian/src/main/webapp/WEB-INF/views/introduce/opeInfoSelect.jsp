

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
textarea {
	resize:none;
	border:none;
/* 	overflow: hidden; */
}

.void {
	white-space: pre-wrap;	/* 공백, 엔터키 보존 */
}

::-webkit-scrollbar {	/* 스크롤바 투명하게 하기*/
  display: none;
}					


/*  	#oiType {
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
	
.oiType {
	width: 80px;
	float: left;
	margin-right: 10px;
	text-align: center;
	font-weight: bold;
}

.oiTitle {
	width: 300px;
	float: left;
	 border: 1px solid lightgray; 
	padding-left: 10px;
	font-size:16px;
	
} */
</style>

</head>
<body>
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
			<div class="container-fluid">
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
						<div class="text-box">
							<div class="col-md-12">
								<div class="col" style="width:100px; font-size:12px;">${info.oiType}</div>
								</div>
							<div class="text-box">
							<h4 class="col-md-8 font-weight-7" style="margin-top:5px; font-size:20px;">${info.oiTitle}</h4>
							<h6 class="col-md-4" style="float: right; text-align: end;">
							<i class="bi bi-calendar"></i> 작성일자 : <fmt:formatDate value="${info.oiDate}" pattern="yy-MM-dd" />
							<c:if test="${info.oiUpdate != null}"> | 최종수정 : <fmt:formatDate value="${info.oiUpdate}" pattern="yy-MM-dd" /></c:if></h6>
						</div>
						</div>
						
<%-- 						<div class="text-box padding-2 border" style="margin-bottom: 20px; ">
							${info.oiContent}
						</div> --%>
						
						<!-- 체크에디터 html 태그 제거 -->
						<%-- <textarea class="text-box padding-2 form-control" style="margin-bottom: 20px; background-color:transparent; 
						border:none;"><c:out value='${info.oiContent.replaceAll("\\\<.*?\\\>","")}' /></textarea> --%>
						
						<div class="divider" style="margin-bottom:10px"></div>
						<div class="text-box padding-2 void" style="margin-bottom: 20px; ">${info.oiContent}</div>
						
						
						<c:if test="${info.oiFileid != null}">
						
						<div class="divider" style="margin-bottom: 15px;"></div>
							<div class="col-md-1">
								첨부파일
							</div>
							<div class="col-md-11">
								<a href="opeInfoDownload?oiFileid=${info.oiFileid}">${info.oiFilename}</a>
							</div>
						</c:if>
				
						<div class="divider" style="padding-top:15px;"></div>
					<div align="center">
						<button type="button" class="btn btn-default" onclick="location.href='../introduce/opeInfoList'">목 록</button>
					</div>
				</div>
			</div>
			</div>
	</section>
</body>

</html>

