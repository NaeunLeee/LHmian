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
	<input type="text" id="houseInfo" name="houseInfo" class="houseInfo" value="${info.houseInfo}">
	<!-- 10/04 주석처리  -->
	<button data-toggle="modal" data-target="#modal-switch"
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
				<div>
					<c:forEach var="car" items="${car}">
						<form class="frm">
							<span>순번</span> <input type="text" id="rownum"
								name="rownum" class="rownum" value="${car.rownum}" disabled="disabled"><br>
							<span>차종</span> <input type="text" id="carType"
								name="carType" class="carType"
								value="${car.carType}"><br> <span>차번호</span> <input
								type="text" id="carCode"
								name="carCode" class="carCode"
								value="${car.carCode}"><br>
						</form>
						<button class="btn2">확인</button>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div>
		<button id="btnUpdate">수정</button>
	</div>
	<!-- for문 같이 여러 폼 형식의 값을 보내고 싶을때는 클래스를 이용해서 보낸다. -->
	<!-- id는 오로지 하나의 값만 인정된다. -->
	<!-- 10/04 19시 이후 커밋 -->
	<script type="text/javascript">
		$(".btn2").on("click", function() {
			console.log($(this).prev().children(".carType").val());
			console.log($(this).prev().children(".carCode").val());
			console.log($(this).prev().children(".rownum").val());
			console.log($(".houseInfo").val());
			$.ajax({
				url : "updateCar",
				type : "put",
				dataType : "json",
				data : JSON.stringify({
					houseInfo : $(".houseInfo").val(),
					rownum : $(this).prev().children(".rownum").val(),
					carCode : $(this).prev().children(".carCode").val(),
					carType : $(this).prev().children(".carType").val()
				}),
				contentType : 'application/json',
				success : function(data) {
					alert("수정이 완료 되었습니다");
					console.log(data);
					$("#modal-switch").hide();
					location.reload();
				},
				error : function() {
					alert("입력되지 않았습니다."); // 실패 시 처리
				}
			}); 

		});
	</script>
	<!-- 추가부분 끝 -->
</div>