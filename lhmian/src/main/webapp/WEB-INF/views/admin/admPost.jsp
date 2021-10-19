<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	.width-80 {
		width: 80%;
	}
	.tr_1 {
		text-align: center;
	}
	
	th {
		text-align: center;
		background-color: #EEEEEE;
	}
	
	td {
		text-align: center;
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

	.text-bo.white.padding-4.col-7 {
		padding-top: 5px;
	}
	
	.padding-l40 {
	padding-left: 40px !important;
	}
	.padding-t40 {
		padding-top: 40px !important;
	}
	td {
		vertical-align: middle !important;
	}
	
</style>

<!-- 10/11 추가 -->
<section class="sec-padding-1">
	<div class="container width-80">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admMemberList">회원 관리</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a class="active" href="admPost">택배 관리</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-10 col-sm-6 col-xs-12 padding-l40">
				<div></div><br><br>
				<div class="text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">택배 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">관리사무소에 보관된 주민들의 택배를 관리합니다.</p>

				</div>
				
		<div class="text-box white padding-t40 col-7">
			<form id="frm">
				<table class="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="chkAll" id="chkAll"></th>
							<th>번호</th>
							<th>세대</th>
							<th>도착날짜</th>
							<th>이름</th>
							<th>수령여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="post">
							<c:set value="${post.houseInfo}" var="house" />
							<tr>
								<td><input type="checkbox" name="chk" id="${post.postNo}" value="${post.postNo}"></td>
								<td>${post.postNo}</td>
								<td>${fn:substring(house, 0, 3)}동${fn:substring(house, 3, 8)}호</td>
								<td>${post.postDate}</td>
								<td>${post.name}</td>
								<td>${post.postStatus}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			<button type="button" id="btnIn" class="btn btn-border light"
				style="float: right; margin-right: 20px; padding: 4px 13px;" data-toggle="modal"
				data-target="#myModal">택배등록</button>
			<button type="button" id="btnGet" class="btn btn-border light"
				style="float: right; margin-right: 20px; padding: 4px 13px;">수령완료</button>
			<button type="button" id="btnDel" class="btn btn-border light"
				style="float: right; margin-right: 20px; padding: 4px 13px;">삭제</button>
			<br>

			<!-- The Modal -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">택배등록</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<!-- 세대 정보 -->
							<p>세대 정보</p>
							<input type="text" name="" class="houseInfo"><br>
							<p>이름</p>
							<input type="text" name="" class="name"><br>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="button" class="btn" id="btnInsert" data-dismiss="modal">등록</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						</div>

					</div>
				</div>
			</div>

			<!-- 폼 -->
			<div id="pageButton" style="margin: auto; width: 50%">
				<ul class="pagination hover-orange">
					<c:if test="${pageMaker.prev == true}">
						<li><a href="${pageMaker.startPage-1}"> <span aria-hidden="true"><i
										class="fa fa-angle-left"></i></span>
							</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
						<li><a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true}">
						<li><a href="${pageMaker.endPage+1}"> <span aria-hidden="true"><i
										class="fa fa-angle-right"></i></span>
							</a></li>
					</c:if>
				</ul>
			</div>
			
			<!-- 수정 -->
			<div style="margin:auto;" id="criteriaForm" data-option="${type}">
				<form id="actionForm" action="admPost" method="get" >
					<!-- 메소드 생략시 자동으로 get로 전환 -->
					<select name="type" class="form-control" style="width: 100px; display: inline;">
						<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
						<option id="T" value="T" ${empty type == 'T' ? selected : "" }>세대번호</option>
						<option id="C" value="C" ${empty type == 'C' ? selected : "" }>도착날짜</option>
					</select> 
						<label for="Y">Y</label>
						<input type="radio" id="Y" name="type" value="Y" ${pageMaker.cri.type eq (',Y'||'T,Y'||'C,Y') ? checked : "" }> 
						<label for="N">N</label>
						<input type="radio" id="N" name="type" value="N" ${pageMaker.cri.type eq (',N'||'T,N'||'C,N') ? checked : "" }>
						<button type="button" id="chkfalse" class="btn btn-dark" style="display: inline;">선택해제</button>
						<input name="keyword" class="form-control" style="width: 200px; display: inline;" value="${pageMaker.cri.keyword}"> 
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> 
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="preType" id="preType" value="${type}">
					<button type="submit" class="btn btn-dark" style="display: inline;">검색</button>
				</form>
			</div>
		</div>
		</div>
	</div>
	</div>
	
</section>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	// 10/13 수정
	
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	console.log(csrfHeaderName, csrfTokenValue);
	
	var actionForm = $("#actionForm");
    
    $(".move").on("click",function(e){
       e.preventDefault();
       var commno = $(this).attr("data-commNo")
       actionForm.append('<input type="hidden" name="commNo" value="'+commno+'">')
       actionForm.attr("action","get")
       actionForm.submit();
    });
	

	$("#pageButton a").on("click", function (e) {
		e.preventDefault(); //a, submit
		var p = $(this).attr("href") //클릭한 값
		$('[name="pageNum"]').val(p)
		actionForm.submit();
	});

	$("#chkAll").click(function () {
		if ($("#chkAll").is(":checked"))
			$("input[name=chk]").prop("checked", true);
		else
			$("input[name=chk]").prop("checked", false);
	});

	$("#btnInsert").on("click", function () {
		var num = $(".houseInfo").val();
		var name = $(".name").val();
		if (checkNum(num) == true) {
			$.ajax({
				type: "POST",
				url: "insertPost",
				data: JSON.stringify({
					houseInfo: num,
					name: name
				}),
				contentType: "application/json",
				dataType: "json",
				beforeSend: function (xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function (result) {
					alert("등록완료");
					$("#myModal").hide();
					location.reload();
				},
				error: function () {
					alert("존재하지 않는 번호입니다.");
				}
			});
		}
	});

	function checkExistData(value, dataName) {
		if (value == "") {
			alert(dataName + " 입력해주세요!");
			return false;
		}
		return true;
	}

	function checkNum(num) {
		//Id가 입력되었는지 확인하기
		if (!checkExistData(num, "세대번호를")) {
			return false;
		}

		var RegExp = /^[0-9]{7}$/;
		if (!RegExp.test(num)) {
			alert("세대번호는 숫자 7자리로 입력해야합니다!");
			num = "";
			num.focus();
			return false;
		}
		return true; //확인이 완료되었을 때
	}

	function selectMember(select) {

		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		$("input[name='chk']:checked").each(function () {
			arr.push($(this).attr('id'));
		});

		console.log(arr);

		if (cnt == 0) {
			alert("선택된 회원이 없습니다.");
		} else {
			$.ajax({
				type: "POST",
				url: select,
				data: $("#frm").serialize(),
				traditional: true,
				dataType: "json",
				beforeSend: function (xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				//contentType : "application/json",
				success: function (result) {
					if (result == true) {
						location.reload();
					}
				},
				error: function () {
					alert("서버통신 오류");
					console.log(arr);
				}
			});
		}
	}

	var select = "";

	$("#btnGet").on("click", function () {

		select = "updatePost";
		selectMember(select);
	});

	$("#btnDel").on("click", function () {

		select = "deletePost";
		selectMember(select);
	});
	
	let option = $('#criteriaForm').attr('data-option');
	 $(document).ready(function() {
		
		 if (option.indexOf('Y') != -1) {
			 $('#Y').prop("checked", true);
		 } else {
			 $('#Y').prop("checked", false);
		 }
		 
		 if (option.indexOf('N') != -1) {
			 $('#N').prop("checked", true);
		 } else {
			 $('#N').prop("checked", false);
		 }
		 
		 if (option.indexOf('T') != -1) {
			 $('#T').prop("selected", true);
		 } else {
			 $('#T').prop("selected", false);
		 }
		 
		 if (option.indexOf('C') != -1) {
			 $('#C').prop("selected", true);
		 } else {
			 $('#C').prop("selected", false);
		 }
	 });
	 
	 $("#chkfalse").on("click",function(){
		 $("#Y").prop('checked',false);
		 $("#N").prop('checked',false);
	 });
</script>