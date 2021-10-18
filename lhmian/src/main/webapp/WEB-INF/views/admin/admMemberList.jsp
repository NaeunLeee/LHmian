<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
	
	.padding-l40{
		padding-left: 40px
	}
	
	.padding-t40{
		padding-top: 40px
	}
	
</style>

<!-- 10/11 전체수정: 이나은 -->
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
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a class="active" href="admMemberList">회원 관리</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">회원 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">LHmian의 모든 회원을 조회합니다.</p>
				</div>
				<div style="float: left; margin-left: 40px;" id="criteriaForm" data-option="${type}">
					<form id="actionForm" action="admMemberList" method="get">
						<select name="type" class="form-control" style="width: 100px; ">
							<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
							<option id="N" value="N" ${pageMaker.cri.type=='N' ? 'selected' : ""}>이름</option>
							<option id="C" value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>동호수</option>
							<option id="A" value="A" ${pageMaker.cri.type=='A' ? 'selected' : ""}>휴대폰번호</option>
						</select> 
						<input name="keyword" class="form-control" style="width: 200px; margin-right: 10px;" value="${pageMaker.cri.keyword}"> 
							<label for="all">전체</label><input type="checkbox" id="A" name="option" value="A" checked="checked">
							<label for="notpaid">관리비미납</label><input type="checkbox" id="N" name="option" value="N" onchange="checkOption()">
							<label for="leader">입주민대표</label><input type="checkbox" id="L" name="option" value="L" onchange="checkOption()">
							<label for="owner">세대주</label><input type="checkbox" id="O" name="option" value="O" onchange="checkOption()">
							<input type="hidden" name="preType" id="preType" value="${type}">
						<button type="button" class="btn btn-dark" id="searchBtn" onclick="allChecked()">검색</button>
						
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}"><br>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
				</div>
				<div>
					<button class="btn btn-default" onclick="deleteMember()" type="button" id="btnDelete" style="float:right; margin-right:50px; padding: 4px 13px;">회원삭제</button>
					<button class="btn btn-gyellow" type="button" id="showModal" style="float:right; margin-right:10px; padding: 4px 13px;">SMS전송</button>
				</div>
				<div class="text-box white padding-4">
					<form id="frm"> <!-- 0928 form 추가 -->
						<table class="ui celled table" id="memberTable">
							<thead>
								<tr style="text-align: center;">
									<th><input type="checkbox" name="chkAll" id="chkAll"></th>
									<th>이름</th>
									<th>권한</th>
									<th>구분</th>
									<th>동호수</th>
									<th>휴대폰번호</th>
									<th>차량</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach var="member" items="${list}">
									<tr class="move tr_1">
										<td><input type="checkbox" name="chk" id="${member.id}" value="${member.id}" data-name="${member.name}" data-phone="${member.phone}"></td>
										<td>${member.name}</td>
										<td>
											<select name="position" class="position form-control" style="width: 100px;" data-id="${member.id}">
												<option value="LEADER" ${member.position eq 'LEADER' ? 'selected' : ""}>동대표</option>
												<option value="FOLLOWER" ${member.position eq 'FOLLOWER' ? 'selected' : ""}>일반</option>
											</select> 
										</td>
										<td id="test"> 
											<c:set var="donghosu" value="${member.houseInfo}"/>
											<c:if test="${member.author eq 'OWNER'}">세대주</c:if>
											<c:if test="${member.author eq 'MEMBER'}">세대원</c:if>
										</td>
										<td>
											${fn:substring(donghosu, 0, 3)}동 ${fn:substring(donghosu, 3, 8)}호
										</td>
										<td id="phone">${member.phone}</td>
										<td><button type="button" class="carBtn btn btn-default" data-houseInfo="${member.houseInfo}">차량정보</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
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
								<li><a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
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
		</div>
	</div>
</section>

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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";

	$("#pageButton a").on("click", function(e) { //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault(); //a, submit
		allChecked();
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	// '전체' 체크박스 체크
	function checkOption() {
		if ($('#all').is(":checked")) {
			$('#all').prop("checked", false);
		} else {
			if ($("input[name='option']:checked").length == 0) {
				$('#all').prop("checked", true);
			}
		}
	}
	
	// 전체 버튼 자동 체크 후 submit
	function allChecked() {
		if($("input[name='option']:checked").length == 0) {
			$('#all').prop("checked", true);
			actionForm.submit();
		} else {
			actionForm.submit();
		}
	}
	
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

	// 회원 삭제
	function deleteMember() {
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		$("input[name='chk']:checked").each(function() {
			arr.push($(this).attr('id'));
		});

		console.log(arr);

		if (cnt == 0) {
			alert("선택된 회원이 없습니다.");
		}

		else {
			if (confirm(cnt + '명의 회원을 삭제하시겠습니까?')) {
				$.ajax({
					type : "POST",
					url : "deleteUser",
					data : /* JSON.stringify({
						arr : arr
					}) */$("#frm").serialize(),
					traditional : true,
					dataType : "json",
					//contentType : "application/json",
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
	 
	 // 체크된 값이 페이지가 새로고침 되도 그대로 체크되어 있도록... (10/12 추가: 이나은)
	 let option = $('#criteriaForm').attr('data-option');
	 $(document).ready(function() {
		 
		 if (option.indexOf('N') != -1) {
			 $('#notpaid').prop("checked", true);
		 } else {
			 $('#notpaid').prop("checked", false);
		 }
		 
		 if (option.indexOf('L') != -1) {
			 $('#leader').prop("checked", true);
		 } else {
			 $('#leader').prop("checked", false);
		 }
		 
		 if (option.indexOf('O') != -1) {
			 $('#owner').prop("checked", true);
		 } else {
			 $('#owner').prop("checked", false);
		 }
		 
		 if (option.indexOf('A') != -1) {
			 $('#all').prop("checked", true);
		 } else {
			 $('#all').prop("checked", false);
		 }
		 
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

	// 모달창 닫기가 왜 안되는지..? 결국 함수로 만듦...ㅋㅋ
	$('#closeSMS').on("click", function() {
		$('#smsModal').hide();
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
						str += '<td>' + data[i].carNo + '</>';
						str += '<td>' + data[i].carCode + '</>';
						str += '<td>' + data[i].carType + '</>';
						str += '<td><fmt:formatDate value="'+ data[i].carDate + '" pattern="yy-MM-dd" />';
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
	
/* 	function getTextLength(str) {
	    var len = 0;
	    for (var i = 0; i < str.length; i++) {
	        if (escape(str.charAt(i)).length == 6) {
	            len++;
	        }
	        len++;
	    }
	    return len;
	} */
		

	
/* 	 $(document).ready(function() {
		 
		 var test = "${member.phone}";
		 var testPhone = test.replae(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
		  
		 $("#phone").text(testPhone);
		 }); */
</script>