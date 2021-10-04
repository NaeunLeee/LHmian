<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<table class="table">
		<thead>
		</thead>
		<tbody>
			<tr>
				<th class="align-middle">아이디</th>
				<td><input type="text" class="form-control" id="id" name="id"
					aria-describedby="basic-addon3" value="${info.id}"
					disabled="disabled"></td>
			</tr>
			<tr>
				<th class="align-middle">현재 비밀번호</th>
				<td><input type="text" class="form-control" id="pw" name="pw"
					aria-describedby="basic-addon3"><br></td>
			</tr>
			<tr>
				<th class="align-middle">새 비밀번호</th>
				<td><input type="text" class="form-control" id="newpw"
					name="newpw" aria-describedby="basic-addon3"></td>
			</tr>
			<tr>
				<th class="align-middle">새 비밀번호 확인</th>
				<td><input type="text" class="form-control col-lg-1"
					id="pwcheck" name="pwcheck" aria-describedby="basic-addon3"></td>
			</tr>
			<tr>
				<th class="align-middle">휴대전화</th>
				<td><input type="tel" name="tel" class="form-control"
					value="${info.phone}"></td>
			</tr>
			<tr>
				<th class="align-middle">차량정보</th>
				<td><span>차종</span><input type="text" class="form-control"
					id="carCode" name="carCode" aria-describedby="basic-addon3"
					disabled="disabled" value="${info.carCode}"><br> <span>차번호</span><input
					type="text" class="form-control" id="carType" name="carType"
					aria-describedby="basic-addon3" disabled="disabled"
					value="${info.carType}"></td>
			</tr>
		</tbody>
	</table>
	<!-- 10/04 주석처리  -->
	<%-- <button data-toggle="modal" data-target="#modal-switch"
		class="btn btn-default">수정</button>
	<div id="modal-switch" tabindex="-1" role="dialog"
		aria-labelledby="modal-switch-label" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="modal-switch-label" class="modal-title">
						<h4>차량 정보</h4>
					</div>
				</div>
				<div class="modal-body">
					<c:forEach var="car" items="${car}">
						<form id="frm" class="frm">
							<span>순번</span> <input type="text" id="rownum${car.rownum}"
								name="rownum${car.rownum}" class="rownum" value="${car.rownum}"><br>
							<span>차종</span> <input type="text" id="carType${car.rownum}"
								name="carType${car.rownum}" class="carType"
								value="${car.carType}"><br> <span>차번호</span> <input
								type="text" id="carCode${car.rownum}"
								name="carCode${car.rownum}" class="carCode"
								value="${car.carCode}"><br>
						</form>
					</c:forEach>
				</div>
			</div>
		</div>
	</div> --%>

	<!-- <div>
		<button id="btnUpdate">수정</button>
	</div> -->
	<!-- 10/04 주석처리 끝 -->
	<!-- 10/04 추가부분 -->
	<div>
		<c:forEach var="car" items="${car}">
			<form class="frm">
				<span>순번</span> <input type="text" id="rownum${car.rownum}"
					name="rownum${car.rownum}" class="rownum" value="${car.rownum}"><br>
				<span>차종</span> <input type="text" id="carType${car.rownum}"
					name="carType${car.rownum}" class="carType" value="${car.carType}"><br>
				<span>차번호</span> <input type="text" id="carCode${car.rownum}"
					name="carCode${car.rownum}" class="carCode" value="${car.carCode}"><br>
			</form>
			<button class="btn">확인</button>
		</c:forEach>
	</div>
	<script type="text/javascript">
		$(".btn").on("click",function(){
			console.log($(this).prev().serializeArray());
		});
	</script>
	<!-- 추가부분 끝 -->
</div>