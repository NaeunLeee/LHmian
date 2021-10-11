<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder"
				style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000"
					alt="" />
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
	<div class="pagenation-holder-no-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb-gray">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="">입주민 공간</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/commList">커뮤니티</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">일정</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;"></p>
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
						<th><input type="checkbox" name="chkAll" id="chkAll"></th>
						<th>번호</th>
						<th>세대</th>
						<th>도착날짜</th>
						<th>수령여부</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="post">
						<tr>
							<td><input type="checkbox" name="chk" id="${post.houseInfo}"
						value="${post.houseInfo}"></td>
							<td>${post.postNo}</td>
							<td>${post.houseInfo}</td>
							<td>${post.postDate}</td>
							<td>${post.postStatus}</td>
					</c:forEach>
				</tbody>
			</table>
			<button type="button" id="btnIn" class="btn btn-border light"
				style="float: right; margin-right: 20px; padding: 4px 13px;">택배등록</button>
			<button type="button" id="btnGet" class="btn btn-border light"
				style="float: right; margin-right: 20px; padding: 4px 13px;">수령완료</button>
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
						<li><a href="${num}">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true}">
						<li><a href="${pageMaker.endPage+1}"> <span
								aria-hidden="true"><i class="fa fa-angle-right"></i></span>
						</a></li>
					</c:if>
				</ul>
			</div>

			<div style="margin: auto;">
				<form id="actionForm" action="admPost" method="get">
					<!-- 메소드 생략시 자동으로 get로 전환 -->
					<select name="type" class="form-control" style="width: 100px;">
						<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
						<option value="T" ${empty pageMaker.cri.type =='T' ? selected : ""}>세대번호</option>
						<option value="C" ${empty pageMaker.cri.type =='C' ? selected : ""}>도착날짜</option>
						<option value="W" ${empty pageMaker.cri.type =='W' ? selected : ""}>수령유무</option>
					</select> <input name="keyword" class="form-control" style="width: 200px;"
						value="${pageMaker.cri.keyword}"> <input type="hidden"
						name="pageNum" value="${pageMaker.cri.pageNum}"> <input
						type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<button type="submit" class="btn btn-dark">검색</button>
				</form>
			</div>
		</div>
	</div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	console.log(csrfHeaderName, csrfTokenValue);
	
	$("#pageButton a").on("click",function(e){
        e.preventDefault();   //a, submit
        var p = $(this).attr("href") //클릭한 값
        $('[name="pageNum"]').val(p)
        actionForm.submit();
     });
	
     $("#chkAll").click(function() {
		if ($("#chkAll").is(":checked"))
			$("input[name=chk]").prop("checked", true);
		else
			$("input[name=chk]").prop("checked", false);
	 });
</script>