<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<style>
	.container {
		width: 80%;
	}
	
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
	
	.nav-tabs.nav-justified>li>a {
		margin: 0px 1px 0px;
		background-color: #f5f5f5;
	}
	
	.nav-tabs.nav-justified>li>a:hover {
		background-color: #C8C6C6;
	}
	
	.nav-tabs.nav-justified>li>.active {
		background-color: #C8C6C6;
	}
	
	.padding-l40 {
		padding-left: 40px
	}
	
	.padding-t40 {
		padding-top: 40px
	}
</style>


</head>
<body>
	<section class="sec-padding-1">
		<div class="container width-80">
			<div class="row">
				<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
					<div class="pages-sidebar-item">
						<ul class="pages-sidebar-links">
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a class="active" href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-10 col-sm-6 col-xs-12">
					<div></div>
					<br> <br>
					<div class="sec-title-container less-padding-3 text-left">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">게시글을 조회 및 수정합니다.</p>
					</div>
					<ul class="nav nav-tabs nav-justified">
						<li class="nav-item">
							<a class="nav-link" href="admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admNoticeList">공지사항</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="admCsList">민원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admVoteList">투표</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admSked">일정 관리</a>
						</li>
					</ul>

					<div class="text-box white padding-4 col-10">
						<table class="table">
							<thead>
								<tr>
									<th>글 번호</th>
									<th>상 태</th>
									<th>제 목</th>
									<th>작성자</th>
									<th>작성일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="cs">
									<tr class="move tr_1" data-csNo="${cs.csNo}">
										<td class="col-md-1">${cs.csNo}</td>
										<c:if test="${cs.csAnswer != null}">
											<td class="col-md-2" style="color: #14279B;">답변완료</td>
										</c:if>
										<c:if test="${cs.csAnswer == null}">
											<td class="col-md-2" style="color: #FF0000;">처리중</td>
										</c:if>
										<td class="col-md-7" align="left">${cs.csTitle}</td>
										<td class="col-md-1">${cs.name}</td>
										<td class="col-md-1">
											<fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" />
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<br> <br>

						<!-- 10/15 id수정 -->
						<div id="pageBtn" align="center">
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
						<!-- 10/15 action 수정 -->
						<div align="center" id="criteriaForm" data-option="${type}">
							<form id="actionForm" action="admCsList" method="get">
								<select name="type" class="form-control" style="width: 100px;">
									<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
									<option id="T" value="T"
										${pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
									<option id="C" value="C"
										${pageMaker.cri.type == 'C' ? selected : ""}>내용</option>
									<option id="TC" value="TC"
										<c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>전체</option>
								</select> <input name="keyword" class="form-control"
									style="width: 200px;" value="${pageMaker.cri.keyword}">
								<input type="hidden" name="pageNum"
									value="${pageMaker.cri.pageNum}"> <input type="hidden"
									name="amount" value="${pageMaker.cri.amount}"> <input
									type="hidden" name="preType" id="preType" value="${type}">
								<input type="hidden" name="preKey" id="preKey" value="${preKey}">
								<button type="button" id="btnSearch" class="btn btn-dark">검색</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="clearfix"></div>
	<!-- end section -->

</body>

<script>
	$(function() {

		var actionForm = $('#actionForm');
		$('.move')
				.on(
						"click",
						function(e) {
							e.preventDefault();
							var csNo = $(this).attr("data-csNo");
							actionForm
									.append('<input type="hidden" name="csNo" value="' + csNo + '">');
							actionForm.attr("action", "admCsSelect");
							actionForm.submit();
						});

		$('#pageBtn a').on("click", function(e) {
			e.preventDefault();
			var p = $(this).attr('href');
			$('[name="pageNum"]').val(p);
			actionForm.submit();
		});

	});

	$("#btnSearch").on("click", function(e) {
		e.preventDefault();
		if ($('[name="keyword"]').val() == "") {
			location.href = "admCsList";
		} else {
			actionForm.submit();
		}
	});

	$(document).ready(function() {
		var result = '<c:out value="${message}"/>';

		if (result === '') {
			return;
		} else {
			alert(result);
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

			if (option.indexOf('TC') != -1) {
				$('#TC').prop("selected", true);
			} else {
				$('#TC').prop("selected", false);
			}

		});
	}
</script>

</html>