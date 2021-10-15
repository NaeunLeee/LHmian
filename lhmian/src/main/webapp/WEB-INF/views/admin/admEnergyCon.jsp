<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

body {
	background: #f5f5f5;
}

th {
	width: 150px;
	text-align: center;
	background-color: #EEEEEE;
}

tr {
	text-align: center;
	height: 40px;
	border-bottom: 1px solid lightGray;
}

.sec-padding {
	padding: 80px 0 0 0;
}

.pagination>li>a {
	color: black;
}
/* 
.pagination {
	margin-left: 250PX;
} */
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
						<div class="overlay"></div>
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
						<li><a href="">결제?</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/pay/myPaidList">나의 결제내역</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">결제내역</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">결제... 어쩌구..ㅋㅋ</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<table>
				<thead>
					<tr>
						<th>날짜</th>
						<th>동</th>
						<th>호수</th>
						<th>일반관리비</th>
						<th>가스</th>
						<th>전기</th>
						<th>수도</th>
						<th>생활폐기물</th>
						<th>음식물폐기물</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list">
						<tr class="tr_1">
							<td><fmt:formatDate value="${list.yearMonth}" pattern="yy-MM" /></td>
							<td>${list.dong }</td>
							<td>${list.hosu }</td>
							<td>${list.eng}</td>
							<td>${list.gas}</td>
							<td>${list.electric}</td>
							<td>${list.water}</td>
							<td>${list.trash}</td>
							<td>${list.trashFood}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<form id="actionForm" action="admEnergyCon" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	</form>
	<div id="pageButton" style="margin: auto; width: 50%">
		<ul class="pagination hover-orange">
			<c:if test="${pageMaker.prev == true}">
				<li><a href="${pageMaker.startPage-1}"> 
						<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
					</a>
				</li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
				<li><a href="${num}">${num}</a></li>
			</c:forEach>
			<c:if test="${pageMaker.next == true}">
				<li><a href="${pageMaker.endPage+1}"> 
						<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
					</a>
				</li>
			</c:if>
		</ul>
	</div>
</section>
<br>
<script>
	//페이징버튼
	$('#pageButton a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		$('#actionForm').submit();
	})
</script>