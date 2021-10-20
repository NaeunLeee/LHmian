<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/dataTables.semanticui.min.css">
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.11.3/js/dataTables.semanticui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
<style>
body {
	background: #f5f5f5;
}

.left-side-bar li {
	padding: 12px 23px;
	border-top: 1px solid #e9e9e9;
	border-left: 1px solid #e9e9e9;
	border-right: 1px solid #e9e9e9;
}

.container {
	width: 80%;
}

.ui.grid {
	padding-left: 40px;
	margin: 0;
}
.padding-l40 {
	padding-left: 40px;
}

.padding-t40{
	padding-top: 40px;
}
h4 {
	font-size:18px !important;
}

</style>
</head>
<body>

<section class="sec-padding-1">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a class="active" href="admGeneration">세대 관리</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left padding-l40">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">관리비</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">호수별 관리비를 조회합니다.</p>
				</div>
				
		<div class="fee-table">
			<table id="feeList" class="ui celled table" style="width: 100%">
				<thead>
					<tr>
						<th>날짜</th>
						<th>동</th>
						<th>호수</th>
						<th>관리비 총액</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list }">
						<tr>
							<td><fmt:formatDate value="${list.yearMonth}"
									pattern="yy-MM" /></td>
							<td>${list.dong }</td>
							<td>${list.hosu }</td>
							<td>${list.mfTotal }</td>
							<td>${list.paid }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	</div>
	</section>

	<span style="color:white">ss</span>
</body>
<script>
	// Korean
	const lang_kor = {
		"decimal" : "",
		"emptyTable" : "데이터가 없습니다.",
		"info" : "_START_ - _END_ 건 (총 _TOTAL_ 건)",
		"infoEmpty" : "0명",
		"infoFiltered" : "(전체 _MAX_ 건 중 검색결과)",
		"infoPostFix" : "",
		"thousands" : ",",
		"lengthMenu" : "_MENU_ 건씩 보기",
		"loadingRecords" : "로딩중...",
		"processing" : "처리중...",
		"search" : "검색 : ",
		"zeroRecords" : "검색된 데이터가 없습니다.",
		"paginate" : {
			"first" : "첫 페이지",
			"last" : "마지막 페이지",
			"next" : "다음",
			"previous" : "이전"
		},
		"aria" : {
			"sortAscending" : " :  오름차순 정렬",
			"sortDescending" : " :  내림차순 정렬"
		}
	};

	$('#feeList').DataTable({
		language : lang_kor
	//or lang_eng	
	});
</script>
</html>