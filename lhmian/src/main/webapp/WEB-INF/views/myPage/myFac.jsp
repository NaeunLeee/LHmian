<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}

th {
	text-align: center;
	background-color: #EEEEEE;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

table {
	background-color: white;
}
.pagination>li>a {
	color: black;
}

.form-control {
	display: inline-block;
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
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이 페이지</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/myPage/myFac">시설이용내역</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">시설 이용 내역</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title" style="font-size: 13px;">시설... 어쩌구..ㅋㅋ</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
	<table class="table" >
		<thead>
			<tr>
				<th>번호</th>
				<th>이용시설</th>
				<th>예약 일자</th>
				<th>기간</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="fac">
				<tr class="move tr_1" data-noticeNo="${fac.rm}">
					<td>${fac.rm}</td>
					<td>${fac.payCat}</td>
					<td><fmt:formatDate value="${fac.payDate}" type="both"
							pattern="yy-MM-dd" /></td>
					<td>${fac.period}</td>
					<td>${fac.price}</td>
			</c:forEach>
		</tbody>
	</table>
			<br><br>
			
			
	<div id="pageButton" style="margin:auto; width: 50%">
			<ul class="pagination hover-orange">
				<c:if test="${pageMaker.prev == true}">
					<li>
						<a href="${pageMaker.startPage-1}">
							<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
						</a>
					</li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
					<li><a href="${num}">${num}</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next == true}">
					<li>
						<a href="${pageMaker.endPage+1}">
							<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
						</a>
					</li>
				</c:if>
			</ul>
		</div>
		
		<div style="margin:auto;">
 	<form id="actionForm" action="myFac" method="get">
 		<!-- 10/07 수정 -->
		<select name="type" class="form-control" style="width: 100px;">
			<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
			<option value="T" ${empty pageMaker.cri.type =='T' ? selected : ""}>이용시설</option>
			<option value="C" ${empty pageMaker.cri.type =='C' ? selected : ""}>기간</option>
		</select> 
		<input name="keyword" class="form-control" style="width: 200px;" value="${pageMaker.cri.keyword}"> <input
			type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-dark">검색</button>
	</form> 
</div>
</div>
</div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var actionForm = $("#actionForm");

	$("#pageButton a").on("click", function(e) {
		e.preventDefault(); //a, submit
		var p = $(this).attr("href") //클릭한 값
		$('[name="pageNum"]').val(p)
		actionForm.submit();
	})
</script>