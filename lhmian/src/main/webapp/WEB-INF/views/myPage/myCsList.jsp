<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
							<li class="current"><a href="#">작성글 조회</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">작성글 조회</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">작성글 조회...</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
				<table class="table">
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>작성일자</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="cs">
							<tr class="tr_1" onclick="location.href='${pageContext.request.contextPath}/office/csSelect?csNo=${cs.csNo}'">
								<td>${cs.csNo}</td>
								<td>${cs.csTitle}</td>
								<td><fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" /></td>
								<td>
									<c:if test="${not empty cs.csAnswer}">답변완료</c:if>
									<c:if test="${empty cs.csAnswer}">처리중</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div style="float: left; margin-top: 20px;">
					<form id="actionForm" action="myConfList" method="get">
						<select name="type" class="form-control" style="width: 100px; float: left;">
							<option value="" <c:out value="${empty pageMaker.cri.type ? 'selected' : ''}"/>>선택</option>
							<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : ''}"/>>제목</option>
							<option value="C" <c:out value="${pageMaker.cri.type eq 'C' ? 'selected' : ''}"/>>내용</option>
							<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>전체</option>
						</select> 
						<input name="keyword" class="form-control" style="width: 200px; float: left;" value="${pageMaker.cri.keyword}"> 
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<button type="submit" class="btn btn-dark" style="float: left;">검색</button>
					</form>
				</div>
				<div id="pageBtn" style="margin: auto; width: 50%">
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

			</div>
			<br><br><br><br><br><br>
		</div>
	</section>
</body>

<script>
	var actionForm = $('#actionForm');
	
	$('#pageBtn a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});
</script>