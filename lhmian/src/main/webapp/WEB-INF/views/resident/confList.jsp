<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>

<style>
tr {
	cursor: pointer;
}

tr:hover {
	background-color: lightyellow;
}
</style>

</head>
<body>

	<section>
		<div class="pagenation-holder">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h4>입주자 대표회의</h4>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}">Home</a></li>
							<li><a href="#">입주민 공간</a></li>
<%-- 							<li><a href="${pageContext.request.contextPath}/resident/residentmenu">입주민 공간</a></li> --%>
							<li class="current"><a href="#">입주자 대표회의</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="text-box white padding-4">
						<div align="center">
							<div>
								<table border="1">
									<tr>
										<th>글 번호</th>
										<th>제 목</th>
										<th>작성자</th>
										<th>작성일자</th>
									</tr>
									<c:forEach items="${list}" var="conf">
										<tr>
											<td>${conf.confNo}</td>
											<td><a class="move" href="${conf.confNo}">${conf.confTitle}</a></td>
											<td>${conf.confWriter}</td>
											<td><fmt:formatDate value="${conf.confDate}"
													pattern="yy-MM-dd" /></td>
										</tr>
									</c:forEach>
								</table>
								<button type="button" onclick="location.href='confInsert'">글
									쓰기</button>
							</div>
							<br>
							<div id="pageBtn">
								<ul class="pagination style-1 hover-violet">
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

							<form id="actionForm" action="confList" method="get">
								<div style="float: left;">
									<select name="type" class="form-control">
										<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
										<option value="T"
											${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
										<option value="W"
											${empty pageMaker.cri.type == 'W' ? selected : ""}>작성자</option>
										<option value="TW"
											<c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : ''}"/>>전체</option>
									</select>
								</div>
								&nbsp;&nbsp;
								<div style="float: left;">
									<input name="keyword" class="form-control"
										value="${pageMaker.cri.keyword}"> <input type="hidden"
										name="pageNum" value="${pageMaker.cri.pageNum}"> <input
										type="hidden" name="amount" value="${pageMaker.cri.amount}">
								</div>
								&nbsp;&nbsp;
								<button type="submit" class="btn btn-small" style="float: left;">검색</button>
							</form>
							<br>
							<br>
						</div>
					</div>
					<!--end item-->
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<!-- end section -->



</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	var actionForm = $('#actionForm');
	$('.move')
			.on(
					"click",
					function(e) {
						e.preventDefault();
						var confNo = $(this).attr("href");
						actionForm
								.append('<input type="hidden" name="confNo" value="' + confNo + '">');
						actionForm.attr("action", "confSelect");
						actionForm.submit();
					});

	$('#pageBtn a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		actionForm.submit();
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