<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 운영 정보 공개</title>

<style>
tr {
	cursor: pointer;
}

tr:hover {
	background-color: lightyellow;
}

table {
	text-align: center;
	background-color: white;
	box-shadow: 5px 5px 5px grey;
}
</style>

</head>
<body>
	<br>
	<br>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/introduce">우리 아파트</a></li>
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
			</div>
		</div>

		<div class="container" align="center">
			<div class="col-7">
				<table border="1" class="table">
					<tr>
						<th>글 번호</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>작성일자</th>
					</tr>
					<c:forEach items="${list}" var="info">
						<tr>
							<td>${info.oiNo}</td>
							<td>${info.oiType}</td>
							<td><a class="move" href="${info.oiNo}">${info.oiTitle}</a></td>
							<td><fmt:formatDate value="${info.oiDate}"
									pattern="yy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<br>
			<div id="pageBtn">
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

			<div>
				<form id="actionForm" action="opeInfoList" method="get">
					<select name="type">
						<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
						<option value="T" ${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
						<option value="C" ${empty pageMaker.cri.type == 'C' ? selected : ""}>카테고리</option>
						<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>전체</option>
					</select> 
					<input name="keyword" value="${pageMaker.cri.keyword}"> 
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<button type="submit">검색</button>
				</form>
			</div>
			<br><br><br><br><br><br>
		</div>
	</section>
</body>


<script>
	$(function() {

		var actionForm = $('#actionForm');
		$('.move')
				.on(
						"click",
						function(e) {
							e.preventDefault();
							var oiNo = $(this).attr("href");
							actionForm
									.append('<input type="hidden" name="oiNo" value="' + oiNo + '">');
							actionForm.attr("action", "opeInfoSelect");
							actionForm.submit();
						});

		$('#pageBtn a').on("click", function(e) {
			e.preventDefault();
			var p = $(this).attr('href');
			$('[name="pageNum"]').val(p);
			actionForm.submit();
		});

	});

	$(document).ready(function() {
		var result = '<c:out value="${message}"/>';

		if (result === '') {
			return;
		} else {
			alert(result);
		}
	});
</script>


</html>