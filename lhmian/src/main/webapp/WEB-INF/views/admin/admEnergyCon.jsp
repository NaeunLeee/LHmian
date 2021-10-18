<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

body {
	background: #f5f5f5;
}

th {
	width: 150px;
	text-align: center;
	background-color: #EEEEEE;
}

tr {
	text-align: center;
	height: 40px;
	border-bottom: 1px solid lightGray;
}

.pagination>li>a {
	color: black;
}

.width-80 {
	width: 80%
}

.padding-l40 {
	padding-left: 40px
}

.padding-t40 {
	padding-top: 40px
}

.pagination {
	margin-left: 25%;
}
</style>

<section class="sec-padding-1">
	<div class="container width-80">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a class="active" href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admMemberList">회원 관리</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-10 col-sm-6 col-xs-12">
				<div></div>
				<br>
				<br>
				<div class="sec-title-container less-padding-3 text-left padding-l40">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">에너지 사용량</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">호수별로 각 에너지 사용량을 조회합니다.</p>
				</div>

				<div class="text-box white padding-l40">
					<table>
						<thead>
							<tr>
								<th>날짜</th>
								<th>동</th>
								<th>호수</th>
								<th>일반관리비</th>
								<th>가스</th>
								<th>전기</th>
								<th>수도</th>
								<th>생활폐기물</th>
								<th>음식물폐기물</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="list">
								<tr class="tr_1">
									<td><fmt:formatDate value="${list.yearMonth}" pattern="yy-MM" /></td>
									<td>${list.dong }</td>
									<td>${list.hosu }</td>
									<td>${list.eng}</td>
									<td>${list.gas}</td>
									<td>${list.electric}</td>
									<td>${list.water}</td>
									<td>${list.trash}</td>
									<td>${list.trashFood}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 테이블 -->
					<br>
					<div id="pageButton" align="center">
						<ul class="pagination hover-orange">
							<c:if test="${pageMaker.prev == true}">
								<li>
									<a href="${pageMaker.startPage-1}"> 
										<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
									</a>
								</li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
								<li>
									<a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a>
								</li>
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
			</div>
			<form id="actionForm" action="admEnergyCon" method="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			</form>
		</div>
	</div>
</section>
<br>
<script>
	//페이징버튼
	$('#pageButton a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		$('#actionForm').submit();
	})
</script>