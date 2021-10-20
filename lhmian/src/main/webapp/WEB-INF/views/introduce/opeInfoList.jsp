<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 운영 정보 공개</title>

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

.trans-15 {
	background-color: rgba(0, 0, 0, 0.15) !important;
}
</style>

</head>
<body>
	<div class="header-inner-tmargin">
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터6.jpg); background-position:50% 100px !important">
					<img class="nodisplay-image"
						src="${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg"
						alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner trans-15"></div>
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
							<li><a
								href="${pageContext.request.contextPath}/introduce/myApt">우리
									아파트</a></li>
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
			<div class="text-box white padding-4 col-7">
				<table class="table">
					<thead>
						<tr>
							<th>No</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="info">
							<tr class="move tr_1" data-oiNo="${info.oiNo}">
								<td>${info.oiNo}</td>
								<td>${info.oiType}</td>
								<td>${info.oiTitle}</td>
								<td><fmt:formatDate value="${info.oiDate}"
										pattern="yy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pageBtn" style="margin: auto; width: 50%">
					<ul class="pagination hover-orange">
						<c:if test="${pageMaker.prev == true}">
							<li><a href="${pageMaker.startPage-1}"> <span
									aria-hidden="true"><i class="fa fa-angle-left"></i></span>
							</a></li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="num">
							<li><a href="${num}"
								style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next == true}">
							<li><a href="${pageMaker.endPage+1}"> <span
									aria-hidden="true"><i class="fa fa-angle-right"></i></span>
							</a></li>
						</c:if>
					</ul>
				</div>

				<!-- 10/16 option id 추가, keyword 수정 -->

				<div style="margin: auto;" id="criteriaForm" data-option="${type}">
					<form id="actionForm" action="opeInfoList" method="get">
						<select name="type" class="form-control" style="width: 100px;">
							<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
							<option id="T" value="T"
								${pageMaker.cri.type eq 'T' ? selected : ""}>제목</option>
							<option id="C" value="C"
								${pageMaker.cri.type eq 'C' ? selected : ""}>카테고리</option>
						</select> <input name="keyword" class="form-control" style="width: 200px;"
							value="${pageMaker.cri.keyword}"> <input type="hidden"
							name="pageNum" value="${pageMaker.cri.pageNum}"> <input
							type="hidden" name="amount" value="${pageMaker.cri.amount}">
						
						<input type="hidden" name="preKey" id="preKey" value="${preKey}">
						<input type="hidden" name="preType" id="preType" value="${type}">
						<button type="button" id="btnSearch" class="btn btn-dark">검색</button>
					</form>
				</div>
			</div>
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

	$('.move')
			.on(
					"click",
					function(e) {
						e.preventDefault();
						var oiNo = $(this).attr("data-oiNo");
						actionForm
								.append('<input type="hidden" name="oiNo" value="' + oiNo + '">');
						actionForm.attr("action", "opeInfoSelect");
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

	$("#btnSearch").on("click", function(e) {
		e.preventDefault();
		if ($('[name="keyword"]').val() == "") {
			location.href = "opeInfoList";
		} else {
			actionForm.submit();
		}
	});

	let option = $('#criteriaForm').attr('data-option');
	if ($('[name="keyword"]').val() != "") {
		$(document).ready(function() {

			if (option.indexOf('T') != -1) {
				$('#T').prop("selected", true);
			} else {
				$('#T').prop("selected", false);
			}

			if (option.indexOf('C') != -1) {
				$('#C').prop("selected", true);
			} else {
				$('#C').prop("selected", false);
			}
		});
	}
</script>


</html>