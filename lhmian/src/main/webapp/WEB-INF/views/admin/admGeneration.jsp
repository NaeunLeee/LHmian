<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 10/18 생성: 이나은 -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.semanticui.min.css">
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.semanticui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>


<style>
	.container {
		width: 80%;
	}
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
	
	td {
		vertical-align: middle !important;
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
	#all, #notpaid, #leader, #owner {
		margin: 0px 5px 0px;
	}
	
	.text-box.padding-4 {
		padding-right: 0px;
	}
	.padding-l40{
		padding-left: 40px !important;
	}
	.padding-t40{
		padding-top: 40px !important;
	}
</style>


<section class="sec-padding-1">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a class="active" href="#">세대 관리</a></li>
						<li><a href="admMemberList">회원 관리</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12 padding-l40">
				<div></div><br><br>
				<div class="sec-title-container text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">세대 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">LHmian의 모든 세대를 조회합니다.</p>
				</div>

				<div>
					<button class="btn btn-dark" type="button" id="registerBtn" style="margin-right: 5px;">세대 등록</button>
					<button class="btn btn-gyellow" type="button" id="showModal">SMS전송</button>
					<button class="btn btn-default" type="button" onclick="deleteGen()" id="deleteBtn" style="float:right;">세대 삭제</button>
				</div>
				<div class="text-box white padding-t40">
					<form id="frm"> <!-- 0928 form 추가 -->
						<table class="ui celled table" id="memberTable">
							<thead>
								<tr style="text-align: center;">
									<th><input type="checkbox" name="chkAll" id="chkAll"></th>
									<th>동호수</th>
									<th>권한</th>
									<th>세대주</th>
									<th>전화번호</th>
									<th>구성원 수</th>
									<th>관리비</th>
									<th>차량</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach var="gen" items="${list}">
									<tr class="mem tr_1" data-houseInfo="${gen.houseInfo}">
										<td onclick="event.cancelBubble=true;">
											<input type="checkbox" name="chk" value="${gen.houseInfo}" data-houseInfo="${gen.houseInfo}" data-name="${gen.name}" data-phone="${gen.phone}">
										</td>
										<td>
											<c:set var="donghosu" value="${gen.houseInfo}"/>
											${fn:substring(donghosu, 0, 3)}동 ${fn:substring(donghosu, 3, 7)}호
										</td>
										<td onclick="event.cancelBubble=true;">
											<select name="position" class="position form-control" style="width: 100px;" data-id="${gen.id}">
												<option value="LEADER" ${gen.position eq 'LEADER' ? 'selected' : ""}>동대표</option>
												<option value="FOLLOWER" ${gen.position eq 'FOLLOWER' ? 'selected' : ""}>일반</option>
											</select> 
										</td>
										<td>${gen.name}</td>
										<td>
											<c:set var="phone" value="${gen.phone}"/>
											${fn:substring(phone, 0, 3)}-${fn:substring(phone, 3, 7)}-${fn:substring(phone, 7, 11)}
										</td>
										<td>${gen.familyNum}</td>
										<td onclick="event.cancelBubble=true;" data-unpaid="${gen.unPaid }"> <!-- 버튼 클릭시 tr 클릭 이벤트가 동시에 발생하지 않도록 -->
											${gen.unPaid }&nbsp;&nbsp;<button type="button" class="feeBtn btn btn-default" data-houseInfo="${gen.houseInfo}">조회</button>
										</td>
										<td onclick="event.cancelBubble=true;">
											<button type="button" class="carBtn btn btn-default" data-houseInfo="${gen.houseInfo}">차량정보</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
					<br>
				</div>
			</div>
		</div>
	</div>
</section>

	<!-- Register Modal -->
	<div class="modal" id="regModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">새 세대 등록</h4>
						<p style="font-size: 12px;">* 새로운 인증번호를 생성하여, 세대주에게 전송합니다.</p>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div id="newGen" style="margin: 0px 20px 0px;">
						<div align="center" style="background-color: #f5f5f5;">
							<br>
							<input type="text" class="form-control" id="dong" style="width: 80px;">&nbsp;동
							<input type="text" class="form-control" id="ho" style="width: 100px;">&nbsp;호&nbsp;&nbsp;
							<button type="button" class="btn btn-default" id="verify" style="margin-left: 20px;">인증번호 발급</button>
							<hr>
						</div>
						<div id="existing" align="center"></div>
					</div>
					<br>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<div align="center">
						<button type="button" id="closeReg" class="btn btn-default">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal End -->


	<!-- Member Modal -->
	<div class="modal" id="memberModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">세대별 회원정보</h4>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div id="members" style="margin: 0px 20px 0px;"></div>
					<br>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<div align="center">
						<button type="button" id="closeMem" class="btn btn-default" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal End -->


	<!-- CarList Modal -->
	<div class="modal" id="carListModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<div style="margin-left: 20px;">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">차량 정보</h4>
					</div>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div id="cars" style="margin: 0px 20px 0px;"></div>
					<br>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<div align="center">
						<button type="button" id="closeCars" class="btn btn-default" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal End -->

	<!-- SMS Modal -->
	<div class="modal" id="smsModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="smsForm" name="smsForm">
					<!-- Modal Header -->
					<div class="modal-header">
						<div style="margin-left: 20px;">
							<div class="title-line-3 align-left"></div>
							<h4 class="uppercase font-weight-7 less-mar-1">SMS 전송</h4>
						</div>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<div style="margin: 0px 20px 0px;">
							<blockquote><span id="memInfo"></span></blockquote>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							<textarea id="smsContent" rows="10" cols="30" class="form-control"></textarea>
						</div>
						<div style="margin-right: 20px; float: right;">
							(&nbsp;<span id="checkLength"></span>&nbsp;/ 200 )
						</div>
						<br>
						<hr>
						<div align="right" style="margin-right: 20px;">
							<h4>총 <span id="number"></span> 개</h4>
							<h4>총 금액 <span id="price"></span> 원</h4>
						</div>
					</div>
					<!-- Modal Footer -->
					<div class="modal-footer">
						<div align="center">
							<button type="button" id="send" class="btn btn-gyellow">전송</button>
							<button type="button" id="closeSMS" class="btn btn-default">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal End -->

   <!-- Fee Modal -->
   <div class="modal" id="feeModal">
      <div class="modal-dialog">
         <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
               <div style="margin-left: 20px;">
                  <div class="title-line-3 align-left"></div>
                  <h4 class="uppercase font-weight-7 less-mar-1">세대별 관리비</h4>
               </div>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
               <!--  <span class="pull-right" style="margin-right: 30px;">
               <input type="checkbox" id="notpaid" name="option">
               <label for="notpaid">미납건 조회</label>
               </span> -->
               <div id="fees" style="margin: 0px 20px 0px;"></div>
               <br>
            </div>
            <!-- Modal Footer -->
            <div class="modal-footer">
               <div align="center">
                  <button type="button" id="closeFee" class="btn btn-default" data-dismiss="modal">확인</button>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Modal End -->

<script>

	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	
	// 회원 정보 모달 띄우기
	$('.mem').on('click', function() {
		var str = '';
		
		$.ajax({
			url: 'familyList',
			type: 'POST',
			data: JSON.stringify({
				houseInfo: $(this).attr('data-houseInfo')
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			dataType: 'json',
			success: function(data) {
				str += '<table class="table">';
				str += '<thead>';
				str += '<tr>';
				str += '<th>구분</th>';
				str += '<th>아이디</th>';
				str += '<th>이름</th>';
				str += '<th>전화번호</th>';
				str += '<th></th>';
				str += '</tr>';
				str += '</thead>';
				str += '<tbody>';
				for (i=0; i<data.length; i++) {
					str += '<tr style="text-align: center;' + (data[i].author == 'OWNER' ? 'font-weight: bold' : '') + '">';
					str += '<td>' + (data[i].author == 'OWNER' ? '세대주' : '세대원') + '</td>';
					str += '<td>' + data[i].id + '</td>';
					str += '<td>' + data[i].name + '</td>';
					str += '<td>'+ data[i].phone.substring(0, 3) + '-' + data[i].phone.substring(3, 7) + '-' + data[i].phone.substring(7, 11) + '</td>';
					str += '<td><button type="button" class="delMem btn btn-default" data-id="' + data[i].id + '">삭제</button></td>';
					str += '</tr>';
				}
				str += '</tbody>';
				str += '</table>';
				$('#members').html(str);
				$('#memberModal').show();
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		});
	
	});
	
	// 회원 정보 모달 내리기...
	$('#closeMem').on('click', function() {
		$('#memberModal').hide();
		$('#members').empty();
	});
	
	
   // 관리비 리스트 모달 띄우기, 10/19 윤지민
   
	function feeBtnClick() {
		  $('.feeBtn').on('click',  function() {
					  
		      var str = '';
		      
		      $.ajax({
		         url: 'feeList',
		         type: 'POST',
		         data: JSON.stringify({ houseInfo: $(this).attr('data-houseInfo') }),
		         contentType: 'application/json',
		         beforeSend: function(xhr) {
		            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		         },
		         dataType: 'json',
		         success: function(data) {
		            str += '<table id="feeList" class="ui celled table" style="width: 100%;">';
		            str += '<thead>';
		            str += '<tr style="text-align: center;">';
		            str += '<th>년월</th>';
		            str += '<th>관리비</th>';
		            str += '<th>상태</th>';
		            str += '</tr>';
		            str += '</thead>';
		            str += '<tbody>';
		            for (i=0; i<data.length; i++) {      
		               if (data[i].paid == '미납') {
		                  str += '<tr style="text-align: center;">';
		                  str += '<td>' + data[i].feeDate + '</td>';
		                  str += '<td>' + numberWithCommas(data[i].mfTotal) + '</td>';
		                  str += '<td style="color:red">' + data[i].paid + '</td>';
		                  str += '</tr>';
		               } else {
		                  str += '<tr style="text-align: center;">';
		                  str += '<td>' + data[i].feeDate + '</td>';
		                  str += '<td>' + numberWithCommas(data[i].mfTotal) + '</td>';
		                  str += '<td style="color:green">' + data[i].paid + '</td>';
		                  str += '</tr>';
		               }
		            }
		            str += '</tbody>';
		            str += '</table>';
		            $('#fees').html(str);
		            $('#feeList').DataTable({
		               language : lang_kor,
		               order: [[0, 'desc']],
		
		            });
		            $('#feeModal').show();
		         },
		         error: function() {
		            alert('다시 시도해주세요.');
		         }
		      });
	      
	   })
	}
	   
	// 차량 정보 모달 띄우기
	$('.carBtn').on("click", function() {
		
		var str = "";
		
		$.ajax({
			url: 'carByHouseInfo',
			type: 'POST',
			data: JSON.stringify({
				houseInfo: $(this).attr('data-houseInfo')
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			dataType: 'json',
			success: function(data) {
				if (data.length == 0) {
					alert('등록된 차량이 없습니다.');
				} else {
					str += '<table class="table">';
					str += '<thead>';
					str += '<tr>';
					str += '<th>식별번호</th>';
					str += '<th>차량번호</th>';
					str += '<th>차종</th>';
					str += '<th>등록일자</th>';
					str += '</tr>';
					str += '</thead>';
					str += '<tbody>';
					for (i=0; i<data.length; i++) {
						str += '<tr class="tr_1">';
						str += '<td>' + data[i].carNo + '</td>';
						str += '<td>' + data[i].carCode + '</td>';
						str += '<td>' + data[i].carType + '</td>';
						/* str += '<td><fmt:formatDate value="'+ data[i].carDate + '" pattern="yy-MM-dd" /></td>'; */
						str += '<td>'+ data[i].carDate + '</td>';
						str += '</tr>';
					}
					str += '</tbody>';
					str += '</table>';
					$('#cars').html(str);
					$('#carListModal').show();
				}
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		});
		
	});
	
	// 차량 정보 모달 내리기...
	$('#closeCars').on("click", function() {
		$('#carListModal').hide();
		$('#cars').empty();
	});
	
	// 직책 변경
	$('.position').on("change", function() {
		if(confirm('변경하시겠습니까?')) {
			$.ajax({
				url: 'updatePosition',
				type: 'POST',
				data: JSON.stringify({
					id: $(this).attr('data-id'),
					position: $('.position').val()
				}),
				contentType: 'application/json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function(data) {
					alert('변경이 완료되었습니다.');
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});	
		}
	});
	
	// 모두 선택
	$(document).ready(function() {
		$("#chkAll").click(function() {
			if ($("#chkAll").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked)
				$("#chkAll").prop("checked", false);
			else
				$("#chkAll").prop("checked", true);
		});
	});
	
	
	// 모달창에 체크된 값 넘겨주기 (10/12 추가: 이나은)
	let type = null;
	
	$('#showModal').on("click", function() {
		
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		
		$("input[name='chk']:checked").each(function() {
			const json = {
				"name" : $(this).attr('data-name'),
				"phone" : $(this).attr('data-phone'),
			};
			arr.push(json);
		});
			
 		if (cnt == 0) {
			alert("선택된 회원이 없습니다.");
		} else if (cnt == 1) {
			$('#memInfo').html(arr[0].name + '님에게 전송');
			$('#number').html(cnt);
			$('#price').html('30');
			$('#smsModal').show();
		} else {
			$('#memInfo').html(arr[0].name + '님 외 ' + (cnt-1) + '명에게 전송');
			$('#number').html(cnt);
			$('#price').html(cnt*30);
			$('#smsModal').show();
		} 
		
 		
	});

	// 문자 글자수 실시간 체크
	$("#smsContent").keyup(function(e) {
		var content = $(this).val();
		$('#checkLength').html(content.length); //실시간 글자수 카운팅
		if (content.length > 200) {
			alert("최대 200자까지 입력 가능합니다.");
			$(this).val(content.substring(0, 200));
			$('#checkLength').html('200');
		}
	});
	
	// 문자 전송
	$('#send').on("click", function() {
		
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		
		$("input[name='chk']:checked").each(function() {
			const json = {
				"name" : $(this).attr('data-name'),
				"phone" : $(this).attr('data-phone'),
				"content" : $('#smsContent').val()
			};
			arr.push(json);
		});
		
		if (confirm('문자를 전송하시겠습니까?')) {
			$.ajax({
				url: 'sendSms',
				type: 'POST',
				data: JSON.stringify(arr),
				contentType: 'application/json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function(data) {
					$('#smsModal').hide();
					$('#smsContent').val('');
					alert(data + '건의 전송이 완료되었습니다.');
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});
		}
	});
	
	// SMS 모달 내리기...
	$('#closeSMS').on("click", function() {
		$('#smsModal').hide();
		$('#smsContent').val('');
	});
	
	
	// 세대 등록 모달 띄우기
	$('#registerBtn').on('click', function() {
		$('#regModal').show();
	});
	
	$('#verify').on('click', function() {
		
		$('#existing').empty();
		var houseInfo = $('#dong').val() + '' + $('#ho').val();
		var result = existing(houseInfo);
		
		// 인증번호 기발급 세대
		var reVerify = '<p style="color: #E02401;">해당 세대는 이미 인증번호가 발급되었습니다.</p>';
		reVerify += '<button type="button" class="reVerify btn btn-default">인증번호 재발급</button>';
		
		// 세대 없을 때
		var noGeneration = '<p style="color: #E02401;">존재하지 않는 세대입니다.</p>';
		
		if (result == 2) {
			$('#existing').html(reVerify);
		} else if (result == 0) {
			$('#existing').html(noGeneration);
		} else {
			verification(houseInfo);
		}
		
	});
	
	// 세대 존재 여부
	function existing(houseInfo) {
		
		var result = 0;		// 인증키가 있으면 2, 없으면 1, 세대 자체가 없으면 0
		
		$.ajax({
			url: 'selectGen',
			type: 'POST',
			async: false,
			data: JSON.stringify({
				houseInfo: houseInfo
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			dataType: 'json',
			success: function(data) {
  				if (data.authKey != null) {
					result = 2;
				} else if (data.houseInfo != null && data.authKey == null) {
					result = 1;
				} else if (data == null) {
					result = 0;
				}
			},
			error: function(data) {
				console.log(result);
			}
		});
		
		return result;
	}
	
	// 인증번호 발급
	function verification(houseInfo) {
		
		var str = '<p style="font-weight: bold; color: #113CFC;">인증번호가 정상적으로 발급되었습니다.</p>';
		
		if (confirm('새 인증번호를 발급하시겠습니까?')) {
			$.ajax({
				url: 'verifyGen',
				type: 'POST',
				data: JSON.stringify({
					houseInfo: parseInt(houseInfo)
				}),
				contentType: 'application/json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function(result) {
					if (result == 1) {
						$('#dong').val('');
						$('#ho').val('');
						$('#existing').html(str);
						sendVerification(houseInfo);
					} else {
						console.log(result);
					}
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});
			
			
		}
	}
	
	// 인증번호 재발급
	$(document).on('click', '.reVerify', function() {
		
		var houseInfo = $('#dong').val() + '' + $('#ho').val();
		var str = '<p style="font-weight: bold; color: #113CFC;">인증번호가 정상적으로 재발급되었습니다.</p>';
		var content = '';
		
		if (confirm('새 인증번호를 발급하시겠습니까?')) {
			$.ajax({
				url: 'reVerifyGen',
				type: 'POST',
				data: JSON.stringify({
					houseInfo: parseInt(houseInfo)
				}),
				contentType: 'application/json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function(result) {
					if (result == 1) {
						$('#dong').val('');
						$('#ho').val('');
						$('#existing').html(str);
						sendVerification(houseInfo);
					} else {
						console.log(result);
					}
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});
			
			
			
		}
	});
	
	// 세대주 전화번호와 인증키 조회하여 SMS 전송
	function sendVerification(houseInfo) {
		
		var phone = '';
		var authKey = '';
		var miniKey = '';
		var arr = new Array();
		
		$.ajax({
			url: 'ownerInfo',
			type: 'POST',
			async: false,
			data: JSON.stringify({
				houseInfo: parseInt(houseInfo)
			}),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function(data) {
				phone = data.phone;
				authKey = data.authKey;
				miniKey = data.miniKey;
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		});
		
		var dong = houseInfo.substring(0, 3);
		var ho = houseInfo.substring(3, 7);
		var content = dong + '동 ' + ho + '호의 인증키입니다. 세대주 인증키: ' + authKey + ' / 세대원 인증키: ' + miniKey;
		
		var json = {
			"phone" : phone,
			"content" : content
		};
		arr.push(json);
		
		console.log(json);
		
		// 발급된 인증번호 전송
 		$.ajax({
			url: 'sendSms',
			type: 'POST',
			data: JSON.stringify(arr),
			contentType: 'application/json',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function(data) {
				alert(data + '건의 전송이 완료되었습니다.');
			},
			error: function() {
				alert('다시 시도해주세요.');
			}
		});
	}
	
	// 세대 등록 모달 내리기
	$('#closeReg').on('click', function() {
		$('#regModal').hide();
		$('#dong').val('');
		$('#ho').val('');
		$('#existing').empty();
	});
	
	   // 데이터 테이블 한글 패치, 10/19 윤지민
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
	   
	   // 세대 관리 데이터 테이블 적용, 10/19 윤지민
 	   $('#memberTable').DataTable({
	      language : lang_kor,
	      order: [[0, 'asc']],
	      "drawCallback": function( settings ) {
	    	  feeBtnClick();
	      }
	   }); 

	   // 관리비 리스트 모달 내리기, 10/19 윤지민
	   $('#closeFee').on('click', function() {
	      $('#feeModal').hide();
	   });
	   
	   //통화 변경 함수, 10/19 윤지민
	   function numberWithCommas(x) {
	       return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	   }
	
	// 세대 삭제
	function deleteGen() {
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		$("input[name='chk']:checked").each(function() {
			arr.push($(this).attr('data-houseInfo'));
		});
		
		if (cnt == 0) {
			alert("선택된 값이 없습니다.");
		} else {
			if (confirm(cnt + '세대를 삭제하시겠습니까?')) {
				$.ajax({
					url: 'deleteGen',
					type: 'POST',
					data: $("#frm").serialize(),
					traditional : true,
					dataType : "json",
					beforeSend: function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					success : function(result) {
						if (result == true) {
							alert("삭제완료");
							location.reload();
						}
					},
					error : function() {
						alert("서버통신 오류");
						console.log(arr);
					}
				});
			}
		}
	}
	
	// 세대별 회원 정보 모달에서 회원 삭제
	$(document).on('click', '.delMem', function() {
		
		var tr = $(this).parent().parent();
		
		if (confirm('삭제하시겠습니까?')) {
			$.ajax({
				url: 'deleteMember',
				type: 'POST',
				data: JSON.stringify({
					id: $(this).attr('data-id')
				}),
				contentType: 'application/json',
				dataType: 'json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function(result) {
					if (result != null) {
						$(tr).remove();
						alert(result);
					} else {
						console.log(result);
					}
				},
				error: function() {
					alert('다시 시도해주세요.');
				}
			});
		}
	});
	
</script>
