<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<!-- Style Customizer's stylesheets -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/spectrum.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/style-customizer/css/style-customizer.css">
<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/less/skin.less">
<script src="${pageContext.request.contextPath}/resources/js/style-customizer/js/spectrum.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/cubeportfolio/masonry.js"></script>
<style>
.cbp-caption-defaultWrap, .cbp-caption-activeWrap {
	-webkit-transition: -webkit-transform 0.6s cubic-bezier(0.19, 1, 0.22, 1);
	transition: transform 0.6s cubic-bezier(0.19, 1, 0.22, 1);
}

.cbp-caption-defaultWrap {
	position: relative;
}

.statusDone {
	-webkit-filter: grayscale(80%);
}

.cbp-item-yj:hover .cbp-caption-defaultWrap {
	-webkit-transform: translateY(-30px);
	transform: translateY(-30px);
}

.cbp-item-yj:hover .cbp-caption-activeWrap {
	-webkit-transform: translateY(-57px);
	transform: translateY(-57px);
}

.status {
	display: inline-block;
}
</style>
<div align="center">
	<c:forEach items="${lost}" var="item">
		<c:if test="${item.lostStatus eq '수령전'}">
			<div class="status">
				<div class="cbp-item-yj web-design">
					<div class="cbp-caption-defaultWrap">
						<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="">
					</div>
					<div class="cbp-caption-activeWrap">
						<div class="cbp-l-caption-alignCenter">
							<div class="cbp-l-caption-body">
								<div class="cbp-l-caption-title">${item.lostContent}</div>
								<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<br>

	<c:forEach items="${lost}" var="item">
		<c:if test="${item.lostStatus eq '수령완료'}">
			<div class="status">
				<div class="cbp-item-yj web-design statusDone">
					<div class="cbp-caption-defaultWrap">
						<img src="${pageContext.request.contextPath}/lost_img/${item.lostFile}" alt="">
					</div>
					<div class="cbp-caption-activeWrap">
						<div class="cbp-l-caption-alignCenter">
							<div class="cbp-l-caption-body">
								<div class="cbp-l-caption-title">${item.lostContent}</div>
								<div class="cbp-l-caption-desc">작성일자 : ${item.lostDate} / 수정일자 : ${item.lostUpdate}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</c:forEach>
</div>