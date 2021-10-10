<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<li><a href="${pageContext.request.contextPath}/office/office">관리사무소</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/admin/admNoticeList">공지사항</a></li>
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
		<th>no</th>
		<th>제목</th>
		<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="notice" items="${list}">
			<tr class="move tr_1" data-noticeNo="${notice.noticeNo}">
				<td>${notice.noticeNo}</td>
				<td>${notice.noticeTitle}</td>
				<td>${notice.noticeDate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<br>

<br>
<!-- 폼 -->
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
		<form id="actionForm" action="admNoticeList" method="get">
		<select name="type" class="form-control" style="width: 100px; ">
			<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
			<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>제목</option>
			<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>내용</option>
			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>제목+내용</option>
		</select>
		<input name="keyword" class="form-control" style="width: 200px;" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button type="submit" class="btn btn-dark">검색</button>
	</form>
</div>
</div>
</div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	var actionForm = $("#actionForm")
	$(".move").on("click", function(e){
		e.preventDefault();				//a의 원래 기능 막고
		var noticeNo = $(this).attr("data-noticeNo")
		actionForm.append('<input type="hidden" name="noticeNo" value="'+ noticeNo +'">')
		actionForm.attr("action", "noticeSelect");
		actionForm.submit();
	});
	
	$("#pageButton a").on("click", function(e){ //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault();		//a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});
</script>