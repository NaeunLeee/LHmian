<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css" />
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>
	<div align="center">	
	<h4>에너지 사용량</h4>
	<hr>
	</div>
<div class="container">
	<div class="row">
		<table id="energy" class="display" style="width: 100%">
			<thead>
				<tr>
					<th>기간정보</th>
					<th>세대정보</th>
					<th>결제번호</th>
					<th>일반관리비</th>
					<th>가스</th>
					<th>전기</th>
					<th>생활폐기물</th>
					<th>음식물폐기물</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<th>${list.mfDate}</th>
						<th>${list.houseInfo}</th>
						<th>${list.eng}</th>
						<th>${list.gas}</th>
						<th>${list.electric}</th>
						<th>${list.water}</th>
						<th>${list.trash}</th>
						<th>${list.trashFood}</th>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>기간정보</th>
					<th>세대정보</th>
					<th>결제번호</th>
					<th>일반관리비</th>
					<th>가스</th>
					<th>전기</th>
					<th>생활폐기물</th>
					<th>음식물폐기물</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<br>
<script>
	$(document).ready(function() {
		$('#energy').DataTable();
	});
</script>