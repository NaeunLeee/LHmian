<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 10/14 관리자 페이지에 맞게 디자인 일부 수정: 이나은 -->
<!-- 10/14 차량 등록 추가: 이나은 -->
<style>
	.tr_1 {
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
	.container {
		width: 85%;
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

<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white">
				<div class="pages-sidebar-item">
					<h5 class="uppercase pages-sidebar-item-title">관리자</h5>
					<ul class="pages-sidebar-links">
						<li><a href="#">관리비</a></li>
						<li><a href="#">에너지 사용량</a></li>
						<li><a href="#">회원 관리</a></li>
						<li><a href="#">게시글 관리</a></li>
						<li><a class="active" href="#">차량 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">차량 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">전 세대의 차량을 조회 및 관리합니다.</p>
				</div>
				<div class="text-box white padding-4 col-7">
					<form id="frm">
					<button class="btn btn-default" onclick="deleteCar()" type="button" id="btnDelete" style="float:right; margin:0px 10px 10px 0px; padding: 4px 13px;">삭제</button>
					<button class="btn btn-gyellow" type="button" data-toggle="modal" data-target="#registerModal" style="float:right; margin: 0px 10px 10px 0px; padding: 4px 13px;">등록</button>
						<table class="table" id="carTable">
						<thead>
							<tr>
							<th><input type="checkbox" name="chkAll" id="chkAll" ></th>
							<th>동호수</th>
							<th>차량 번호</th>
							<th>차량 모델</th>
							<th>등록 날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="car" items="${list}">
								<tr class="move tr_1">
									<td><input type="checkbox" name="chk" id="${car.carNo}" value="${car.carNo}"></td>
									<td>
										<c:set var="donghosu" value="${car.houseInfo}"/>
										${fn:substring(donghosu, 0, 3)}동 ${fn:substring(donghosu, 3, 8)}호
									</td>
									<td>${car.carCode}</td>
									<td>${car.carType}</td>
									<td><fmt:formatDate value="${car.carDate}" pattern="yy-MM-dd" /></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</form>
					<br>
					<!-- 폼 -->
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
								<li><a href="${num}">${num}</a></li>
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
					<div align="center">
						<form id="actionForm" action="admCarList" method="get">
							<select name="type" class="form-control" style="width: 100px; ">
								<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
								<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>차종</option>
								<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>차량번호</option>
							</select>
							<input name="keyword" class="form-control" style="width: 200px;" value="${pageMaker.cri.keyword}">
							<button type="submit" class="btn btn-dark">검색</button>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount}"><br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

	<!-- Modal -->
	<div class="modal fade" id="registerModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="registerForm" name="registerForm">
					<!-- Modal Header -->
					<div class="modal-header">
						<div style="margin-left: 20px;">
							<div class="title-line-3 align-left"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">차량 조회 및 등록</h4>
							* 차량 등록은 세대 당 최대 2대까지 가능합니다.
						</div>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<div style="margin: 0px 20px 0px;">
							<div align="center" style="background-color: #f5f5f5;">
								<br>
								<input type="text" class="form-control" id="dong" style="width: 80px;">&nbsp;동
								<input type="text" class="form-control" id="ho" style="width: 100px;">&nbsp;호&nbsp;&nbsp;
								<button type="button" class="btn btn-default" id="searchCars" style="margin-left: 20px;">조회</button>
								<hr>
							</div>
							<div>
								<table class="table" style="text-align: center;">
									<thead>
										<tr>
											<th>차종</th>
											<th>차량번호</th>
											<th></th>
										</tr>
									</thead>
									<tbody id="carList"></tbody>
								</table>
								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							</div>
						</div>
						<br>
					</div>
					<!-- Modal Footer -->
					<div class="modal-footer">
						<div align="center">
							<button type="button" id="register" class="btn btn-gyellow">저장</button>
							<button type="button" data-dismiss="modal" class="btn btn-default">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal End -->


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">

	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";

/* 	var actionForm = $("#actionForm")
	$(".move").on("click", function(e){
		e.preventDefault();				//a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="id" value="'+ id +'">')
		actionForm.attr("action", "admMemberList");
		actionForm.submit();
	}); */
	
	$("#pageButton a").on("click", function(e){ //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault();		//a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	//전체체크
	$(document).ready(function(){
	$("#chkAll").click(function(){
		if($("#chkAll").is(":checked"))
			$("input[name=chk]").prop("checked", true);
		else
			$("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function(){
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;
			
			if(total != checked) 
				$("#chkAll").prop("checked", false);
			else
				$("#chkAll").prop("checked", true);
		});
	});
	
	//선택삭제 (10/14 crsf 토큰키 추가 및 일부 수정: 이나은)
	function deleteCar() {
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		$("input[name='chk']:checked").each(function() {
			arr.push($(this).attr('id'));
		});
		
		console.log(arr);
		
		if (cnt == 0) {
			alert("선택된 차량이 없습니다.");
		} else {
			if (confirm(cnt + '대의 차량을 삭제하시겠습니까?')) {
				$.ajax ({
					type : "POST",
					url : "deleteCar",
					data : $("#frm").serialize(),
					traditional : true,			//배열 전송 시 traditional 씀
					dataType : "json",
					beforeSend: function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					success : function(result) {
						if (result == true) {
							alert("삭제 완료되었습니다.");
							location.reload();
						}
					},
					error : function() {
						alert("삭제 실패하였습니다.");
					}
				});
			}
		}
	}
	
	// 동호수 체크 (10/14 추가: 이나은)
	function countByHouseInfo(dong, ho) {
		
		var houseInfo = parseInt(dong + ho + '');
		var cnt = 0;
		
		$.ajax({
			url: 'admin/countByHouseInfo',
			type: 'POST',
			async: false,
			data: JSON.stringify({
				houseInfo: houseInfo
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function(data) {
				cnt = data;
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		});
		
		return cnt;
	}
	
	// 차량 조회 (10/14 추가: 이나은)
	$('#searchCars').on("click", function() {
		
		var str = "";
		var dong = $('#dong').val();
		var ho = $('#ho').val();
		
		var num = countByHouseInfo(dong, ho);
		
		if (dong == '' || ho == '') {
			alert('동호수를 모두 입력해주세요.');
		} else if (num == 0) {
			alert(dong + '동 ' + ho + '호가 존재하지 않습니다.');
		} else {
			$.ajax({
				url: 'admin/carByHouseInfo',
				type: 'POST',
				data: JSON.stringify({
					houseInfo: dong + ho
				}),
				contentType: 'application/json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				dataType: 'json',
				success: function(data) {
					$('#carList').empty();
					if (data.length == 0) {
						alert('등록된 차량이 없습니다.');
						
						str += '<tr>';
						str += '<td><input type="text" class="regType form-control" name="carType" placeholder="예) 제네시스"></td>';
						str += '<td><input type="text" class="regCode form-control" name="carCode" placeholder="예) 15부1234"></td>';
						str += '<td><button type="button" class="insertCar btn btn-default">추가</button></td>';
						str += '</tr>';
						str += '<tr>';
						str += '<td><input type="text" class="regType form-control" name="carType" placeholder="예) 제네시스"></td>';
						str += '<td><input type="text" class="regCode form-control" name="carCode" placeholder="예) 15부1234"></td>';
						str += '<td><button type="button" class="insertCar btn btn-default">추가</button></td>';
						str += '</tr>';
						str += '<input type="hidden" class="regHouseInfo" name="houseInfo" value="' + data[i].houseInfo + '">';
						
					} else {
						for (i=0; i<data.length; i++) {
							str += '<tr>';
							str += '<td><input type="text" class="delType form-control" name="carType" value="' + data[i].carType + '" readonly></td>';
							str += '<td><input type="text" class="delCode form-control" name="carCode" value="' + data[i].carCode + '" readonly></td>';
							str += '<td><button type="button" name="deleteCar" class="deleteCar btn btn-default" data-carNo="' + data[i].carNo + '">삭제</button></td>';
							str += '</tr>';
							if (data.length == 1) {
								str += '<tr>';
								str += '<td><input type="text" class="regType form-control" name="carType" placeholder="예) 제네시스"></td>';
								str += '<td><input type="text" class="regCode form-control" name="carCode" placeholder="예) 15부1234"></td>';
								str += '<td><button type="button" class="insertCar btn btn-default">추가</button></td>';
								str += '</tr>';
								str += '<input type="hidden" class="regHouseInfo" value="' + data[i].houseInfo + '">';
							} 
						}
					}
					$('#carList').prepend(str);
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});
			
		}
	});
	
	// 차량 한대 삭제
	$(document).on('click', '.deleteCar', function(event) {
		
		console.log($(this).attr('data-carNo'));
		
/*  		$.ajax ({
			url: 'deleteOneCar',
			type: 'POST'
			data: JSON.stringify({
				carNo: parseInt($(this).attr('data-carNo'))
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function(data) {
				$(this).parent().parent().remove();
				alert(data + '건의 차량을 삭제했습니다.');
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		}); */
		
	});
	
	// 차량번호 등록시 공백 자동제거
/* 	function replaceSpace(str) {
		str.replace(/ /g, "");
	} */
	
	// 차량 등록
	$(document).on('click', '.insertCar', function() {
		var regHouseInfo = $('.regHouseInfo');
		var regType = $('.regType');
		var regCode = $('.regCode');
		
		var carCode = $(regCode).val();
		var houseInfo = parseInt($(regHouseInfo).val());
		var carNo = parseInt(carCode.substring(3, 7)  + '' + houseInfo);
		var carType = $(regType).val();
		
		$.ajax({
			url: 'insertCar',
			type: 'POST',
			async: false,
			contentType: 'application/json',
			data: JSON.stringify({
				carNo: carNo,
				carType: carType,
				carCode: carCode,
				houseInfo: houseInfo
			}),
			dataType: 'json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function(data) {
				alert(data + '대의 차량이 등록되었습니다.');
				regType.attr('readonly', true);
				regCode.attr('readonly', true);
			},
			error: function() {
				alert('다시 시도해주세요.');
				console.log(carNo);
				console.log(houseInfo);
				console.log(carType);
				console.log(carCode);
			}
		});
		
	});
	
	
</script>