<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
</style>
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
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/office/office">우리 아파트</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/office/noticeList">공지사항</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">공지사항</h4>
						<div class="clearfix"></div>
						<!-- <p class="by-sub-title">투명한 운영 정보 공개로 ... 어쩌구..ㅋㅋ</p> -->
					</div>
				</div>
				<div class="clearfix"></div>
				
				
				<div class="text-box white padding-4 col-7">
						<div class="text-box">
							<h4 class="col-md-8 font-weight-7" style="margin-top:5px; padding-left:20px;font-size:20px;">${notice.noticeTitle}</h4>
							<h6 class="col-md-4" style="float: right; text-align: end;">
							<i class="bi bi-calendar"></i> 작성일자 : <fmt:formatDate value="${notice.noticeDate}" pattern="yy-MM-dd" />
							<c:if test="${notice.noticeUpdate != null}"> | 최종수정 : <fmt:formatDate value="${notice.noticeUpdate}" pattern="yy-MM-dd" /></c:if></h6>
						</div>
							
						<div class="divider" style="margin-bottom:10px"></div>
						<div class="text-box padding-2 void" style="margin-bottom: 20px; ">${notice.noticeContent}</div>
						<div class="divider"></div>
						<div align="center">
						<button type="button" class="btn btn-default" onclick="location.href='../office/noticeList'">목 록</button>
					</div>
				</div>
			</div>
			</div>
	</section>
							
		