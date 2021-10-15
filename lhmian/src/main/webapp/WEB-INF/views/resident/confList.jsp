<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 입주자 대표회의</title>

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
	#write {
		float:right; 
		margin-right:20px; 
		padding: 4px 13px;
	}
</style>

</head>
<body>

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
							<div class="text text-center">
							</div>
						</div>
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
							<li><a href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
							<li class="current"><a href="#">입주자 대표회의</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>

				</div>
				<div class="col-md-6"></div>
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
					<h4 class="uppercase font-weight-7 less-mar-1">입주자 대표회의</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">입주자 대표회의... 어쩌구..ㅋㅋ</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<table class="table">
				<tr>
					<th class="col-1">글 번호</th>
					<th class="col-5">제 목</th>
					<th class="col-2">작성자</th>
					<th class="col-2">작성일자</th>
					<th class="col-2">조회수</th>
				</tr>
				<c:forEach items="${list}" var="conf">
					<tr class="tr_1 move" data-confNo="${conf.confNo}">
						<td>${conf.confNo}</td>
						<td>${conf.confTitle}</td>
						<td>${conf.confWriter}</td>
						<td><fmt:formatDate value="${conf.confDate}" pattern="yy-MM-dd" /></td>
						<td>${conf.confHit}</td>
					</tr>
				</c:forEach>
			</table>
			<button id="write" type="button" class="btn btn-border light">글 쓰기</button>
			<br><br>
			
			<!-- 폼 -->
			<div id="pageBtn" style="margin:auto; width: 50%">
				<ul class="pagination hover-orange">
					<c:if test="${pageMaker.prev == true}">
						<li>
							<a href="${pageMaker.startPage-1}">
								<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
							</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
						<li><a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
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
				<form id="actionForm" action="confList" method="get">
					<select name="type" class="form-control" style="width: 100px;">
						<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
						<option value="T" ${empty pageMaker.cri.type == 'T' ? selected : ""}>제목</option>
						<option value="W" ${empty pageMaker.cri.type == 'W' ? selected : ""}>작성자</option>
						<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : ''}"/>>전체</option>
					</select>
					<input name="keyword" class="form-control" style="width: 200px; " value="${pageMaker.cri.keyword}"> 
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> 
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<button type="submit" class="btn btn-dark" >검색</button>
				</form>
			</div><br><br><br><br>
		</div>
	</div>
	<!--end item-->
</section>
<div class="clearfix"></div>
<!-- end section -->

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	var actionForm = $('#actionForm');
	$('.move').on("click", function(e) {
		e.preventDefault();
		var confNo = $(this).attr("data-confNo");
		actionForm.append('<input type="hidden" name="confNo" value="' + confNo + '">');
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
	
	let author = '<c:out value="${user.AUTHOR}"/>';
	
	// 글쓰기 버튼 클릭 시
	$('#write').on("click", function() {
		if (author == 'ADMIN') {
			alert('관리자 계정은 사용할 수 없습니다.');
		} else {
			$(location).attr('href', 'confInsert');
		}
	});
	
	
</script>

</html>