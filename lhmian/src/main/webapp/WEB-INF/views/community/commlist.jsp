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
			<div class="background-imgholder"
				style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000"
					alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner"></div>
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
							href="${pageContext.request.contextPath}/resident/resident">입주민
								공간</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/commlist">커뮤니티</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">커뮤니티</h4>
					<div class="clearfix"></div>
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
						<th>번호</th>
						<th>아이디</th>
						<th>제목</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="comm">
						<tr class="move tr_1" data-commNo="${comm.commNo}">
							<td>${comm.commNo}</td>
							<td>${comm.id}</td>
							<td>${comm.commTitle}</td>
							<td><fmt:formatDate value="${comm.commDate}" type="both"
									pattern="yy-MM-dd" /></td>
							<td>${comm.commHit}</td>
					</c:forEach>
				</tbody>
			</table>
      <!-- 10/19 버튼 텍스트 수정: 이나은 (다른 페이지와 통일을 위해서...) -->
   <button type="button" onclick="location.href='register'" class="btn btn-border light" style="float:right; margin-right:20px; padding: 4px 13px;">글쓰기</button>
			<br>

			<!-- 폼 -->
			<div id="pageButton" style="margin: auto; width: 50%">
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

			<!-- 10/19 페이징 정리 -->
			<!-- 옵변 변환 + keyword =null -> 검색시 초기화 / 옵변 변환 + keyword -> 페이지넘버 클릭시 옵션 초기화 및 페이지 이동가능 -->
			<div style="margin: auto;" id="criteriaForm" data-option="${type}">
				<form id="actionForm" action="commlist" method="get">
					<!-- 메소드 생략시 자동으로 get로 전환 -->
					<select name="type" class="form-control" style="width: 100px;">
						<option id="" value=""
							${empty pageMaker.cri.type eq "" ? selected : ""}>선택</option>
						<option id="T" value="T"
							${pageMaker.cri.type eq 'T' ? selected : ""}>제목검색</option>
						<option id="C" value="C"
							${pageMaker.cri.type eq 'C' ? selected : ""}>번호</option>
						<option id="W" value="W"
							${pageMaker.cri.type eq 'W' ? selected:''}>작성자</option>
						<option id="TC" value="TC"
							${pageMaker.cri.type eq 'TC' ? selected:''}>제목
							or 내용</option>
						<option id="TW" value="TW"
							${pageMaker.cri.type eq 'TW' ? selected:''}>제목
							or 작성자</option>
						<option id="TWC" value="TWC"
							${pageMaker.cri.type eq 'TWC' ? selected:''}>제목
							or 작성자 or 내용</option>
					</select> <input name="keyword" class="form-control" style="width: 200px;"
						value="${pageMaker.cri.keyword}"> <input type="hidden"
						name="pageNum" value="${pageMaker.cri.pageNum}"> <input
						type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="preType" id="preType" value="${type}">
					<input type="hidden" name="preKey" id="preKey" value="${preKey}">
					<button type="button" id="btnSearch" class="btn btn-dark">검색</button>
				</form>
			</div>
		</div>
	</div>
</section>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var actionForm = $("#actionForm");

	$(".move")
			.on(
					"click",
					function(e) {
						e.preventDefault();
						var commno = $(this).attr("data-commNo")
						actionForm
								.append('<input type="hidden" name="commNo" value="'+commno+'">')
						actionForm.attr("action", "get")
						actionForm.submit();
					});

	$("#pageButton a").on("click", function(e) {

		e.preventDefault(); //a, submit
		var p = $(this).attr("href") //클릭한 값
		$('[name="pageNum"]').val(p)
		actionForm.submit();
	});

	$("#btnSearch").on("click", function(e) {
		e.preventDefault();
		if ($('[name="keyword"]').val() == "") {
			location.href = "commlist";
		} else {
			actionForm.submit();
		}
	});

	// 10/14 selected 추가
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

			if (option.indexOf('TC') != -1) {
				$('#TC').prop("selected", true);
			} else {
				$('#TC').prop("selected", false);
			}

			if (option.indexOf('TW') != -1) {
				$('#TW').prop("selected", true);
			} else {
				$('#TW').prop("selected", false);
			}

			if (option.indexOf('TWC') != -1) {
				$('#TWC').prop("selected", true);
			} else {
				$('#TWC').prop("selected", false);
			}
		});
	}
</script>