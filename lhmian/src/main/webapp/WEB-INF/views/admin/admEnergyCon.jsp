<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.semanticui.min.css">
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.semanticui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
<style>
body {
	background: #f5f5f5;
}
th {
	width : 150px;
}
tr { 
	text-align : center;
	}
.left-side-bar li {
	padding: 12px 23px;
	border-top: 1px solid #e9e9e9;
	border-left: 1px solid #e9e9e9;
	border-right: 1px solid #e9e9e9;
}

.fee-table {
	margin: 30px 150px 150px 150px;
}

.sec-padding {
	padding: 80px 0 0 0;
}
</style>
<section class="sec-padding">
	<div align="center">
		<h4>에너지 사용량</h4>
		<hr>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 nopadding">
				<div class="sec-title-container-padding-top text-center"></div>
			</div>
		</div>
	</div>
</section>
<div class="clearfix"></div>
<div class="fee-table">
	<table id="energy" class="ui celled table" style="width: 100%">
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
				<tr>
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
</div>
<br>
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
	
	$('#energy').DataTable({
		language : lang_kor
	});
</script>