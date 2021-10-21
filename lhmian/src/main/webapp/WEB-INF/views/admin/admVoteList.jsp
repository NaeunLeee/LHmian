<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<style>
	table {
		background-color: white;
	}
	
	a.link {
		pointer-events: none;
		!
		important /*이벤트를 막음*/
		cursor
		:
		default;
		!
		important /*마우스 커서를 포인트에서 디폴트로 변경*/
	}
	
	.btn.btn-medium {
		width: 98px;
		padding: 5px 20px;
		font-size: 14px;
	}
	
	.btn.focus, .btn:focus, .btn:hover {
		color: white;
		text-decoration: none;
		cursor: default;
	}
	
	.container {
		width: 80%;
	}
	
	.tr_1 {
		text-align: center;
	}
	
	th {
		text-align: center;
		background-color: #EEEEEE;
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
	.padding-l40{
		padding-left: 40px
	}
	.padding-t40{
		padding-top: 40px
	}
	td {
		vertical-align: middle !important;
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
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left padding-l40">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
					<div class="clearfix"></div>
						<p class="by-sub-title">투표 현황을 파악하고 투표를 등록합니다. 수정/삭제는 불가능합니다.</p>
					</div>
					<ul class="nav nav-tabs nav-justified">
						<li class="nav-item">
							<a class="nav-link" href="admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admNoticeList">공지사항</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="admCsList">민원</a>
						</li>
						<li class="nav-item"><a class="nav-link active" href="admVoteList">투표</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a></li>
						<li class="nav-item"><a class="nav-link" href="admSked">일정 관리</a>
						</li>
					</ul>
					<div class="text-box white padding-4 col-7">
						<table class="table">
							<thead>
								<tr>
									<th class="col-1">상태</th>
									<th class="col-7">제목</th>
									<th class="col-3">투표 기간</th>
									<th class="col-1">참여율</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list }">
									<tr class="tr_1">
										<td class="col-md-2">
											<c:if test="${list.over eq '투표마감'}">
												<a class="btn btn-medium btn-grey xround-5" style="color: #727272;">${list.over }</a>
											</c:if> 
											<c:if test="${list.over eq '진행중'}">
												<a class="btn btn-medium btn-yellow-dark xround-5">${list.over }</a>
											</c:if> 
											<c:if test="${list.over eq '진행예정'}">
												<a class="btn btn-medium btn-yellow-dark xround-5" style="background-color: #A5C768;">${list.over }</a>
											</c:if>
										</td>
										<td class="col-md-5" style="text-align: left;">${list.voteTitle }</td>
										<td class="col-md-4">
											<fmt:formatDate value="${list.voteStart }" pattern="yyyy-MM-dd" /> ~ 
											<fmt:formatDate value="${list.voteEnd }" pattern="yyyy-MM-dd" />
										</td>
										<td class="col-md-1">${list.percent }%</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<button
							style="float: right; margin-right: 20px; padding: 4px 13px;"
							type="button" class="btn btn-border light"
							onclick="location.href='voteForm'">투표 등록</button>
						<br> <br> <br>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>