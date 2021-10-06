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
							<li><a href="">관리사무소</a></li>
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
						<p class="by-sub-title" style="font-size: 13px;">공지사항... 어쩌구..ㅋㅋ</p>
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
				<th>아이디</th>
				<th>제목</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="comm">
				<tr class="move tr_1" data-noticeNo="${notice.noticeNo}">
					<td>${comm.commNo}</td>
					<td>${comm.id}</td>
					<td><a class="move" href="${comm.commNo}">${comm.commTitle}</a></td>
					<td><fmt:formatDate value="${comm.commDate}" type="both"
							pattern="yy-MM-dd" /></td>
					<td>${comm.commHit}</td>		
			</c:forEach>
		</tbody>
	</table>
	
	
	<form id="actionForm" action="commlist" method="get"> <!-- 메소드 생략시 자동으로 get로 전환 -->
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : ""}>선택</option>
			<option value="T" ${empty pageMaker.cri.type =='T' ? selected : ""}>제목검색</option>
			<option value="C" ${empty pageMaker.cri.type =='C' ? selected : ""}>번호</option>
			<option value="W" <c:out value="${pageMaker.cri.type eq 'W' ? 'selected':''}"/>>작성자</option>
			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected':''}"/>>제목 or 내용</option>
			<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected':''}"/>>제목 or 작성자</option>
			<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected':''}"/>>제목 or 작성자 or 내용</option>
		</select>
		<input name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">		
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">Search</button>		
		<button type="button" onclick="location.href='register'"  class="btn btn-default" >글작성</button>		
	</form>
	<div id="pageButton">
	<c:if test="${pageMaker.prev == true}"><a href="${pageMaker.startPage-1}">이전</a></c:if>
	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num"><a href="${num}">${num}</a></c:forEach>
	<c:if test="${pageMaker.next == true}"><a href="${pageMaker.endPage+1}">다음</a></c:if>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
		var actionForm = $("#actionForm");
		
		$(".move").on("click",function(e){
			e.preventDefault();
			var commno = $(this).attr("href")
			actionForm.append('<input type="hidden" name="commNo" value="'+commno+'">')
			actionForm.attr("action","get")
			actionForm.submit();
		});
		
		$("#pageButton a").on("click",function(e){
			e.preventDefault();	//a, submit
			var p = $(this).attr("href") //클릭한 값
			$('[name="pageNum"]').val(p)
			actionForm.submit();
		})
		//$('#board').DataTable();
	
</script>
